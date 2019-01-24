<?php
defined('BASEPATH') OR exit('No direct script access allowed');

namespace MySwaggerDefinitions;

/**
 * @SWG\Definition()
 */
class MeUpdate {

	/**
	 * @var string
	 * @SWG\Property(enum={"male", "female"})
	 */
	public $gender;

	/**
	 * @var string
	 * @SWG\Property(enum={"none","catholicity","christianity","buddhism","other"})
	 */
	public $religion;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $birth_date;

	/**
	 * @var string
	 * @SWG\Property(enum={"hong_kong","china","macau","other"})
	 */
	public $birth_place;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $hk_living_year;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $hk_living_month;

	/**
	 * @var string
	 * @SWG\Property(enum={"single","married","separated", "cohabitating", "divorces", "widowed", "other"})
	 */
	public $marital_status;

	/**
	 * @var int
	 * @SWG\Property()
	 */
	public $district_id;

	/**
	 * @var string
	 * @SWG\Property(enum={"university_or_above","asso_subdegree","form_6_to_7","form_4_to_6","form_4_to_5","form_1_to_3", "primary_school","never"})
	 */
	public $education_attainment;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $living_with;

	/**
	 * @var string
	 * @SWG\Property(enum={"full_time","part_time","seeking_job","home_maker","retired","student","unemployed","work_disability","other"})
	 */
	public $employment_status;

	/**
	 * @var boolean
	 * @SWG\Property()
	 */
	public $unemployed_not_applicable;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $unemployed_year;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $unemployed_month;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $occupation;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $emergencies;

	/**
	 * @var boolean
	 * @SWG\Property()
	 */
	public $received_cssa;

	/**
	 * @var boolean
	 * @SWG\Property()
	 */
	public $received_disability_allowance;

}


/**
 * @SWG\Definition()
 */
class MeConsent {

	/**
	 * @var boolean
	 * @SWG\Property()
	 */
	public $consent_agreed;
}

/**
 * @SWG\Definition()
 */
class MeImage {

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $image_url;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $remarks;

}

/**
 * @SWG\Definition()
 */
class MeUpdateMobile {

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $new_mobile;
}

/**
 * @SWG\Definition()
 */
class MeVerifyMobile {

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $new_mobile;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $code;
}