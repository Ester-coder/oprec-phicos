<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Portofolio extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		if(!isset($this->session->email)&&!isset($this->session->id_user)){
			redirect('Login');
		}
		$this->load->model('M_portofolio', 'mpo');
	}
	public function index()
	{
		$data['title'] = "Portofolio";
		$data['page'] = "portofolio";
		$data['portofolio'] = $this->mpo->select($this->session->id_user);
		
		$this->load->view('template', $data, FALSE);

	}

	public function form()
	{
		$this->validasi_form();
		if ($this->form_validation->run() == FALSE) {
			$data['title'] = "Form Portofolio";
			$data['page'] = "form_portofolio";

			$this->load->view('template', $data, FALSE);
		} else {
			$data['id_portofolio'] = NULL;
			$data['nama_projek'] = $this->input->post('nama_projek');
			$data['deskripsi_projek'] = $this->input->post('deskripsi_projek');
			$data['link'] = $this->input->post('link');
			$data['gambar_projek'] = $_FILES['gambar_projek']['name'];
			$data['id_user'] = $this->input->post('id_user');

			$this->mpo->insert($data);
			$file->gambar_projek = $this->upload_gambar();
			$file->id = $this->db->insert_id();

			$this->mpo->update_nama_gambar($file);

			redirect('Portofolio');
		}

	}

	private function upload_gambar()
	{
		$config['upload_path']          = 'assets/images/portofolio/';
		$config['allowed_types']        = 'jpeg|jpg|png';
		$config['file_name']            = 'portofolio-'.$this->db->insert_id();
		$config['overwrite']			= true;
   		$config['max_size']             = 1024*2; // 2MB

   		$this->load->library('upload', $config);

   		if ($this->upload->do_upload('gambar_projek')) {
   			return $this->upload->data("file_name");
   		}

   		return "default.png";
   	}

   	private function update_gambar($id)
   	{
   		$config['upload_path']          = 'assets/images/portofolio/';
   		$config['allowed_types']        = 'jpeg|jpg|png';
   		$config['file_name']            = 'portofolio-'.$id;
   		$config['overwrite']			= true;
   		$config['max_size']             = 1024*2; // 2MB

   		$this->load->library('upload', $config);
   		
   		if ($this->upload->do_upload('gambar_projek')) {
   			return $this->upload->data("file_name");
   		}
   		
   	}

   	public function ubah($id)
   	{
   		$data['title'] = "Edit Portofolio";
   		$data['page'] = "edit_portofolio";
   		$data['value'] = $this->mpo->selectById($id);

   		$this->load->view('template', $data, FALSE);

   	}

   	public function hapus($id)
   	{
   		$this->db->where('id_portofolio', $id);
   		$this->db->delete('portofolio');
   		redirect('Portofolio');
   	}

   	public function update($id)
   	{
   		$id_portofolio = $id;
   		$data->nama_projek = $this->input->post('nama_projek');
   		$data->deskripsi_projek = $this->input->post('deskripsi_projek');
   		$data->link = $this->input->post('link');
   		#upload gambar
   		$FILE = $_FILES['gambar_projek'];
   		
   		if($FILE['name'] != NULL){
   			$format = ['image/jpeg','image/jpg','image/png'];
   			if(in_array($FILE['type'], $format)){
   				$data->gambar_projek = $this->update_gambar($id_portofolio);
   			}
   		}
   		$data->id_user = $this->input->post('id_user');
   		
   		$this->mpo->update($data, $id_portofolio);
   		redirect('Portofolio');
   	}

   	public function validasi_form()
   	{
   		$this->form_validation->set_rules('nama_projek', 'Nama Projek', 'required');
   		$this->form_validation->set_rules('deskripsi_projek', 'Deskripsi Projek', 'required');
   	}

   }

   /* End of file Portofolio.php */
	/* Location: ./application/controllers/Portofolio.php */