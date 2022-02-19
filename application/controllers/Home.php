<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct(){
		parent::__construct();
		// $this->load->model('front/categories_model');
		 $this->load->model('front/home_model');
		 $this->load->model('front/cms_model');
		$this->load->model('front/common_model');
	}

	public function index(){
        // echo "Coming Soon....";die;
 
		if(get_cookie('session_id') == ''){   
            $uniqueId = uniqid(rand(), TRUE);
            $cookie = array(
              'name'   => 'session_id',
              'value'  => md5($uniqueId),
               'expire' => time() + 172800,//'86500',
            );
            $this->input->set_cookie($cookie);
        } 
		$data = array('viewPage'=>'home/index','jsFiles'=>array('cms'),'pageTitle'=>'Wine','activeMenus'=>array('home'));
		$data['getBanner'] = $this->home_model->gerBanner(5);
		//print_r($data['getBanner']);die;
		$data['getTestiminials'] = $this->home_model->getTestiminials();
		$data['getAbout'] = $this->home_model->getAbout();
		$data['getServices'] = $this->db->order_by('ordering','asc')->get_where('category',array('activated'=>1,'category_type'=>'main'))->result();//$this->home_model->getServices();
		//print_r($data['getBanner']->title);die;
		//$data['getHowitsworks'] = $this->home_model->getHowitsworks();
		//$data['getProducts'] = $this->home_model->getProducts();
		$this->load->view('front/template/default',$data);
	}

    
    
    public function getService($param1 = ''){
      $data = array('viewPage'=>'cms/service','param1'=>$param1);
        $data['getCat'] = $this->db->get_where('category',array('alias'=>$param1))->row();
       // print_r($getCat);
       	$this->load->view('front/template/default',$data);
    }
	public function getAny($param1 = ''){

		
		if($this->session->userdata('id') && $param1 =='signup'){
			redirect('profile');
		}
		

		$checkPage = getPageDetailsByAlias($param1);
		if($checkPage){
			$data = array('viewPage'=>'cms/index','jsFiles'=>array('jquery.cookie','cms'),'param1'=>$param1,'details'=>$checkPage);
			$data['pageDetails'] = $this->cms_model->getDetails($param1);
          
			$page_type_id = $this->common_model->getPagesDetailsByAlias($param1,'id');
			//echo $page_type_id;die;
			$data['getBanner'] = $this->common_model->getBanner(array('type'=>$param1,'type_id'=>$page_type_id));
		//echo "<pre>"; print_r($data['getBanner']); die;
			$data['getSeo'] = $this->common_model->getSeo(array('type'=>$param1,'type_id'=>$page_type_id));

			if($param1 == 'faqs'){
				$data['faqs'] = $this->cms_model->getFaqs();

			} else if($param1 == 'contact-us'){
				$data['contact'] = $this->cms_model->getContact();
			}
			$this->load->view('front/template/default',$data);
		} else {
			$this->load->view('err404');
		}
	 
	}


	public function saveContactData(){
         $alldata = $this->input->post();
		
		
		$return = $this->cms_model->saveContact($alldata);
	
		echo json_encode($return);
	}


	public function saveEnquiryData(){
       $alldata = $this->input->post();
		$return = $this->cms_model->saveEnquiry($alldata);
	     echo json_encode($return);
	}

	public function logout(){
		$this->session->unset_userdata('id');
		$this->session->unset_userdata('email');
        $this->session->unset_userdata('role');
        $this->session->unset_userdata('name');
		redirect(base_url());
	}

	public function sendotp(){
		$data = $this->input->post();
		$return = $this->cms_model->sendotp($data);
		echo json_encode($return);
	}

	public function checkotp(){
		$data = $this->input->post();
		$return = $this->cms_model->checkotp($data);
		echo json_encode($return);
	}

	public function changeForgotPassword(){
		$data = $this->input->post();
		$return = $this->cms_model->changeForgotPassword($data);
		echo json_encode($return);
	}


	public function openStripeModal(){
		$data = array();
		$data['product_id'] = $this->input->post('id');
		$return['html'] = $this->load->view('front/ajax/openStripeModal',$data,true);
		$return['status'] = 1; 
		echo json_encode($return);
	}

	
}
?>