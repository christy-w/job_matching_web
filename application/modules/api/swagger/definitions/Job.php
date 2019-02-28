<?php
defined('BASEPATH') OR exit('No direct script access allowed');

namespace MySwaggerDefinitions;

/**
 * @SWG\Definition()
 */
class JobCreate {
	/**
	 * @var int
	 * @SWG\Property()
	 */
    public $pos;

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
	public $location_zh;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $location_en;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $monthly_wage;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $hourly_wage;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $description_zh;
	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $description_en;

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
