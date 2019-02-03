<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends Admin_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_builder');
	}

	public function index()
	{
		$this->load->model('users_groups_model', 'users_groups');
		$crud = $this->generate_crud('users');
		$crud->columns('id', 'groups', 'mobile', 'active');
		$this->unset_crud_fields('ip_address', 'last_login', 'update_mobile', 'update_mobile_code');
		
		// only webmaster and admin can change member groups
		if ($crud->getState()=='list' || $this->ion_auth->in_group(array('webmaster', 'admin')))
		{
			$crud->set_relation_n_n('groups', 'users_groups', 'groups', 'user_id', 'group_id', 'name');
		}

		// only webmaster and admin can reset user password
		if ($this->ion_auth->in_group(array('webmaster', 'admin')))
		{
			$crud->add_action('Reset Password', '', 'admin/user/reset_password', 'fa fa-repeat');
		}

		// disable direct create / delete Frontend User
		$crud->unset_add();
		$crud->unset_delete();

		$this->mPageTitle = 'All Users';
		$this->render_crud();
	}

	// Frontend User CRUD
	public function employers()
	{
		$this->load->model('employer_user_model', 'employers');
		$crud = $this->generate_crud('employer_users');
		$crud->columns('user_id', 'name_en', 'name_zh', 'status');

		$crud->set_relation('industry_id', 'industries', 'name_en');
		$crud->set_relation('district_id', 'districts', 'name_en');
        $crud->set_field_upload('thumbnail_url', UPLOAD_EMPLOYER);

		// disable direct create / delete Frontend User
		$crud->unset_add();
		$crud->unset_delete();

		$this->mPageTitle = 'Employer Users';
		$this->render_crud();
	}

	public function applicants()
	{
		$this->load->model('applicant_user_model', 'applicants');
		$crud = $this->generate_crud('applicant_users');
		$crud->columns('user_id', 'name_en', 'name_zh', 'status');

		// disable direct create / delete Frontend User
		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();

		$this->mPageTitle = 'Applicant Users';
		$this->render_crud();
	}

	// Create user of target group
	public function create_by_group($group_id)
	{
		$this->load->model('group_model', 'groups');
		$this->load->model('user_model', 'users');
		$group = $this->groups->get($group_id);

		$form = $this->form_builder->create_form();

		if ($form->validate())
		{
			$mobile = $this->input->post('mobile');

			// [IMPORTANT] override database tables to update Frontend Users instead of Admin Users
			$this->ion_auth_model->tables = array(
				'users'				=> 'users',
				'groups'			=> 'groups',
				'users_groups'		=> 'users_groups',
				'login_attempts'	=> 'login_attempts',
			);

			// proceed to create user (with random password)
			$this->load->helper('string');
			$password = random_string('alnum', 10);
			$user_id = $this->ion_auth->register($mobile, $password, '', array('mobile' => $mobile), array($group_id));

			if ($user_id)
			{
				// success
				switch($group_id) {
					case 1: 
						// Employer User
						$insert = $this->db->insert('employer_users', array('user_id' => $user_id));
						break;
					case 2:
						// Applicant User
						$insert = $this->db->insert('applicant_users', array('user_id' => $user_id));
						break;
				}
				if($insert)
				{
					$code = random_string('numeric', 4);
					$this->users->update($user_id, array('activation_code' => $code, 'active' => 0, 'register_password' => $password));
					$result = array('message' => $this->ion_auth->messages(), 'mobile' => $mobile, 'code' => $code);
					$messages = $this->ion_auth->messages();
					$this->system_message->set_success($messages);
				} 
				else 
				{
					$errors = $this->ion_auth->errors();
					$this->system_message->set_error($errors);
				}
			}
			else
			{
				// failed
				$errors = $this->ion_auth->errors();
				$this->system_message->set_error($errors);
			}
			refresh();
		}
		
		$this->mPageTitle = 'Create '.humanize($group->name).' User';
		$this->mViewData['form'] = $form;
		$this->render('user/create_by_group');
	}

	// User Groups CRUD
	public function group()
	{
		$crud = $this->generate_crud('groups');
		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$this->mPageTitle = 'User Groups';
		$this->render_crud();
	}

	// Frontend User Reset Password
	public function reset_password($user_id)
	{
		// only top-level users can reset user passwords
		$this->verify_auth(array('webmaster', 'admin'));

		$form = $this->form_builder->create_form();
		if ($form->validate())
		{
			// pass validation
			$data = array('password' => $this->input->post('new_password'));
			
			// [IMPORTANT] override database tables to update Frontend Users instead of Admin Users
			$this->ion_auth_model->tables = array(
				'users'				=> 'users',
				'groups'			=> 'groups',
				'users_groups'		=> 'users_groups',
				'login_attempts'	=> 'login_attempts',
			);

			// proceed to change user password
			if ($this->ion_auth->update($user_id, $data))
			{
				$messages = $this->ion_auth->messages();
				$this->system_message->set_success($messages);
			}
			else
			{
				$errors = $this->ion_auth->errors();
				$this->system_message->set_error($errors);
			}
			refresh();
		}

		$this->load->model('user_model', 'users');
		$target = $this->users->get($user_id);
		$this->mViewData['target'] = $target;

		$this->mViewData['form'] = $form;
		$this->mPageTitle = 'Reset User Password';
		$this->render('user/reset_password');
	}
}
