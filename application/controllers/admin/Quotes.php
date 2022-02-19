<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quotes extends CI_Controller {

	public function __construct(){
		parent::__construct();

		$urlPermission = array('quotes','add-quote','edit-quote');
		$userPermission = getUserDetails($this->session->userdata('user_id'),'role_manage');
		if(!$this->session->userdata('user_id')){
			redirect('admin/logout');
		} else if( in_array($this->uri->segment(2), $urlPermission) &&  ( !is_array($userPermission) || !in_array($this->uri->segment(2), $userPermission)) ){
			redirect('admin/logout');
		}
		$this->load->library('Admin_ajax_pagination');
		$this->load->model('admin/quotes_model');
		$this->perPage = 10;
	}

	public function index(){

		$data = array('viewPage'=>'quotes/list','pageTitle'=>'Quotes','jsFiles'=>array('quotes','moment.min','daterangepicker.min'),'cssFiles'=>array('daterangepicker'),'activeMenus'=>array('all-quotes','quotes'));
		$this->load->view('admin/template/default',$data);
	}

	public function ajaxPaginationSearch(){

        $returnArr = array();
		$page = $this->input->post('page');
        if(!$page){
            $offset = 0;
        }else{
            $offset = $page;
        }

        $totalRec = count($this->quotes_model->getList($this->input->post()));

        $this->perPage = $this->input->post('perPage');
        $config['base_url']    = base_url().'admin/quote-search-data';
        $config['total_rows']  = $totalRec;
        $config['per_page']    = $this->perPage;
        $config['link_func']   = 'searchFilter';
        $this->admin_ajax_pagination->initialize($config);

		$data['quotes'] = $this->quotes_model->getList($this->input->post(),array('start'=>$offset,'limit'=>$this->perPage));
		//echo "<pre>"; print_r($data['vendors']); die;

		$returnArr['html'] = $this->load->view('admin/quotes/ajax_list',$data,true);
		$returnArr['pagination'] = $this->load->view('admin/quotes/ajax_list_pagination',$data,true);
        echo json_encode($returnArr);

	}

	
	public function statusChange(){

		$return = $this->quotes_model->statusChange($this->input->post());
		echo json_encode($return);
	}

	

}
?>