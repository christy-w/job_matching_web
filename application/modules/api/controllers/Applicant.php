<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Applicant extends API_Controller {

    public function __construct()
	{
		parent::__construct();
		$this->load->model('Applicant_user_model', 'applicants');
	}

    /**
	* @SWG\Get(
	* path="/applicant/{id}",
	* tags={"applicant"},
	* summary="Applicant detail",
	* @SWG\Parameter(
	* 		in="header",
	* 		name="X-API-KEY",
	* 		description="API Key",
	* 		default="anonymous",
	* 		required=true,
	* 		type="string"
	* ),
	* @SWG\Parameter(
	* 		in="path",
	* 		name="id",
	* 		description="Applicant User ID",
	* 		required=true,
	* 		type="integer"
	* ),
	* @SWG\Response(
	* 		response="200",
	* 		description="Applicant object",
	* 		@SWG\Schema(ref="#/definitions/Applicant")
	* )
	* )
	*/
	public function id_get($id)
	{
		$data = $this->applicants->get_by_user_id($id);
		$this->response($data);
    }
    
    /**
	 * @SWG\Post(
	 * 	path="/applicant/update",
	 * 	tags={"applicant"},
	 *	summary="For applicant to update profile",
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
	 * 		@SWG\Schema(ref="#/definitions/ApplicantUpdate")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function update_post()
	{
		// check active user
		if ( empty($this->mUser) OR !$this->mUser->active )
		{
            $this->error_forbidden();
        }

		$fields = array(
			'name_zh', 'name_en', 'email',
			'gender', 'dob', 'district_id', 'address', 'education_level', 
			'employment_status', 'related_experience', 'computer_skills', 'language_abilities', 'related_certs'
		);
		
		$data = array();
		$params = $this->post();
		foreach ($fields as $field)
		{
			// Specify fields which need to be converted to string array
			switch ($field)
			{
				case 'computer_skills':
				case 'language_abilities':
				case 'related_certs':
					if ( array_key_exists($field, $params) )
					{
						$data[$field] = empty($params[$field]) ? NULL : json_encode($params[$field]);
					}
					break;
				default:
					if ( array_key_exists($field, $params) )
					{
						$data[$field] = $params[$field];
					}
					break;
			}
        }
        // Relate user id
        $data['user_id'] = $this->mUser->id;

		// skip update database if no field need to be updated
		if ( empty($data) )
			$this->created();

		// proceed to update
		$success = $this->applicants->update_by(array('user_id' => $this->mUser->id), $data);

		if ($success)
		{
            // for first time update info - save initial copy
		    $this->load->model('user_model', 'users');
			$user = $this->users->get($this->mUser->id);
			if (!$user->info_updated)
			{
				$temp = array(
					'info_updated'		=> TRUE,
					'info_first_copy'	=> json_encode($data)
				);
				$this->users->update($this->mUser->id, $temp);
			}

			$this->created();
		}
		else
		{
			$this->error('update_failed');
		}
	}
}