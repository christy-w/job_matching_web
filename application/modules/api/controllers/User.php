<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends API_Controller {

	public function __construct()
	{
		parent::__construct();

		// check active user
		if ( empty($this->mUser) OR !$this->mUser->active )
		{
			$this->error_forbidden();
		}
	}
	
    /**
	 * @SWG\Get(
	 * 	path="/user",
	 * 	tags={"user"},
	 * 	summary="Get logged in user info",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API Key",
	 * 		default="",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="User Info"
	 * 	)
	 * )
	 */
	public function index_get()
	{
		// filter only useful fields from login user
		unset($this->mUser->ip_address);
		unset($this->mUser->password);
		unset($this->mUser->salt);
		unset($this->mUser->activation_code);
		unset($this->mUser->forgotten_password_code);
		unset($this->mUser->forgotten_password_time);
		unset($this->mUser->update_mobile);
		unset($this->mUser->update_mobile_code);
		unset($this->mUser->remarks);
		unset($this->mUser->remember_code);
		unset($this->mUser->created_on);
		unset($this->mUser->last_login);
		unset($this->mUser->info_first_copy);
		$data = $this->mUser;

		// decode JSON fields before return
		// $fields = array('living_with', 'emergencies');
		// foreach ($fields as $field)
		// {
		// 	if ( !empty($data->$field) )
		// 		$data->$field = json_decode($data->$field);
		// }

		// // append groups
		// $this->load->model('group_model', 'groups');
		// $user_group = $this->groups->get_by_user_id($this->mUser->id);
		// $data->user_group = $user_group[0]->name;

		// // append user_appointments
		// $this->load->model('user_appointment_model', 'user_appointments');
		// $data->user_appointments = $this->user_appointments->get_by_user_id($this->mUser->id);
		
		// // append workers
		// $this->load->model('worker_model', 'workers');
		// $data->workers = $this->workers->get_by_user_id($this->mUser->id);

		// append groups
		$this->load->model('group_model', 'groups');
		$user_group = $this->groups->get_by_user_id($this->mUser->id);
		$data->user_group = $user_group[0]->name;

		$group_id = $user_group[0]->id;
		if ($group_id == 1) 
		{
			// Employer
			$this->load->model('employer_user_model', 'employers');
			$user_info = $this->employers->get_by(array('user_id' => $this->mUser->id));
		}
		else if ($group_id == 2) 
		{
			// Applicant
			$this->load->model('applicant_user_model', 'applicants');
			$user_info = $this->applicants->get_by(array('user_id' => $this->mUser->id));
		}
		$data->info = $user_info;
		// output result
		$this->response($data);
	}
    
    
	/**
	 * @SWG\Post(
	 * 	path="/user/update_mobile",
	 * 	tags={"user"},
	 *	summary="For user to update mobile",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API KEY",
	 * 		default="",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Update a user",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/MeUpdateMobile")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function update_mobile_post()
	{
		$new_mobile = $this->post('new_mobile');
		$result = $this->users->send_update_mobile_code($this->mUser->id, $new_mobile);

		if ( empty($result['success']) )
			$this->error('update_failed');
		else
			$this->success($result);
	}

	/**
	 * @SWG\Post(
	 * 	path="/user/verify_mobile",
	 * 	tags={"user"},
	 *	summary="For user to verify mobile",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API KEY",
	 * 		default="",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Update a user",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/MeVerifyMobile")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function verify_mobile_post()
	{
		$new_mobile = $this->post('new_mobile');
		$code = $this->post('code');
		$success = $this->users->verify_update_mobile_code($this->mUser->id, $new_mobile, $code);
		empty($success) ? $this->error('verify_failed') : $this->success();
	}

}