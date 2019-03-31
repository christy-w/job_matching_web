<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Job extends API_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('job_model', 'jobs');
	}
    
	/**
	 * @SWG\Get(
	 * 	path="/job",
	 * 	tags={"job"},
	 * 	summary="Get All Jobs",
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="List of All Jobs",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/JobCreate"))
	 * 	)
	 * )
	 */
	public function index_get()
	{
        $jobs = $this->jobs->get_all_jobs();
		$this->response($jobs);
	}

    /**
	* @SWG\Get(
	* path="/job/{id}",
	* tags={"job"},
	* summary="Job detail",
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
	* 		description="Job ID",
	* 		required=true,
	* 		type="integer"
	* ),
	* @SWG\Response(
	* 		response="200",
	* 		description="Employer object",
	* 		@SWG\Schema(ref="#/definitions/JobCreate")
	* )
	* )
	*/
	public function id_get($id)
	{
		$data = $this->jobs->get_by_job_id($id);
		$this->response($data);
	}

	/**
	* @SWG\Get(
	* path="/job/applications/{id}",
	* tags={"job"},
	* summary="Job applications",
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
	* 		description="Job ID",
	* 		required=true,
	* 		type="integer"
	* ),
	* @SWG\Response(
	* 		response="200",
	* 		description="Employer object",
	* 		@SWG\Schema(ref="#/definitions/JobCreate")
	* )
	* )
	*/
	public function applications_get($id)
	{
		$data = $this->jobs->get_job_applications($id);
		$this->response($data);
	}

    /**
	 * @SWG\Post(
	 * 	path="/job",
	 * 	tags={"job"},
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="User key",
	 * 		default="",
	 * 		required=true,
	 * 		type="string"
	 * 	),
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Post a job",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/JobCreate")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation",
	 * 		@SWG\Schema(type="string")
	 * 	)
	 * )
	 */
	public function index_post()
	{
		// check active user
		if ( empty($this->mUser) OR !$this->mUser->active )
		{
			$this->error_forbidden();
        }
        
		$fields = array('name_zh', 'name_en', 'pos', 'type', 'district_id', 
		'location_zh', 'location_en', 'monthly_wage', 'hourly_wage', 'description_zh', 
		'description_en', 'quota', 'payment_method');
		$data = array();
		foreach ($fields as $field)
		{
			if ($this->post($field)!==NULL)
			{
				$data[$field] = $this->post($field);
			}
		}
		$data['employer_user_id'] = $this->mUser->id;

		$created = $this->jobs->create_new($data);
		empty($created) ? $this->error('Create failed') : $this->created();
	}


    /**
	 * @SWG\Post(
	 * 	path="/job/withdraw/{id}",
	 * 	tags={"job"},
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="",
	 * 		default="",
	 * 		required=false,
	 * 		type="string"
	 * 	),
	* @SWG\Parameter(
	* 		in="path",
	* 		name="id",
	* 		description="Job ID",
	* 		required=true,
	* 		type="integer"
	* ),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation",
	 * 		@SWG\Schema(type="string")
	 * 	)
	 * )
	 */
	public function withdraw_post($id)
	{
		$job = $this->jobs->get($id);
		if ($job) {
			$job->status = 'hidden';
			$success = $this->jobs->update($id, $job);

			// Update related applications
			$this->load->model('Job_applicant_model', 'applications');
			$applications = $this->applications->get_many_by(array('job_id' => $id));
			if (!empty($applications)) 
			{
				foreach ($applications as $application) 
				{
					if ($application->application_status == 'submitted'
					|| $application->application_status == 'in_progress' 
					|| $application->application_status == 'offered')
					{
						$application_id = $application->id;
						$application->updated_at = date('Y-m-d H:i:s');
						$application->last_updated_at = date('Y-m-d H:i:s');
						$application->application_status = 'withdrawn';
						$success = $this->applications->update($application_id, $application);
					}
				}
			}
		} else {
            $this->error('withdraw_failed');
		}

		if ($success)
		{
			$this->created();
		} else {
			$this->error('withdraw_failed');
		}
	}
		
}