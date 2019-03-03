<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class System extends API_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('district_model', 'districts');
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
        $data = $this->districts->get_all();
		$this->response($data);
    }
}