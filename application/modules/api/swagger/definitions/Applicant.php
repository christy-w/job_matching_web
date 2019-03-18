<?php
defined('BASEPATH') OR exit('No direct script access allowed');

namespace MySwaggerDefinitions;

/**
 * @SWG\Definition()
 */
class ApplicantUpdate {

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
	 * @SWG\Property()
	 */
    public $email;

	/**
	 * @var string
	 * @SWG\Property(enum={"male", "female"})
	 */
	public $gender;

	/**
	 * @var string
	 * @SWG\Property()
	 */
	public $dob;

	/**
	 * @var int
	 * @SWG\Property()
	 */
	public $district_id;

	/**
	 * @var string
	 * @SWG\Property(enum={"primary","secondary","post_secondary","university","never"})
	 */
	public $education_level;

	/**
	 * @var string
	 * @SWG\Property(enum={"full_time","part_time","home_maker","retired","student","unemployed","self_employed"})
	 */
	public $employment_status;

	/**
	 * @var string
	 * @SWG\Property(enum={"none","half_year","1_year","3_year","3_year_above"})
	 */
	public $related_experience;

	/**
	 * @SWG\Property(example={"1","2","3"})
	 */
	public $computer_skills;

	/**
	 * @SWG\Property(example={"1"})
	 */
	public $language_abilities;

	/**
	 * @SWG\Property(example={"1"})
	 */
	public $related_certs;
}

/**
 * @SWG\Definition()
 */
class ApplicantFeedback {
	/**
	 * @var int
	 * @SWG\Property()
	 */
    public $job_id;
    
	/**
	 * @var int
	 * @SWG\Property()
	 */
	public $applicant_user_id;
	
	/**
	 * @var string
	 * @SWG\Property()
	 */
    public $username;
	
	/**
	 * @var string
	 * @SWG\Property()
	 */
    public $feedback;
	
	/**
	 * @var int
	 * @SWG\Property()
	 */
    public $rating;
}

