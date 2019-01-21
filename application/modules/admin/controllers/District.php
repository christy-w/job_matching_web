<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class District extends Admin_Controller {

	public function index()
	{
		$crud = $this->generate_crud('districts');
        $this->mPageTitle = 'Districts';
        $this->render_crud();
	}
}
