<?php

/**
 * Config file for form validation
 * Reference: http://www.codeigniter.com/user_guide/libraries/form_validation.html
 * (Under section "Creating Sets of Rules")
 */

$config = array(

	// Admin User Login
	'login/index' => array(
		array(
			'field'		=> 'username',
			'label'		=> 'Username',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'password',
			'label'		=> 'Password',
			'rules'		=> 'required',
		),
	),

	// Create User
	// 'user/create' => array(
	// 	array(
	// 		'field'		=> 'first_name',
	// 		'label'		=> 'First Name',
	// 		'rules'		=> 'required',
	// 	),
	// 	array(
	// 		'field'		=> 'last_name',
	// 		'label'		=> 'Last Name',
	// 		'rules'		=> 'required',
	// 	),
	// 	/*array(
	// 		'field'		=> 'username',
	// 		'label'		=> 'Username',
	// 		'rules'		=> 'is_unique[users.username]',				// use email as username if empty
	// 	),*/
	// 	array(
	// 		'field'		=> 'mobile',
	// 		'label'		=> 'Mobile',
	// 		'rules'		=> 'required|numeric|is_unique[users.mobile]',
	// 	),
	// 	array(
	// 		'field'		=> 'email',
	// 		'label'		=> 'Email',
	// 		'rules'		=> 'valid_email|is_unique[users.email]',
	// 	),
	// 	array(
	// 		'field'		=> 'password',
	// 		'label'		=> 'Password',
	// 		'rules'		=> 'required',
	// 	),
	// 	array(
	// 		'field'		=> 'retype_password',
	// 		'label'		=> 'Retype Password',
	// 		'rules'		=> 'required|matches[password]',
	// 	),
	// ),
	
	// Create User by group
	'user/create_by_group' => array(
		array(
			'field'		=> 'mobile',
			'label'		=> 'Mobile',
			'rules'		=> 'required|numeric|is_unique[users.mobile]',
		),
	),

	// Create Employer
	'user/create_employer_user' => array(
		array(
			'field'		=> 'name_zh',
			'label'		=> 'Chinese Name',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'name_en',
			'label'		=> 'English Name',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'tel',
			'label'		=> 'Tel',
			'rules'		=> 'required|numeric|is_unique[users.mobile]',
		),
		array(
			'field'		=> 'email',
			'label'		=> 'Email',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'description',
			'label'		=> 'Description',
			'rules'		=> '',
		),
		array(
			'field'		=> 'address',
			'label'		=> 'Address',
			'rules'		=> '',
		),
		array(
			'field'		=> 'scale',
			'label'		=> 'No. of Employee',
			'rules'		=> 'numeric',
		),
		array(
			'field'		=> 'district_id',
			'label'		=> 'District',
			'rules'		=> '',
		),
	),

	// Reset User Password
	'user/reset_password' => array(
		array(
			'field'		=> 'new_password',
			'label'		=> 'New Password',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'retype_password',
			'label'		=> 'Retype Password',
			'rules'		=> 'required|matches[new_password]',
		),
	),

	// Create Admin User
	'panel/admin_user_create' => array(
		array(
			'field'		=> 'username',
			'label'		=> 'Username',
			'rules'		=> 'required|is_unique[users.username]',
		),
		array(
			'field'		=> 'first_name',
			'label'		=> 'First Name',
			'rules'		=> 'required',
		),
		/* Admin User can have no email
		array(
			'field'		=> 'email',
			'label'		=> 'Email',
			'rules'		=> 'valid_email|is_unique[users.email]',
		),*/
		array(
			'field'		=> 'password',
			'label'		=> 'Password',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'retype_password',
			'label'		=> 'Retype Password',
			'rules'		=> 'required|matches[password]',
		),
	),

	// Reset Admin User Password
	'panel/admin_user_reset_password' => array(
		array(
			'field'		=> 'new_password',
			'label'		=> 'New Password',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'retype_password',
			'label'		=> 'Retype Password',
			'rules'		=> 'required|matches[new_password]',
		),
	),

	// Admin User Update Info
	'panel/account_update_info' => array(
		array(
			'field'		=> 'username',
			'label'		=> 'Username',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'password',
			'label'		=> 'Password',
			'rules'		=> 'required',
		),
	),

	// Admin User Change Password
	'panel/account_change_password' => array(
		array(
			'field'		=> 'new_password',
			'label'		=> 'New Password',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'retype_password',
			'label'		=> 'Retype Password',
			'rules'		=> 'required|matches[new_password]',
		),
	),

);