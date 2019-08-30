<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_biodata extends CI_Model {

	public function selectDivisi()
	{
		$this->db->select();
		$this->db->from('divisi');
		$query = $this->db->get();
		return $query->result_array();
	}

	public function insert($data)
	{
		$this->db->insert('biodata', $data);
	}

	public function selectBiodata($id)
	{
		$this->db->select();
		$this->db->from('biodata');
		$this->db->join('divisi', 'biodata.id_divisi = divisi.id_divisi');
		$this->db->where('biodata.id_user', $id);
		$this->db->limit(1);
		$query = $this->db->get();
		return $query;
	}

	public function update($data)
	{
		$this->db->where('id_biodata', $data['id_biodata']);
		$this->db->update('biodata', $data);
	}
}

/* End of file M_biodata.php */
/* Location: ./application/models/M_biodata.php */