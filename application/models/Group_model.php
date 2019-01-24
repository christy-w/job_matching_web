<?php 

class Group_model extends MY_Model {

    public function get_by_user_id($user_id)
	{
		$this->db->select('groups.*, groups.name AS user_group');
		$this->db->join('users_groups AS rel', 'groups.id = rel.group_id', 'RIGHT');
		$this->db->where('rel.user_id', $user_id);
		return parent::get_all();
	}
}