<?php 

class Job_model extends MY_Model {
    protected $_table = 'jobs';

    public function create_new($data)
	{
		// fetch user data
		$this->load->model('employer_user_model', 'employers');
        $employer = $this->employers->get($data['employer_user_id']);
        
        if ( empty($employer) )
			return FALSE;

        $created = parent::insert($data);
		return $created;
	}

	public function get_all_jobs()
	{
		// append district
		$this->db->select('jobs.*, 
		d.name_zh AS district_name_zh, 
		d.name_en AS district_name_en, 
		d.area AS district_area');

		$this->db->join('districts AS d', 'jobs.district_id = d.id', 'LEFT');
		$this->db->where('jobs.status', 'active');
		$jobs =  parent::get_all();

        // Append Employer info
        $this->load->model('employer_user_model', 'employers');
		$this->load->model('job_applicant_model', 'applications');
        // $this->load->model('tag_model', 'tags');
        foreach ($jobs as $job)
		{
            $job->employer = $this->employers->get_by_user_id($job->employer_user_id);
			$job->applications = $this->applications->get_many_by(array('job_id' => $job->id));
			// $job->tags = $this->tags->get_by_job_id($job->id);
        }
		return $jobs;
	}

	public function get_by_job_id($job_id) 
	{
		// append district
		$this->db->select('jobs.*, 
		d.name_zh AS district_name_zh, 
		d.name_en AS district_name_en, 
		d.area AS district_area');

		$this->db->join('districts AS d', 'jobs.district_id = d.id', 'LEFT');
		$this->db->where('jobs.status', 'active');
		$job =  parent::get_by(array('jobs.id' => $job_id));

		// append employers
        $this->load->model('employer_user_model', 'employers');
		$job->employer = $this->employers->get_by_user_id($job->employer_user_id);

		// append applications
		$this->load->model('job_applicant_model', 'applications');
		$job->applications = $this->applications->get_many_by(array('job_id' => $job_id));

		return $job;
	}
}