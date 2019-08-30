<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pendaftaran extends CI_Model {

	public function insert($data)
	{
		$this->db->insert('publik_user', $data);
	}	

}

/* End of file M_pendaftaran.php */
/* Location: ./application/models/M_pendaftaran.php */