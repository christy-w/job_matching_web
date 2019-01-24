<?php

class User_model extends MY_Model {

	// generate and send activation code
	public function send_activation_code($user_id, $mobile)
	{
		// $this->load->library('Sms_client');

		// generate activation code
		$code = random_string('numeric', 4);
		parent::update($user_id, array('activation_code' => $code));

		// send SMS to user
		// $msg = '登記驗證碼  Registration Confirmation Code: '.$code;
		// $this->sms_client->send($mobile, $msg);
		return (ENVIRONMENT=='production') ? '' : $code;
	}

	// generate and send update mobile verification code
	public function send_update_mobile_code($user_id, $new_mobile)
	{
		// $this->load->library('Sms_client');

		// generate verification code
		$code = random_string('numeric', 4);
		$updated = parent::update($user_id, array('update_mobile' => $new_mobile, 'update_mobile_code' => $code));

		// send SMS to user
		$result = array('success' => $updated, 'new_mobile' => $new_mobile);
		if ($updated)
		{
			$msg = '更改電話驗證碼  Update Mobile Confirmation Code: '.$code;
			// $this->sms_client->send($new_mobile, $msg);
			$result['code'] = (ENVIRONMENT=='production') ? '' : $code;
		}

		return $result;
	}

	// verify update mobile code
	public function verify_update_mobile_code($user_id, $new_mobile, $code)
	{
		$user = parent::select('id')->get_by(array('id' => $user_id, 'update_mobile' => $new_mobile, 'update_mobile_code' => $code));

		// invalid request
		if ( empty($user) )
			return FALSE;

		// proceed to change mobile
		return parent::update($user_id, array('username' => $new_mobile, 'mobile' => $new_mobile, 'update_mobile' => '', 'update_mobile_code' => ''));
	}

	// refresh user status, groups, etc.
	public function refresh_users()
	{
		// override datetime handling
		$this->load->model('app_config_model', 'configs');
		$app_config = $this->configs->get(1);
		$six_months_ago = empty($app_config->override_datetime) ? strtotime('-6 months') : strtotime('-6 months', strtotime($app_config->override_datetime));

		// get intervention users, and switch them to Control user after 6 months
		$six_months_ago = date('Y-m-d H:i:s', $six_months_ago);
		$this->db->where('active', 1);
		$this->db->where('activated_at <=', $six_months_ago);
		$users = $this->ion_auth->users(array(2,3))->result();
		foreach ($users as $user)
		{
			$this->ion_auth->remove_from_group(NULL, $user->id);
			$this->ion_auth->add_to_group(1, $user->id);
			echo 'Changed user (ID: '.$user->id.') to Control user'.PHP_EOL;
		}
	}

	public function export_first_reg_data()
	{
		// columns to display in CSV
		$fields = array('id', 'username', 'email', 'mobile', 'nickname', 
			'gender', 'birth_date', 'birth_place', 'hk_living_year', 'hk_living_month', 'living_with',
			'marital_status', 'religion', 'district_id', 'education_attainment',  
			'employment_status', 'unemployed_not_applicable', 'unemployed_year', 'unemployed_month', 'occupation', 'emergencies', 
			'received_cssa', 'received_disability_allowance', 'consent_agreed',
			'active', 'activated_at', 'info_first_copy');

		$this->db->select(implode(',', $fields));
		$this->db->from('users');
		$this->db->order_by('id', 'ASC');
		$data = $this->db->get();
		$result = $data->result_array();

		$writer = League\Csv\Writer::createFromFileObject(new SplTempFileObject()); //the CSV file will be created into a temporary File
		$writer->setNewline("\r\n"); //use windows line endings for compatibility with some csv libraries
		$writer->setEncodingFrom('utf-8');
		$headers = $fields;
		$writer->insertOne($headers);
		$writer->insertAll($result);

		//$html = $writer->toHTML('table-csv-data with-header');
		//echo $html;
		$writer->output('users_data_'.date('Ymd_His').'.csv');
	}
}