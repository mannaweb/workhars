<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Appointment extends CI_Controller {

	public function __construct(){
		parent::__construct();
		//$this->load->model('front/categories_model');
		//$this->load->model('front/appointment_model');
		//$this->load->library('front_ajax_pagination');
		$this->perPage = 15;
	}

	public function saveAppointmentData(){
		
	 $data = $this->input->post();
	 $ref = 'REF'.rand(11111,99999).date('Ymdhis');
	 $data['ref'] = $ref;
	 $data['created'] = date('Y-m-d h:i:s');
	 
	 $data['dop']= date('Y-m-d h:i:s',strtotime($data['dop']));
	 $insert_id= $this->db->insert('quotes',$data);
	 $return = array('status'=>1,'insert_id'=>$insert_id,'message'=> 'Success submit your details.Your reference id '.$ref);
	 echo json_encode($return);
	}


	public function getPro(){
		 $data = $this->input->post();
		// print_r($data);die;
	     $data['getService'] = $this->db->order_by('ordering','ASC')->get_where('services',array('type'=>'Product','status'=>1,'category_id'=>$data['val']))->result();
	      $data['getpro'] = $this->db->order_by('ordering','ASC')->get_where('services',array('type'=>'Service','status'=>1,'category_id'=>$data['val']))->result();
	       $return['html'] = $this->load->view('front/ajax/select',$data,true);
		  $return['html2'] = $this->load->view('front/ajax/service',$data,true);
           echo json_encode($return);
	}


	public function saveReview(){
		$data = $this->input->post();
		 $this->db->insert('testimonials',array('name'=>$data['tname'],'user_image'=>'uploads/testimonials/1595842260default_profile.png','location'=>$data['tlocation'],'description'=>$data['tmsg']));
	}


// public function saveOtp(){
// 	 $data = $this->input->post();
// 	 $getData = $this->db->get_where('quotes',array('id'=>$data['insert_id'],'otp'=>$data['otp']))->row();
// 	 if(isset($getData)){
// 	 	$verified = array('otp_verified'=>1);
// 	 	$this->db->where('id',$data['insert_id']);
// 	 	$this->db->update('quotes',$verified);

	 	

// 			$getAdminEmailTemplate = $this->db->get_where('email',array('code'=>'frontend-appointment','email_for'=>'admins','status'=>1))->row();
//              //print_r($getUserEmailTemplate);die;
// 			$getService = $this->db->get_where('services',array('status'=>1,'id'=>$getData->service_id))->row();
// 			//print_r(expression)
// 			$service = $getService->name.'-'.$getService->price.'/- Rs';
// 			$admin = $this->db->get_where('user',array('id'=>1))->row();
// 			if($getAdminEmailTemplate){
//                 $json_decode = json_decode($getData->car);
//                 foreach ($json_decode as $key => $value) {
//                   $makemodel[] = $value->make.' '.$value->model.'<br>';
//                 }
//                 if($getData->type == 1){
//                 	$type = 'Apartment';
//                 }else{
//                 	$type = 'Individual';
//                 }
//                 $imp = implode(',', $makemodel);
// 				$pattern = array('{NAME}','{PHONE}','{TYPE}','{CAR}','{SERVICE}','{Address}');
// 				$replacement = array($getData->name,$getData->phone,$type,$imp,$service,$getData->address);
// 				$body = str_replace($pattern,$replacement,$getAdminEmailTemplate->content);

// 				$this->email->from($getAdminEmailTemplate->from_email,$getAdminEmailTemplate->from_name);
// 				$this->email->to($admin->email);
// 				if($getAdminEmailTemplate->cc_email){
// 					$this->email->cc($getAdminEmailTemplate->cc_email);
// 				}
// 				$this->email->set_mailtype('html');
// 				$this->email->subject($getAdminEmailTemplate->subject);
// 				$this->email->message($body);
// 				$mail = $this->email->send();
// 			}

// 	 	$return = array('status'=>1,'message'=> 'Your Appointment has been booked.');
	 
// 	 }else{
// 	$return = array('status'=>2,'message'=> 'Invalid OTP');
// 	 }
// 	   echo json_encode($return);

// 	 }


	 // function openurl($url) {
  //   $curl = curl_init();
  //   curl_setopt_array($curl, array(
  //     CURLOPT_PORT => "8080",
  //     CURLOPT_URL => $url,
  //     CURLOPT_RETURNTRANSFER => true,
  //     CURLOPT_ENCODING => "",
  //     CURLOPT_MAXREDIRS => 10,
  //     CURLOPT_TIMEOUT => 30,
  //     CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  //     CURLOPT_CUSTOMREQUEST => "GET",
  //     CURLOPT_HTTPHEADER => array(
  //       "cache-control: no-cache",
  //       "postman-token: dfe21bd9-2b24-1eca-3300-12465ca81a45"
  //     ),
  //   ));

  //   $response = curl_exec($curl);
  //   $err = curl_error($curl);

  //   curl_close($curl);
  //   if ($err) {
  //    // echo "cURL Error #:" . $err;
  //   } else {
  //     //echo $response;
  //   }
   
  // }

}


?>