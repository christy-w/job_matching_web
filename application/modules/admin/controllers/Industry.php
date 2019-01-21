<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Industry extends Admin_Controller {

	public function index()
	{
		$crud = $this->generate_crud('industries');
        $this->mPageTitle = 'Industries';
        $this->render_crud();
	}
}
