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
	 * 	path="/application/apply",
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
	 * 	@SWG\Parameter(
	 * 		in="body",
	 * 		name="body",
	 * 		description="Apply a job",
	 * 		required=true,
	 * 		@SWG\Schema(ref="#/definitions/ApplicationApply")
	 * 	),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Successful operation"
	 * 	)
	 * )
	 */
	public function apply_post()
	{
		// check active user
		if ( empty($this->mUser) OR !$this->mUser->active )
		{
            $this->error_forbidden();
        }

		$fields = array('job_id', 'work_date', 'work_time', 'application_status');
		
		$data = array();
		$params = $this->post();
		foreach ($fields as $field)
		{
            if ( array_key_exists($field, $params) )
            {
                $data[$field] = $params[$field];
            }
        }
        // Relate user id
        $data['applicant_user_id'] = $this->mUser->id;

		// skip update database if no field need to be updated
		if ( empty($data) ) {
			$this->created();
        }

        $identity = array(
            'job_id'            => $data['job_id'],
            'applicant_user_id' => $data['applicant_user_id']
        );

        $application_count = $this->applications->count_by($identity);
        if (empty($application_count))
        {   
            // Create application
            $data['applied_at'] = date('Y-m-d H:i:s');
            $success = $this->applications->insert($data);
        } 
        else
        {
            // Update application if applications are made
            $data['updated_at'] = date('Y-m-d H:i:s');
            $success = $this->applications->update_by($identity, $data);
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
	 * 	path="/application/delete/{id}",
	 * 	tags={"application"},
	 *	summary="For applicant to delete an application",
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
	public function delete_post($id)
	{
		// check active user
		if ( empty($this->mUser) OR !$this->mUser->active )
		{
            $this->error_forbidden();
        }

        $application = $this->applications->get($id);
        if (!empty($application))
        {   
            // Delete application
            $success = $this->applications->delete($id);
            $this->created();
        } 
        else
        {
            // Update application if applications are made
            $this->error('delete_failed');
        }
    }
}