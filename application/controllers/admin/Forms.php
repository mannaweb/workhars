<?php

defined('BASEPATH') OR exit('No direct script access allowed');



class Forms extends CI_Controller {



	public function __construct(){

		parent::__construct();



		$urlPermission = array('forms','add-form','edit-form');

		$userPermission = getUserDetails($this->session->userdata('user_id'),'role_manage');

		if(!$this->session->userdata('user_id')){

			redirect('admin/logout');

		} else if( in_array($this->uri->segment(2), $urlPermission) && (!is_array($userPermission) || !in_array($this->uri->segment(2), $userPermission)) ){

			redirect('admin/logout');

		}

		$this->load->library('Admin_ajax_pagination');

		$this->load->model('admin/forms_model');

		$this->perPage = 10;

	}



	public function index(){



		$data = array('viewPage'=>'forms/list','pageTitle'=>'forms','cssFiles'=>array('daterangepicker'),'jsFiles'=>array('forms','moment.min','daterangepicker.min'),'activeMenus'=>array('all-forms','forms'));

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

        $totalRec = count($this->forms_model->getList( $this->input->post() ));



        $config['base_url']    = base_url().'admin/form-search-data';

        $config['total_rows']  = $totalRec;

        $config['per_page']    = $this->perPage;

        $config['link_func']   = 'searchFilter';

        $this->admin_ajax_pagination->initialize($config);



		$data['forms'] = $this->forms_model->getList( $this->input->post(),array('start'=>$offset,'limit'=>$this->perPage) );



		$returnArr['html'] = $this->load->view('admin/forms/ajax_list',$data,true);

		$returnArr['pagination'] = $this->load->view('admin/forms/ajax_list_pagination',$data,true);

        echo json_encode($returnArr);



	}



	public function manage($id=''){

		

		$data = array('viewPage'=>'forms/manage','jsFiles'=>array('forms'));

		if($id){

			$data['pageTitle'] = 'Edit form';

			$data['activeMenus'] = array('all-forms','edit-form');

			$data['forms'] = $this->forms_model->getData($id);

		} else {

			$data['pageTitle'] = 'Add form';

			$data['activeMenus'] = array('all-forms','add-form');

			$data['forms'] = array();

		}

		$this->load->view('admin/template/default',$data);

	}



	public function saveData(){



		$data = $this->input->post();
         //print_r($data);die;
		$uploadFile = $this->doUpload($_FILES,$data['doc']);



		if($uploadFile['status'] == 1){

			$data['doc'] = ($uploadFile['doc'])?$uploadFile['doc']:$data['doc'];

			$return = $this->forms_model->saveData($data);

		}else{

			$return = $uploadFile;

		}

		echo json_encode($return);

	}





	public function doUpload($FILES,$user_image){



		if($FILES['new_doc']['name']){



			$config['upload_path']          = 'uploads/forms';



			if(!is_dir($config['upload_path'])){

				mkdir($config['upload_path'],0777,TRUE);

			}



			$config['allowed_types']        = 'pdf|doc|docx';

			$config['max_size']             = 50000;

			//$config['max_width']            = 20000;

			//$config['max_height']           = 10000;

			$config['file_name'] 			= time().$FILES['new_doc']['name'];



			$this->load->library('upload', $config);



			if ( ! $this->upload->do_upload('new_doc')){

				return array('status'=>2,'msg'=>$this->upload->display_errors()); 

			}else{

				@unlink($user_image);

				return array('status'=>1,'doc'=>$config['upload_path'].'/' . $this->upload->data()['file_name']);

			}

		} else {



			return array('status'=>1,'doc'=>'');

		}



	}



	public function statusChange(){



		$return = $this->forms_model->statusChange($this->input->post());

		echo json_encode($return);

	}







	public function deleteData(){



		$return = $this->forms_model->deleteData($this->input->post());

		echo json_encode($return);

	}



	





}

?>