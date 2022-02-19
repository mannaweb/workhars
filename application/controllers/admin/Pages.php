<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {

	public function __construct(){
		parent::__construct();

		$urlPermission = array('pages','add-page','edit-page');
		$userPermission = getUserDetails($this->session->userdata('user_id'),'role_manage');
		if(!$this->session->userdata('user_id')){
			redirect('admin/logout');
		} else if( in_array($this->uri->segment(2), $urlPermission) && (!is_array($userPermission) || !in_array($this->uri->segment(2), $userPermission)) ){
			redirect('admin/logout');
		}
		$this->load->library('Admin_ajax_pagination');
		$this->load->model('admin/pages_model');
		$this->perPage = 10;
	}

	public function index(){

		$data = array('viewPage'=>'pages/list','pageTitle'=>'Pages','jsFiles'=>array('pages','moment.min','daterangepicker.min'),'cssFiles'=>array('daterangepicker'),'activeMenus'=>array('all-pages','pages'));
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

        $this->perPage = $this->input->post('perPage');
        $totalRec = count($this->pages_model->getList( $this->input->post() ));

        $config['base_url']    = base_url().'admin/page-search-data';
        $config['total_rows']  = $totalRec;
        $config['per_page']    = $this->perPage;
        $config['link_func']   = 'searchFilter';
        $this->admin_ajax_pagination->initialize($config);

		$data['pages'] = $this->pages_model->getList( $this->input->post(),array('start'=>$offset,'limit'=>$this->perPage) );

		$returnArr['html'] = $this->load->view('admin/pages/ajax_list',$data,true);
		$returnArr['pagination'] = $this->load->view('admin/pages/ajax_list_pagination',$data,true);
        echo json_encode($returnArr);

	}

	public function managePage($alias=''){
		$data = array('viewPage'=>'pages/manage','jsFiles'=>array('pages'));
		
		if($alias){
			$data['pageTitle'] = 'Edit Page';
			$data['activeMenus'] = array('all-pages','edit-page');
			$data['pages'] = $this->pages_model->getData($alias);
		} else {
			$data['pageTitle'] = 'Add Page';
			$data['activeMenus'] = array('all-pages','add-page');
			$data['pages'] = array();
		}
		$this->load->view('admin/template/default',$data);
	}

	public function AliasManage(){
		$all_data = $this->input->post();
		$alias = $this->format_uri($all_data['title']);
		$return['alias'] = $alias;

		echo json_encode($return);        
	}

	public function saveData(){

		$data = $this->input->post();		
		$uploadFile = $this->doUpload($_FILES,$data['logo']);

		if($uploadFile['status'] == 1){
			$data['logo'] = ($uploadFile['logo'])?$uploadFile['logo']:$data['logo'];
			if($data['id']){
				$data['modified_by'] = $this->session->userdata('user_id');
				$alaisCheckWhere = array('id != '=>$data['id'],'slug'=>$data['slug']);
			}else{
				$data['created_by'] = $this->session->userdata('user_id');
				$alaisCheckWhere = array('slug'=>$data['slug']);
			}
			$aliasCheck = $this->pages_model->aliasCheck($alaisCheckWhere);
			if($aliasCheck['status'] == 1){
				$return = $this->pages_model->saveData($data);
			}else{
				$return = $aliasCheck;
			}
		}else{
			$return = $uploadFile;
		}

		echo json_encode($return);
	}


		public function doUpload($FILES,$logo){

		if($FILES['image']['name']){

			$config['upload_path']          = 'uploads/pages';

			if(!is_dir($config['upload_path'])){
				mkdir($config['upload_path'],0777,TRUE);
			}

			$config['allowed_types']        = 'gif|jpg|png|jpeg';
			$config['max_size']             = 10000;
			$config['max_width']            = 20000;
			$config['max_height']           = 10000;
			$config['file_name'] 			= time().$FILES['image']['name'];

			$this->load->library('upload', $config);

			if ( ! $this->upload->do_upload('image')){
				return array('status'=>2,'msg'=>$this->upload->display_errors()); 
			}else{
				@unlink($logo);
				return array('status'=>1,'logo'=>$config['upload_path'].'/' . $this->upload->data()['file_name']);
			}
		} else {

			return array('status'=>1,'logo'=>'');
		}

	}


	public function statusChange(){

		$return = $this->pages_model->statusChange($this->input->post());
		echo json_encode($return);
	}

	public function changeFeaturedPage(){
		$return = $this->pages_model->changeFeaturedPage($this->input->post());
		echo json_encode($return);
	}



	public function deleteData(){

		$return = $this->pages_model->deleteData($this->input->post());
		echo json_encode($return);
	}

	function format_uri( $string, $separator = '-' ){
        $accents_regex = '~&([a-z]{1,2})(?:acute|cedil|circ|grave|lig|orn|ring|slash|th|tilde|uml);~i';
        $special_cases = array( '&' => 'and', "'" => '');
        $string = mb_strtolower( trim( $string ), 'UTF-8' );
        $string = str_replace( array_keys($special_cases), array_values( $special_cases), $string );
        $string = preg_replace( $accents_regex, '$1', htmlentities( $string, ENT_QUOTES, 'UTF-8' ) );
        $string = preg_replace("/[^a-z0-9]/u", "$separator", $string);
        $string = preg_replace("/[$separator]+/u", "$separator", $string);
        return $string;
    }

}
?>