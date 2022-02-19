<?php

defined('BASEPATH') OR exit('No direct script access allowed');



class Services extends CI_Controller {



	public function __construct(){

		parent::__construct();



		$urlPermission = array('services','add-service','edit-service');

		$userPermission = getUserDetails($this->session->userdata('user_id'),'role_manage');

		if(!$this->session->userdata('user_id')){

			redirect('admin/logout');

		} else if( in_array($this->uri->segment(2), $urlPermission) && (!is_array($userPermission) || !in_array($this->uri->segment(2), $userPermission)) ){

			redirect('admin/logout');

		}

		$this->load->library('Admin_ajax_pagination');

		$this->load->model('admin/services_model');

		$this->perPage = 10;

	}



	public function index(){



		$data = array('viewPage'=>'services/list','pageTitle'=>'Services','cssFiles'=>array('daterangepicker'),'jsFiles'=>array('services','moment.min','daterangepicker.min'),'activeMenus'=>array('all-services','services'));

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

        $totalRec = count($this->services_model->getList( $this->input->post() ));



        $config['base_url']    = base_url().'admin/service-search-data';

        $config['total_rows']  = $totalRec;

        $config['per_page']    = $this->perPage;

        $config['link_func']   = 'searchFilter';

        $this->admin_ajax_pagination->initialize($config);



		$data['services'] = $this->services_model->getList( $this->input->post(),array('start'=>$offset,'limit'=>$this->perPage) );



		$returnArr['html'] = $this->load->view('admin/services/ajax_list',$data,true);

		$returnArr['pagination'] = $this->load->view('admin/services/ajax_list_pagination',$data,true);

        echo json_encode($returnArr);



	}



	public function manage($id=''){

		

		$data = array('viewPage'=>'services/manage','jsFiles'=>array('services'));

		if($id){

			$data['pageTitle'] = 'Edit Service';

			$data['activeMenus'] = array('all-services','edit-service');

			$data['services'] = $this->services_model->getData($id);

		} else {

			$data['pageTitle'] = 'Add Service';

			$data['activeMenus'] = array('all-services','add-service');

			$data['services'] = array();

		}

		$this->load->view('admin/template/default',$data);

	}



	public function saveData(){



		$data = $this->input->post();
         //print_r($data);die;
		$uploadFile = $this->doUpload($_FILES,$data['user_image']);



		if($uploadFile['status'] == 1){

			$data['user_image'] = ($uploadFile['user_image'])?$uploadFile['user_image']:$data['user_image'];

			$return = $this->services_model->saveData($data);

		}else{

			$return = $uploadFile;

		}

		echo json_encode($return);

	}





	public function doUpload($FILES,$user_image){



		if($FILES['image']['name']){



			$config['upload_path']          = 'uploads/services';



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

				@unlink($user_image);

				return array('status'=>1,'user_image'=>$config['upload_path'].'/' . $this->upload->data()['file_name']);

			}

		} else {



			return array('status'=>1,'user_image'=>'');

		}



	}



	public function statusChange(){



		$return = $this->services_model->statusChange($this->input->post());

		echo json_encode($return);

	}







	public function deleteData(){



		$return = $this->services_model->deleteData($this->input->post());

		echo json_encode($return);

	}



	





}

?>