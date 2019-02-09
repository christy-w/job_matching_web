<?php 

class Employer_user_model extends MY_Model {
	protected $_table = 'employer_users';
	protected $upload_fields = array(
		'thumbnail_url'	    => UPLOAD_EMPLOYER,
	);

	public function get_by_user_id($user_id) {

		// append district
		$this->db->select('employer_users.*, 
		d.name_zh AS district_name_zh, 
		d.name_en AS district_name_en, 
		d.area AS district_area,
		i.name_zh AS industry_name_zh,
		i.name_en AS industry_name_en');
		$this->db->join('districts AS d', 'employer_users.district_id = d.id', 'LEFT');
		$this->db->join('industries AS i', 'employer_users.industry_id = i.id', 'LEFT');
		$this->db->where('employer_users.status', 'active');

		return parent::get_by(array('user_id' => $user_id));
	}
}