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
}

/**
 * @SWG\Definition()
 */
class ApplicationDelete {

	/**
	 * @var int
	 * @SWG\Property()
	 */
    public $job_id;
}

/**
 * @SWG\Definition()
 */
class ApplicationUpdate {

	/**
	 * @var string
	 * @SWG\Property()
	 */
    public $application_status;
}


