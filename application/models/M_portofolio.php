<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_portofolio extends CI_Model {

	public function insert($data)
	{
		$this->db->insert('portofolio', $data);
	}

	public function selectById($id)
	{
		$this->db->select();
		$this->db->from('portofolio');
		$this->db->where('id_portofolio', $id);
		$this->db->limit(1);
		$query = $this->db->get();
		return $query->row();
	}
	public function select($id)
	{
		$this->db->select();
		$this->db->from('portofolio');
		$this->db->where('id_user', $id);
		$query = $this->db->get();
		return $query->result_array();
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