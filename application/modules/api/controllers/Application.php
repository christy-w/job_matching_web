<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Application extends API_Controller {

    public function __construct()
	{
		parent::__construct();
		$this->load->model('Job_applicant_model', 'applications');
	}
    
    /**
	 * @SWG\Post(
	 * 	path="/application/apply/{id}",
	 * 	tags={"application"},
	 *	summary="For applicant to apply for job",
	 * 	@SWG\Parameter(
	 * 		in="header",
	 * 		name="X-API-KEY",
	 * 		description="API KEY",
	 * 		default="",
	 * 		required=true,
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
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function apply_post($job_id)
	{
		// check active user
		if ( empty($this->mUser) OR !$this->mUser->active )
		{
            $this->error_forbidden();
		}
		
        $data = array(
            'job_id'            => $job_id,
            'applicant_user_id' => $this->mUser->id
        );

        $application_count = $this->applications->count_by($data);
        if (empty($application_count))
        {   
            // Create application
			$data['applied_at'] = date('Y-m-d H:i:s');
			$data['last_updated_at'] = date('Y-m-d H:i:s');
			$data['application_status'] = 'submitted';
            $success = $this->applications->insert($data);
        } 
        else
        {
            $this->error('already_applied');
        }

        if ($success) {
            $this->created();
        }
        else
        {
            $this->error('update_failed');
        }
    }

    /**
	 * @SWG\Post(
	 * 	path="/application/cancel/{id}",
	 * 	tags={"application"},
	 *	summary="For applicant to delete an application",
	 * @SWG\Parameter(
	 * 		in="path",
	 * 		name="id",
	 * 		description="Application ID",
	 * 		required=true,
	 * 		type="integer"
	 * ),
 	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function cancel_post($id)
	{
        $application = $this->applications->get($id);
        if (!empty($application))
        {   
            // Delete application
			$data['cancelled_at'] = date('Y-m-d H:i:s');
			$data['last_updated_at'] = date('Y-m-d H:i:s');
			$data['application_status'] = 'cancelled';
            $success = $this->applications->update($id, $data);
        } 
        else
        {
            // Update application if applications are made
            $this->error('cancelled_failed');
		}
		
        if ($success) {
            $this->created();
        }
        else
        {
            $this->error('cancelled_failed');
        }
	}
	
    /**
	 * @SWG\Post(
	 * 	path="/application/update/{id}",
	 * 	tags={"application"},
	 *	summary="For user to update an application",
	 * @SWG\Parameter(
	 * 		in="path",
	 * 		name="id",
	 * 		description="Application ID",
	 * 		required=true,
	 * 		type="integer"
	 * ),
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Update an application",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/ApplicationUpdate")
	 * 	),
 	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function update_post($id)
	{
		$status_to_update = $this->post('application_status');
        $application = $this->applications->get($id);
        if (!empty($application))
        {   
            // Delete application
			$data['updated_at'] = date('Y-m-d H:i:s');
			$data['last_updated_at'] = date('Y-m-d H:i:s');
			$data['application_status'] = $status_to_update;
            $success = $this->applications->update($id, $data);
        } 
        else
        {
            // Update application if applications are made
            $this->error('update_failed');
		}
		
        if ($success) {
            $this->created();
        }
        else
        {
            $this->error('update_failed');
        }
	}

    /**
	* @SWG\Get(
	* path="/application/user",
	* tags={"application"},
	* summary="Get applications by user",
	* @SWG\Parameter(
	* 		in="header",
	* 		name="X-API-KEY",
	* 		description="API Key",
	* 		default="anonymous",
	* 		required=true,
	* 		type="string"
	* ),
	* @SWG\Response(
	* 		response="200",
	* 		description="Applicant object",
	* 		@SWG\Schema(ref="#/definitions/Applicant")
	* )
	* )
	*/
	public function user_get()
	{
		// check active user
		if ( empty($this->mUser) OR !$this->mUser->active )
		{
            $this->error_forbidden();
		}
		$user_id = $this->mUser->id;
		$applications = $this->applications->get_many_by(array('applicant_user_id' => $user_id));
		// Append job details
		$this->load->model('Job_model', 'jobs');
		
		foreach ($applications as $application) 
		{
			$job_id = $application->job_id;
			$application->job = $this->jobs->get_by_job_id($job_id);
		}
		$this->response($applications);
	}
}