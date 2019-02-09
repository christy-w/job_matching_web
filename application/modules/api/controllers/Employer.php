<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Employer extends API_Controller {

    /**
	* @SWG\Get(
	* path="/employer/{id}",
	* tags={"employer"},
	* summary="Employer detail",
	* @SWG\Parameter(
	* 		in="header",
	* 		name="X-API-KEY",
	* 		description="API Key",
	* 		default="anonymous",
	* 		required=true,
	* 		type="string"
	* ),
	* @SWG\Parameter(
	* 		in="path",
	* 		name="id",
	* 		description="Employer User ID",
	* 		required=true,
	* 		type="integer"
	* ),
	* @SWG\Response(
	* 		response="200",
	* 		description="Employer object",
	* 		@SWG\Schema(ref="#/definitions/Employer")
	* )
	* )
	*/
	public function id_get($id)
	{
		$this->load->model('Employer_user_model', 'employers');
		$data = $this->employers->get_by_user_id($id);
		$this->response($data);
	}
}