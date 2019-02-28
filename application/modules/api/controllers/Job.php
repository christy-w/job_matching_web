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
        $jobs = $this->jobs->get_many_by(array('status' => 'active'));

        // Append Employer info
        $this->load->model('employer_user_model', 'employers');
        $this->load->model('district_model', 'districts');
        foreach ($jobs as $job)
		{
            $employers = $this->employers->get_by_user_id($job->employer_user_id);
            $district = $this->districts->get($job->district_id);

            $job->employer = $employers;
            $job->district = $district;
        }
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
		$data = $this->jobs->get($id);

        $this->load->model('employer_user_model', 'employers');
		$this->load->model('district_model', 'districts');
		$this->load->model('job_applicant_model', 'applications');
		$employers = $this->employers->get_by_user_id($data->employer_user_id);
		$district = $this->districts->get($data->district_id);
		$applications = $this->applications->get_many_by(array('job_id' => $id));

		$data->employer = $employers;
		$data->district = $district;
		$data->applications = $applications;
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
		
}