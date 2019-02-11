<?php
defined('BASEPATH') OR exit('No direct script access allowed');

namespace MySwaggerDefinitions;

/**
 * @SWG\Definition()
 */
class ApplicationApply {

	/**
	 * @var int
	 * @SWG\Property()
	 */
    public $job_id;
    
	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $work_date;
	
	/**
	 * @var string
	 * @SWG\Property()
	 */
    public $work_time;
}

