<?php
defined('BASEPATH') OR exit('No direct script access allowed');

namespace MySwaggerDefinitions;

/**
 * @SWG\Definition()
 */
class SignUp {

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $mobile;
	
	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $email;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $password;

}

/**
 * @SWG\Definition()
 */
class Activate {

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $mobile;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $code;
}

/**
 * @SWG\Definition()
 */
class Login {

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $mobile;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $password;
}

/**
 * @SWG\Definition()
 */
class ForgotPassword {

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $mobile;
}

/**
 * @SWG\Definition()
 */
class ResetPassword {
	
	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $code;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $password;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $password_confirm;
}