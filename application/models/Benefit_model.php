<?php 

class Benefit_model extends MY_Model {

    public function get_by_employer_user_id($employer_id)
	{
		$this->db->select($this->_table.'.*');
		$this->db->join('employers_benefits AS rel', $this->_table.'.id = rel.benefit_id', 'RIGHT');
		$this->db->where('rel.employer_id', $employer_id);
		$query = $this->db->get($this->_table);
		return $query->result();
	}
}