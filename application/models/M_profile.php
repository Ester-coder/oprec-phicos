<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_profile extends CI_Model {

	public function select($id)
	{
		$this->db->select();
		$this->db->from('publik_user');
		$this->db->where('id_user', $id);
		$this->db->limit(1);
		$query = $this->db->get();
		return $query->row();
	}	

	public function update($data)
	{
		$this->db->update('publik_user', $data);
	}

}

/* End of file M_profile.php */
/* Location: ./application/models/M_profile.php */