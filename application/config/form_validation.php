<?php

/**
 * Config file for form validation
 * http://www.codeigniter.com/user_guide/libraries/form_validation.html (Under section "Creating Sets of Rules")
 */

$config = array(


	// Sign Up
	'auth/sign_up' => array(
		array(
		 	'field'		=> 'mobile',
		 	'label'		=> 'Mobile',
		 	'rules'		=> 'required',
		),
		array(
			'field'		=> 'password',
			'label'		=> 'Password',
			'rules'		=> 'required|min_length[6]',
		),
	),

	// Activate
	'auth/login' => array(
		array(
			'field'		=> 'mobile',
			'label'		=> 'Mobile',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'code',
			'label'		=> 'Code',
			'rules'		=> 'required|min_length[4]',
		),
	),

	// Login
	'auth/login' => array(
		array(
			'field'		=> 'mobile',
			'label'		=> 'Mobile',
			'rules'		=> 'required',
		),
		array(
			'field'		=> 'password',
			'label'		=> 'Password',
			'rules'		=> 'required',
		),
	),

	// Forgot Password
	'auth/forgot_password' => array(
		array(
			'field'		=> 'mobile',
			'label'		=> 'Mobile',
			'rules'		=> 'required',
		),
	),

	// Reset Password
	'auth/reset_password' => array(
		array(
			'field'		=> 'code',
			'label'		=> 'Code',
			'rules'		=> 'required|min_length[4]',
		),
		array(
			'field'		=> 'password',
			'label'		=> 'Password',
			'rules'		=> 'required|min_length[6]',
		),
		array(
			'field'		=> 'retype_password',
			'label'		=> 'Retype Password',
			'rules'		=> 'required|matches[password]',
		),
	),

);

/**
 * Google reCAPTCHA settings
 * https://www.google.com/recaptcha/
 */
$config['recaptcha'] = array(
	'site_key'		=> '',
	'secret_key'	=> '',
);
