<?php 

class Job_model extends MY_Model {
	protected $_table = 'jobs';

    public function create_new($data)
	{
		// fetch user data
		$this->load->model('employer_user_model', 'employers');
        $employer = $this->employers->get_by(array('user_id' => $data['employer_user_id']));
        
        if ( empty($employer) )
			return FALSE;

        $created = parent::insert($data);
		return $created;
	}
}