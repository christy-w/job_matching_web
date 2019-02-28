<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class System extends Admin_Controller {

	public function district()
	{
		$crud = $this->generate_crud('districts');
        $this->mPageTitle = 'Districts';
        $this->render_crud();
    }
    
	public function industry()
	{
		$crud = $this->generate_crud('industries');
        $this->mPageTitle = 'Industries';
        $this->render_crud();
    }  
    
	public function language()
	{
		$crud = $this->generate_crud('language_abilities');
        $this->mPageTitle = 'Language Abilities';
        $this->render_crud();
	}
    
	public function computer()
	{
		$crud = $this->generate_crud('computer_skills');
        $this->mPageTitle = 'Computer Skills';
        $this->render_crud();
	}
    
	public function certificate()
	{
		$crud = $this->generate_crud('related_certs');
        $this->mPageTitle = 'Related Certificates';
        $this->render_crud();
	}
    
	public function tag()
	{
		$crud = $this->generate_crud('tags');
        $this->mPageTitle = 'Job Tags';
        $this->render_crud();
	}

	public function benefit()
	{
		$crud = $this->generate_crud('benefits');
        $this->mPageTitle = 'Employee Benefits';
        $this->render_crud();
	}
}
