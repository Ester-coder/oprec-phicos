<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		if(isset($this->session->email)&&isset($this->session->id_user)){
			redirect('Biodata');
		}
		$this->load->model('M_login', 'ml');
	}
	public function index()
	{
		$data['title'] = "Login";
		$data['page'] = "login";

		$this->load->view('template', $data, FALSE);
	}

	public function cek_user()
	{
		$data['email'] = $this->input->post('email');
		$data['password'] = md5($this->input->post('password'));
		$row = $this->ml->select($data);

		if($row->num_rows() > 0){
			$this->session->set_flashdata('login', 'berhasil');
			$this->session->id_user = $row->row()->id_user;
			$this->session->email = $row->row()->email;
			redirect('Biodata');
		}else{
			$this->session->set_flashdata('login', 'gagal');
			redirect('Login');
		}
	}

}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */