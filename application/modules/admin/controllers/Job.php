<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Job extends Admin_Controller {

	public function index()
	{
        $crud = $this->generate_crud('jobs');
        
		$crud->set_relation('district_id', 'districts', 'name_en');
		$crud->set_relation('employer_user_id', 'employer_users', 'name_en');
		// disable direct create / delete Frontend User
        // $crud->unset_add();
        // $crud->unset_edit();
        // $crud->unset_delete();
        
        $this->mPageTitle = 'All Jobs Posted';
        $this->render_crud();
	}
}
