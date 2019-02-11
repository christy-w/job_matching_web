<?php
defined('BASEPATH') OR exit('No direct script access allowed');

namespace MySwaggerDefinitions;

/**
 * @SWG\Definition()
 */
class JobCreate {

	/**
	 * @var string
	 * @SWG\Property()
	 */
    public $name_zh;
    
	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $name_en;

	/**
	 * @var string
	 * @SWG\Property(enum={"parttime","fulltime","temporary","freelance"})
	 */
	public $type;

	/**
	 * @var int
	 * @SWG\Property()
	 */
	public $district_id;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $location;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $salary_month;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $salary_hour;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $time;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $date;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $description;

	/**
	 * @var int
	 * @SWG\Property()
	 */
	public $quota;

	/**
	 * @var string
	 * @SWG\Property(enum={"cash", "transfer", "cheque"})
	 */
	public $payment_method;

}
