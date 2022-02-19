<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model {

	public function __construct(){
		parent::__construct();
	}

	public function getUsersData(){
		$this->db->select('user.*');
		$this->db->from('user');
		$this->db->where('usertype','user');
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function getBlogsData(){
		$this->db->select('post.*');
		$this->db->from('post');
		$this->db->where('post_type','blog');
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function getAdminsData(){
		$this->db->select('user.*');
		$this->db->from('user');
		$this->db->where('usertype','admins');
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function getCategoriesData(){
		$this->db->select('category.*');
		$this->db->from('category');
		$this->db->where('category_type','main');
		$query = $this->db->get();
		return $query->num_rows();
	}
	public function getScategoriesData(){
		$this->db->select('category.*');
		$this->db->from('category');
		$this->db->where('category_type','sub');
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function getPagesData(){
		$this->db->select('pages.*');
		$this->db->from('pages');
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function getQuotesData(){
		$this->db->select('quotes.*');
		$this->db->from('quotes');
		$query = $this->db->get();
		return $query->num_rows();
	}
	public function getEmailsData(){
		$this->db->select('email.*');
		$this->db->from('email');
		$query = $this->db->get();
		return $query->num_rows();
	}
}
?>