<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$urlPermission = array('dashboard');
		$userPermission = getUserDetails($this->session->userdata('user_id'),'role_manage');
		if(!$this->session->userdata('user_id')){
			redirect('admin/logout');
		} else if( in_array($this->uri->segment(2), $urlPermission) && (!is_array($userPermission) || !in_array($this->uri->segment(2), $userPermission)) ){
			redirect('admin/logout');
		}
		$this->load->model('admin/dashboard_model');
	}

	public function index(){

		$data = array('viewPage'=>'dashboard','pageTitle'=>'Dashboard','activeMenus'=>array('dashboard'));
		$data['users'] = $this->dashboard_model->getUsersData();
		$data['blogs'] = $this->dashboard_model->getBlogsData();
		$data['admins'] = $this->dashboard_model->getAdminsData();
		$data['categories'] = $this->dashboard_model->getCategoriesData();
		$data['subcategories'] = $this->dashboard_model->getScategoriesData();
		$data['pages'] = $this->dashboard_model->getPagesData();
		$data['quotes'] = $this->dashboard_model->getQuotesData();
		$data['emails'] = $this->dashboard_model->getEmailsData();
		$this->load->view('admin/template/default',$data);
	}
}
?>