<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends API_Controller {

	/**
	 * @SWG\Post(
	 * 	path="/auth/sign_up",
	 * 	tags={"auth"},
	 * 	summary="Create new applicant user",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API Key",
	 * 		default="anonymous",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="User info",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/SignUp")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function sign_up_post()
	{
		// POST fields
		$password = $this->post('password');
        $mobile = (string)$this->post('mobile');
        
        // check if sign up mobile exists
        $count = $this->users->count_by(array('mobile' => $mobile, 'active' => 1));
        // mobile is registered and activated, return
        if ($count>0)
		{   
			$this->error('mobile_registered');
			return;
		}

        $user = $this->users->get_by(array('mobile' => $mobile, 'active' => 0));
        if ( !empty($user)) {
            // if mobile is registered but not activate
            if ( !empty($user->activated_at) )
            {
                // if user was activated before, but set to "inactive" manually by Admin user
                $this->error('user_activated');
                return;
            }

            // User is not activated, Update existing user
            $data = array(
				'mobile'	=> $mobile,
                'password'	=> $password
			);
			
            $this->form_validation->set_data($data);
            if ($this->form_validation->run('auth/sign_up') == TRUE)
            {	
                $updated = $this->ion_auth->update($user->id, $data);

                if ($updated)
                {
					// success - send activation code
					$code = random_string('numeric', 4);
					$this->users->update($user->id, array('activation_code' => $code, 'active' => 0));
					$result = array('message' => $this->ion_auth->messages(), 'mobile' => $mobile, 'code' => $code);
					$this->success($result);
                }
                else
                {
                    // failed
                    $this->error($this->ion_auth->errors());
                }
                
            }
            else
            {
                $this->error(validation_errors());
            }
        }
		else
		{
            // register the mobile
            $this->load->model('group_model', 'groups');
            $applicant_group_id = 2;
            $applicant_group = $this->groups->get($applicant_group_id);
            
            // [IMPORTANT] override database tables to update Frontend Users instead of Admin Users
			$this->ion_auth_model->tables = array(
				'users'				=> 'users',
				'groups'			=> 'groups',
				'users_groups'		=> 'users_groups',
				'login_attempts'	=> 'login_attempts',
            );
            
			// proceed to create applicant user (with entered password)
			// User is not activated, Update existing user
            $data = array(
				'mobile'	=> $mobile,
                'password'	=> $password
			);
			
            $this->form_validation->set_data($data);
			if ($this->form_validation->run('auth/sign_up') == TRUE) 
			{
				$user_id = $this->ion_auth->register($mobile, $password, '', array('mobile' => $mobile), array($applicant_group_id));
				if ($user_id)
				{
					// success
					$this->db->insert('applicant_users', array('id' => $user_id));
					$code = random_string('numeric', 4);
					$this->users->update($user_id, array('activation_code' => $code, 'active' => 0));
					$result = array('message' => $this->ion_auth->messages(), 'mobile' => $mobile, 'code' => $code);
					$this->success($result);
				}
			}
			else
			{
				$this->error(validation_errors());
			}
		}
	}

	/**
	 * @SWG\Post(
	 * 	path="/auth/activate",
	 * 	tags={"auth"},
	 * 	summary="Activate a user",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API Key",
	 * 		default="anonymous",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Login info",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/Activate")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function activate_post()
	{
		$mobile = $this->post('mobile');
		$activation_code = $this->post('code');

		$where = array('mobile' => $mobile, 'active' => 0);
		$user = $this->users->get_by($where);

		if ( empty($user) )
			$this->error('invalid_user');
		else
			$activation = $this->ion_auth->activate($user->id, $activation_code);

		if ($activation)
		{
			// note down activation timestamp
			$this->users->update($user->id, array('activated_at' => date('Y-m-d H:i:s'), 'active' => 1));

			// return user data (get latest data after update)
			$user = $this->users->get($user->id);
			$user = $this->_format_user($user);
			$this->response($user);
		}
		else
		{
			// failed
			$this->error($this->ion_auth->errors());
		}
	}

	/**
	 * @SWG\Post(
	 * 	path="/auth/login",
	 * 	tags={"auth"},
	 * 	summary="Login a user and get API key",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API Key",
	 * 		default="anonymous",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Login info",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/Login")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function login_post()
	{
		$mobile = $this->post('mobile');
		$password = $this->post('password');

		// proceed to login user
		$logged_in = $this->ion_auth->login($mobile, $password, FALSE);
		
		if ($logged_in)
		{
			// return user data
			$user = $this->ion_auth->user()->row();
			$user = $this->_format_user($user);
			
			$this->response($user);
		}
		else
		{
			$this->error($this->ion_auth->errors());
		}
	}

	/**
	 * @SWG\Post(
	 * 	path="/auth/forgot_password",
	 * 	tags={"auth"},
	 * 	summary="Submission of Forgot Password form",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API Key",
	 * 		default="anonymous",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Forgot Password info",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/ForgotPassword")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function forgot_password_post()
	{
		// proceed to forgot password
		$identity = $this->post('mobile');
		$forgotten = $this->ion_auth->forgotten_password($identity);

		if ($forgotten)
		{			
			// generate easier code for Forgot Password
			$user = $this->users->get_by('mobile', $identity);
			$forgotten_password_code = random_string('numeric', 4);
			$this->users->update($user->id, array('forgotten_password_code' => $forgotten_password_code));

			// Remove original password generated in registration
			if ($user->register_password != NULL) {
				$this->users->update($user->id, array('register_password' => NULL));
			}

			// display result
			$result = array('message' => $this->ion_auth->messages(), 'mobile' => $identity);
			if (ENVIRONMENT!='production')
			{
				$result['code'] = $forgotten_password_code;
			}
			
			// send SMS to user
			// $this->load->library('Sms_client');
			// $msg = '密碼重置驗證碼 Password Reset Confirmation Code: '.$forgotten_password_code;
			// $this->sms_client->send($identity, $msg);

			$this->success($result);
		}
		else
		{
			$this->error($this->ion_auth->errors());
		}
	}

	/**
	 * @SWG\Post(
	 * 	path="/auth/reset_password",
	 * 	tags={"auth"},
	 * 	summary="Submission of Reset Password form",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API Key",
	 * 		default="anonymous",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Reset Password info",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/ResetPassword")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function reset_password_post()
	{
		// proceed to reset password
		$forgotten_password_code = $this->post('code');
		$password = $this->post('password');
		$password_confirm = $this->post('password_confirm');
		
		// verify passwords are the same (TODO: better validation)
		if ($password===$password_confirm)
		{
			// verify reset code
			$reset = $this->ion_auth->forgotten_password_complete($forgotten_password_code);
			
			if ($reset)
			{
				// proceed to change user password
				$updated = $this->ion_auth->reset_password($reset['identity'], $password);
				($updated) ? $this->success($this->ion_auth->messages()) : $this->error($this->ion_auth->errors());
			}
			else
			{
				$this->error($this->ion_auth->errors());
			}
		}
		else
		{
			$this->error('Password not identical');
		}
	}

	// get User object with API key, and remove unnecessary fields
	private function _format_user($user)
	{
		unset($user->user_id);
		unset($user->password);
		unset($user->salt);
		unset($user->ip_address);
		unset($user->activation_code);
		unset($user->forgotten_password_code);
		unset($user->forgotten_password_time);
		unset($user->update_mobile);
		unset($user->update_mobile_code);
		unset($user->remarks);
		unset($user->remember_code);

		
		// append user group(s)
		$user->groups = $this->ion_auth->get_users_groups($user->id)->result();
		$user->main_group = empty($user->groups) ? '' : $user->groups[0]->name;

		// append API key
		$key = $this->api_keys->get($user->id);
		if ( empty($key) )
		{
			$key_value = $this->_generate_key();
			$data = array(
				'id'			=> $user->id,
				'key'			=> $key_value,
				'level'			=> 1,
				'ignore_limits'	=> 1,
				'date_created'	=> time(),
			);
			$this->_insert_key($key_value, $data);
			$user->api_key = $key_value;
		}
		else
		{
			// refresh API key
			$key_value = $this->_generate_key();
			$data = array('key' => $key_value, 'date_created' => time());
			$updated = $this->api_keys->update($key->id, $data);
			$user->api_key = $key_value;
		}

		return $user;
	}
}