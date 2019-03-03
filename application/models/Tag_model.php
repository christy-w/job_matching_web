<?php 

class Tag_model extends MY_Model {

    public function get_by_job_id($job_id)
	{
		$this->db->select($this->_table.'.*');
		$this->db->join('jobs_tags AS rel', $this->_table.'.id = rel.tag_id', 'RIGHT');
		$this->db->where('rel.job_id', $job_id);
		$query = $this->db->get($this->_table);
		return $query->result();
	}
}