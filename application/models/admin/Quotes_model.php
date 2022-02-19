<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quotes_model extends CI_Model {

	public function __construct(){
		parent::__construct();
	}

	public function getList($params = array(),$limit = array()){

		$admin_query = $this->db->query('SELECT demo_admin FROM user WHERE id = '.$this->session->userdata('user_id').'');
		$admin_result = $admin_query->row_array();

		$this->db->select('*');
		$this->db->from('quotes');
		
		
		if(isset($params['status']) && $params['status']){
			$this->db->where('quotes.status',$params['status']);	
		}

		if(isset($params['otp_verified']) && $params['otp_verified']){
			$this->db->where('quotes.otp_verified',$params['otp_verified']);	
		}
		if(isset($params['keyword']) && $params['keyword']){
			$this->db->where('(quotes.name LIKE "%'.$params['keyword'].'%" OR quotes.email LIKE "%'.$params['keyword'].'%")');	
		}

		if(isset($params['startEnd']) && $params['startEnd']){
			  $explode = explode('-', $params['startEnd']);
			  //print_r($explode)
			 // print_r($explode);die;
			  $starDate = $explode[0];
			  $endDate = $explode[1];
			   $st=date('Y-m-d',strtotime($starDate)).' 00:00:00';
			   $et=date('Y-m-d',strtotime($endDate)).' 23:59:00';
              $this->db->where('quotes.created >=',$st);
			  $this->db->where('quotes.created <=',$et);
		}

		if(isset($params['sortBy']) && $params['sortBy'] && isset($params['sortByField']) && $params['sortByField']){
			$this->db->order_by($params['sortByField'],$params['sortBy']);
		} else {
			$this->db->order_by('quotes.id','DESC');
		}

		if(array_key_exists("start",$limit) && array_key_exists("limit",$limit)){
			$this->db->limit($limit['limit'],$limit['start']);
		}elseif(!array_key_exists("start",$limit) && array_key_exists("limit",$limit)){
			$this->db->limit($limit['limit']);
		}

		$query = $this->db->get();
		//echo $this->db->last_query(); die;
		return ($query->num_rows() > 0)?$query->result():array();

	}



	public function statusChange($data=array()){

		$this->db->where('id',$data['id'])->update('quotes',array('status'=>$data['status']));
		return array('status'=>1,'msg'=>'Status changed successfully.');
	}

	public function deleteData($data=array()){

		if($data['ids']){
			$ids = explode(',', $data['ids']);
			$getData = $this->db->where_in('id',$ids)->get('user')->result();
			if($getData){
				foreach ($getData as $key => $value) {
					@unlink($value->profile);
				}
				
			}
			$this->db->where_in('id',$ids)->delete('user');
			return array('status'=>1,'msg'=>'Deleted successfully.');
		} else {
			return array('status'=>2,'msg'=>'Something went wrong,please try again later.');
		}
	}
}
?>