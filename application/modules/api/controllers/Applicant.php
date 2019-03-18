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
			'gender', 'dob', 'district_id', 'education_level', 
			'employment_status', 'related_experience', 'computer_skills', 
			'language_abilities', 'related_certs'
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

		// skip update database if no field need to be updated
		if ( empty($data) )
			$this->created();

		// proceed to update
		$success = $this->applicants->update($this->mUser->id, $data);

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
	
	/**
	 * @SWG\Post(
	 * 	path="/applicant/feedback",
	 * 	tags={"applicant"},
	 *	summary="For employer to give feedback",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API KEY",
	 * 		default="anonymous",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Update a user",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/ApplicantFeedback")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function feedback_post()
	{	
		$post_data = array(
			'username'	=>  $this->post('username'),
			'feedback'	=> 	$this->post('feedback'),
			'rating'	=>	$this->post('rating'),
			'job_id'	=> 	$this->post('job_id'),
			'applicant_user_id'	=>	$this->post('applicant_user_id')
		);
		
        $identity = array(
            'job_id'            => $this->post('job_id'),
            'applicant_user_id' => $this->post('applicant_user_id')
        );

		$this->load->model('applicant_feedback_model', 'applicant_feedbacks');
        $feedback_count = $this->applicant_feedbacks->count_by($identity);
        if (empty($feedback_count))
        {   
            // Create application
            $success = $this->applicant_feedbacks->insert($post_data);
        } 
        else
        {
            $this->error('already_commented');
        }

        if ($success) {
            $this->created();
        }
        else
        {
            $this->error('feedback_failed');
        }
	}
}