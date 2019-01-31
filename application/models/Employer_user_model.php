<?php 

class Employer_user_model extends MY_Model {
	protected $_table = 'employer_users';
	protected $upload_fields = array(
		'thumbnail_url'	    => UPLOAD_EMPLOYER,
	);
}