<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Job extends Admin_Controller {

	public function index()
	{   
        // Generate cruds for the table 'Jobs'
        $crud = $this->generate_crud('jobs');
        
        // Setting for table relation 1-1
        // Method: set_relation($field_name , $related_table, $related_title_field)
		$crud->set_relation('district_id', 'districts', 'name_en');
        $crud->set_relation('employer_user_id', 'employer_users', 'name_en');
        
        // Render crud view
        $this->mPageTitle = 'All Jobs Posted';
        $this->render_crud();
	}
}
