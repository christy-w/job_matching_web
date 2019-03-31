<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends Admin_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$crud = $this->generate_crud('about');
		$crud->unset_list();
		$crud->unset_back_to_list();
		$this->mPageTitle = 'About';
		$this->render_crud();
    }
}