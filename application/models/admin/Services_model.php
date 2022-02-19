<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Services_model extends CI_Model {

	public function __construct(){
		parent::__construct();
	}

	public function getList($params = array(),$limit = array()){

		$this->db->select('*');
		$this->db->from('services');
		$this->db->where('services.deleted_at',NULL);
		if(isset($params['status']) && $params['status']){
			$this->db->where('services.status',$params['status']);	
		}

		if(isset($params['type']) && $params['type']){
			$this->db->where('services.type',$params['type']);	
		}

		if(isset($params['keyword']) && $params['keyword']){
			$this->db->where('(services.name LIKE "%'.$params['keyword'].'%")');	
		}

		if(isset($params['startEnd']) && $params['startEnd']){
			//echo 'hi';die;
			  $explode = explode('-', $params['startEnd']);
			  $starDate = $explode[0];
			  $endDate = $explode[1];
			   $st=date('Y-m-d',strtotime($starDate)).' 00:00:00';
			   $et=date('Y-m-d',strtotime($endDate)).' 23:59:00';
              $this->db->where('services.created_at >=',$st);
			  $this->db->where('services.created_at <=',$et);
		}

		

		if(isset($params['sortBy']) && $params['sortBy'] && isset($params['sortByField']) && $params['sortByField']){
			$this->db->order_by($params['sortByField'],$params['sortBy']);
		} else {
			$this->db->order_by('services.id','DESC');
		}

		if(array_key_exists("start",$limit) && array_key_exists("limit",$limit)){
			$this->db->limit($limit['limit'],$limit['start']);
		}elseif(!array_key_exists("start",$limit) && array_key_exists("limit",$limit)){
			$this->db->limit($limit['limit']);
		}

		$query = $this->db->get();
		// echo $this->db->last_query();die();
		return ($query->num_rows() > 0)?$query->result():array();

	}

	public function getData($id=''){

		return $this->db->get_where('services',array('id'=>$id))->row();
	}

	public function saveData($data=array()){
		if($data['id']){

			$id = $data['id'];			
			unset($data['id']);

			$data['modified_by'] = $this->session->userdata('user_id');
			$this->db->where('id',$id)->update('services',$data);
		} else {
			$data['created_by'] = $this->session->userdata('user_id');
			$this->db->insert('services',$data);
		}

		return array('status'=>1,'msg'=>'Data successfully saved');
	}

	
	public function statusChange($data=array()){
		$this->db->where('id',$data['id'])->update('services',array('status'=>$data['status']));
		return array('status'=>1,'msg'=>'Status changed successfully.');
	}

	public function deleteData($data=array()){

		if($data['ids']){
			$ids = explode(',', $data['ids']);
			if($data['status'] == 3 ){			
				$getData = $this->db->where_in('id',$ids)->get('services')->result();
				if($getData){
					foreach ($getData as $key => $value) {
						@unlink($value->logo);
					}

				}
				$this->db->where_in('id',$ids)->delete('services');
				return array('status'=>1,'msg'=>'Deleted successfully.');

			}else{
				$this->db->where_in('id',$ids)->update('services',array('status'=>3,'deleted_at'=>date('Y-m-d H:i:s'),'deleted_by'=>$this->session->userdata('user_id')));
				return array('status'=>1,'msg'=>'Deleted successfully.');
			}
		} else {
			return array('status'=>2,'msg'=>'Something went wrong,please try again later.');
		}
	}

	

}
?>