<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		if(!isset($this->session->email)&&!isset($this->session->id_user)){
			redirect('Login');
		}
		$this->load->model('M_profile', 'mpro');
	}
	public function index()
	{
		$data['title'] = "Profile";
		$data['page'] = "profile";
		$data['value'] = $this->mpro->select($this->session->id_user);

		$this->load->view('template', $data, FALSE);
	}

	public function ganti_password($id)
	{
		$this->validasi_password();
		if ($this->form_validation->run() == TRUE) {
			
			$password_lama = md5($this->input->post('password_lama'));
			$password_baru['password'] = md5($this->input->post('password_baru'));
			$db_password = $this->mpro->select($id)->password;
			if($db_password == $password_lama){
				$this->mpro->update($password_baru);
				redirect('Profile');
			}
			$this->session->set_flashdata('error', 'error');
			
			$data['title'] = "Profile";
			$data['page'] = "ganti_password";

		}else {
			$data['title'] = "Profile";
			$data['page'] = "ganti_password";
		}

		$this->load->view('template', $data, FALSE);
	}

	private function validasi_password()
	{
		$this->form_validation->set_rules('password_lama', 'Password lama', 'required');
		$this->form_validation->set_rules('password_baru', 'Password baru', 'required');
	}

	public function logout()
	{
		session_destroy();
		unset($this->session->email);
		unset($this->session->id_user);
		redirect('Login');
	}

}

/* End of file Profile.php */
/* Location: ./application/controllers/Profile.php */