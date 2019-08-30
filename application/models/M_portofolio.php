<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_portofolio extends CI_Model {

	public function insert($data)
	{
		$this->db->insert('portofolio', $data);
	}	
	public function update_nama_gambar($file)
	{
		$this->db->where('id_portofolio', $file->id);
		$this->db->update('portofolio', ['gambar_projek'=>
			$file->gambar_projek]);
	}
}

/* End of file M_portofolio.php */
/* Location: ./application/models/M_portofolio.php */