<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendaftaran extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		if(isset($this->session->email)&&isset($this->session->id_user)){
			redirect('Biodata');
		}
		$this->load->model('M_pendaftaran','mp');
	}
	public function index()
	{
		$data['title'] = "Daftar";
		$data['page'] = "daftar";

		$this->load->view('template', $data, FALSE);
	}

	public function form()
	{
		# Passing Data
		$data['nama'] = $this->input->post('nama');
		$data['email'] = $this->input->post('email');

		# random password + hash
		$pass = $this->random_password(5);
		$data['password'] = md5($pass);

		# tambah ke database
		//$this->mp->insert($data);

		// konfigurasi email
		//$config = array();
		$config['protocol'] = 'smtp';
		$config['smtp_host'] = 'ssl://smtp.googlemail.com'; // setting smtp
		$config['smtp_port'] = 465;
		$config['smtp_user'] = 'yusufroyan93@gmail.com'; // username email
		$config['smtp_password'] = 'Rahasia12345'; // pass email
		$config['mailtype'] = 'html';
		$config['charset'] = 'iso-8859-1';
		$config['wordwrap'] = TRUE;

		$this->load->library('email', $config);
		$this->email->set_newline("\r\n");

		$this->email->from($config['smtp_user'],'Phicos');
		$this->email->to($data['email']);
		$this->email->subject("Verifikasi Akun");
		$this->email->message("
			terima kasih telah melakukan registrasi,\n
			Email : ".$data['email']."\n
			Password : ".$pass."\n

			untuk login silahkan kunjungi ".site_url('Login')."
			");

		if($this->email->send()){
			echo "Berhasil melakukan registrasi, silahkan cek email kamu";
		}else{
			echo $this->email->print_debugger();
		}
	}

	public function random_password($jumlah)
	{
		$karakter = '0123456789';
		$string = '';

		for($i=0; $i<$jumlah; $i++){
			$r = rand(0, strlen($karakter)-1);
			$string .= $karakter{$r};
		}
		return $string;
	}

}

/* End of file Pendaftaran.php */
/* Location: ./application/controllers/Pendaftaran.php */