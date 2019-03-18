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
	 * 	path="/system/district/{id}",
	 * 	tags={"system"},
	 * 	summary="Get a district",
	 * @SWG\Parameter(
		* 		in="path",
		* 		name="id",
		* 		description="District ID",
		* 		required=true,
		* 		type="integer"
		* ),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Get a district",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/"))
	 * 	)
	 * )
	 */
	public function district_get($id)
	{
		$this->load->model('district_model', 'districts');
		$data = $this->districts->get($id);
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
	 * 	path="/system/language_ability/{id}",
	 * 	tags={"system"},
	 * 	summary="Get a language ability",
	 * @SWG\Parameter(
		* 		in="path",
		* 		name="id",
		* 		description="Ability ID",
		* 		required=true,
		* 		type="integer"
		* ),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Get a language ability",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/"))
	 * 	)
	 * )
	 */
	public function language_ability_get($id)
	{
		$this->load->model('language_ability_model', 'language');
		$data = $this->language->get($id);
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
	 * 	path="/system/computer_skill/{id}",
	 * 	tags={"system"},
	 * 	summary="Get a computer skill",
	 * @SWG\Parameter(
		* 		in="path",
		* 		name="id",
		* 		description="Skill ID",
		* 		required=true,
		* 		type="integer"
		* ),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Get a computer skill",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/"))
	 * 	)
	 * )
	 */
	public function computer_skill_get($id)
	{
		$this->load->model('computer_skill_model', 'computer');
		$data = $this->computer->get($id);
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
	
	/**
	 * @SWG\Get(
	 * 	path="/system/related_certificate/{id}",
	 * 	tags={"system"},
	 * 	summary="Get a related certificate",
	 * @SWG\Parameter(
		* 		in="path",
		* 		name="id",
		* 		description="Cert ID",
		* 		required=true,
		* 		type="integer"
		* ),
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="Get a related certificate",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/"))
	 * 	)
	 * )
	 */
	public function related_certificate_get($id)
	{
		$this->load->model('related_certificate_model', 'cert');
		$data = $this->cert->get($id);
		$this->response($data);
	}
}