<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
public function __construct()
{
	parent::__construct();
	//Do your magic here
}
	public function index()
	{
		$data['title'] = "Home";
		$data['page'] = "home";

		$this->load->view('template', $data, FALSE);
	}

}

/* End of file Dashboard.php */
/* Location: ./application/controllers/Dashboard.php */