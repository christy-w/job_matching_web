<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends API_Controller {

	/**
	 * @SWG\Get(
	 * 	path="/about",
	 * 	tags={"about"},
	 * 	summary="Get about information",
	 * 	@SWG\Response(
	 * 		response="200",
	 * 		description="about information",
	 * 		@SWG\Schema(type="array", @SWG\Items(ref="#/definitions/"))
	 * 	)
	 * )
	 */
	public function index_get()
	{
		$this->load->model('about_model', 'about');
		$data = $this->about->get(1);
		$this->response($data);
	}
}