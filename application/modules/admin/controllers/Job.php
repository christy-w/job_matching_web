<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Job extends Admin_Controller {

	public function index()
	{
        $crud = $this->generate_crud('jobs');
        
		// disable direct create / delete Frontend User
        $crud->unset_add();
        $crud->unset_edit();
        $crud->unset_delete();
        
        $this->mPageTitle = 'All Jobs Posted';
        $this->render_crud();
	}
}
