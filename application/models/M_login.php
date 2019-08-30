<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_login extends CI_Model {

	public function select($data)
	{
		$this->db->select();
		$this->db->from('publik_user');
		$this->db->where(['email'=>$data['email'],'password'=>$data['password']]);
		$this->db->limit(1);
		$query = $this->db->get();
		return $query;
	}	

}

/* End of file M_login.php */
/* Location: ./application/models/M_login.php */