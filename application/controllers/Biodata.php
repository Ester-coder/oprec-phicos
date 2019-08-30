<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Biodata extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_biodata', 'mb');
	}
	public function index()
	{
		$row = $this->mb->selectBiodata($this->session->id_user);
		if($row->num_rows()>0){
			$data['title'] = "Biodata";
			$data['page'] = "biodata";
			$data['biodata'] = $row->row();
		}else{
			$data['title'] = "Form Biodata";
			$data['page'] = "form_biodata";
			$data['divisi'] = $this->mb->selectDivisi();
		}

		$this->load->view('template', $data, FALSE);
	}

	public function form()
	{
		$data['id_biodata'] = NULL;
		$data['id_user'] = $this->session->id_user;
		$data['jenis_kelamin'] = $this->input->post('jenis_kelamin');
		$data['ttl'] = $this->input->post('ttl');
		$data['agama'] = $this->input->post('agama');
		$data['no_telp'] = $this->input->post('no_telp');
		$data['alamat'] = $this->input->post('alamat');
		$data['id_divisi'] = $this->input->post('id_divisi');

		$this->mb->insert($data);
		redirect('Biodata');

	}

	public function edit()
	{
		$row = $this->mb->selectBiodata($this->input->post('id_user'));
		$data['title'] = "Edit Biodata";
		$data['page'] = "edit_biodata";
		$data['biodata'] = $row->row();
		$data['divisi'] = $this->mb->selectDivisi();
		
		$this->load->view('template', $data, FALSE);

	}

	public function update()
	{
		$data['id_biodata'] = $this->input->post('id_biodata');
		$data['id_user'] = $this->input->post('id_user');
		$data['jenis_kelamin'] = $this->input->post('jenis_kelamin');
		$data['ttl'] = $this->input->post('ttl');
		$data['agama'] = $this->input->post('agama');
		$data['no_telp'] = $this->input->post('no_telp');
		$data['alamat'] = $this->input->post('alamat');
		$data['id_divisi'] = $this->input->post('id_divisi');

		$this->mb->update($data);
		redirect('Biodata');

	}
}

/* End of file Biodata.php */
/* Location: ./application/controllers/Biodata.php */