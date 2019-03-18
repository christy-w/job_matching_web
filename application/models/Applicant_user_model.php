<?php 

class Applicant_user_model extends MY_Model {
	protected $upload_fields = array(
		'thumbnail_url'	    => UPLOAD_APPLICANT,
	);

	public function get_by_user_id($user_id) {

		// append district
		// $this->db->select('applicant_users.*, 
		// d.name_zh AS district_name_zh, 
		// d.name_en AS district_name_en, 
		// d.area AS district_area,
		// i.name_zh AS industry_name_zh,
		// i.name_en AS industry_name_en');
		// $this->db->join('districts AS d', 'employer_users.district_id = d.id', 'LEFT');
		// $this->db->join('industries AS i', 'employer_users.industry_id = i.id', 'LEFT');
		// $this->db->where('employer_users.status', 'active');
		$data = parent::get($user_id);

		$this->load->model('user_modal', 'users');
		$data->mobile = $this->users->get($user_id)->mobile;

		$this->load->model('applicant_feedback_model', 'applicant_feedbacks');
		$feedbacks = $this->applicant_feedbacks->get_many_by(array('applicant_user_id' => $user_id));
		$data->feedbacks = $feedbacks;

		$rating_sum = 0;
		$feedback_count = count($feedbacks);
		foreach ($feedbacks as $feedback)
		{
			$rating_sum += $feedback->rating;
		}
		$data->avg_ratings = $rating_sum / $feedback_count;

		$fields = array('computer_skills', 'language_abilities', 'related_certs');
		foreach ($fields as $field)
		{
			if ( !empty($data->$field) )
				$data->$field = json_decode($data->$field);
		}

		return $data;
	}
}