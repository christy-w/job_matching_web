<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class System extends API_Controller {

	public function __construct()
	{
		parent::__construct();
	}
    
	/**
	 * @SWG\Get(
	 * 	path="/system/districts",
	 * 	tags={"system"},
	 * 	summary="Get All Districts",
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="List of All Districts",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/"))
	 * 	)
	 * )
	 */
	public function districts_get()
	{
		$this->load->model('district_model', 'districts');
		$data = $this->districts->get_all();
		$this->response($data);
	}
	  
	/**
	 * @SWG\Get(
	 * 	path="/system/language_abilities",
	 * 	tags={"system"},
	 * 	summary="Get All Language Abilities",
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="List of All Language Abilities",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/"))
	 * 	)
	 * )
	 */
	public function language_abilities_get()
	{
		$this->load->model('language_ability_model', 'language');
		$data = $this->language->get_all();
		$this->response($data);
	}
	  
	/**
	 * @SWG\Get(
	 * 	path="/system/computer_skills",
	 * 	tags={"system"},
	 * 	summary="Get All Computer Skills",
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="List of All Computer Skills",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/"))
	 * 	)
	 * )
	 */
	public function computer_skills_get()
	{
		$this->load->model('computer_skill_model', 'computer');
		$data = $this->computer->get_all();
		$this->response($data);
	}
	  
	/**
	 * @SWG\Get(
	 * 	path="/system/related_certificates",
	 * 	tags={"system"},
	 * 	summary="Get All Related Certificates",
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="List of All Related Certificates",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/"))
	 * 	)
	 * )
	 */
	public function related_certificates_get()
	{
		$this->load->model('related_certificate_model', 'cert');
		$data = $this->cert->get_all();
		$this->response($data);
	}
}