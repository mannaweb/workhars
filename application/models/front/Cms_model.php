<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cms_model extends CI_Model {

	public function __construct(){
		parent::__construct();
	}

	public function getDetails($alias=''){		
		$this->db->select('title,description');
		$this->db->from('pages');
		$this->db->where('slug',$alias);
		$query = $this->db->get();
		$data = $query->row();
		return $data;
	}

	

	public function getFaqs($params = array()){
		
		$this->db->select('*');
		$this->db->from('faqs');
		$this->db->where('status',1);
		$this->db->where('deleted_at',NULL);
		$this->db->order_by('ordering','ASC');
		$query = $this->db->get();
		$data = $query->result();
		return $data;
	}


		public function saveData($alldata=array()){
		//echo "<pre>"; print_r($alldata); die;
		
         
         $get_user = $this->db->get_where('user',array('email'=>$alldata['email'],'password'=>md5($alldata['password'])))->row();
        if($get_user){
        	$exp = explode(',', $get_user->usertype);
        }else{
        	$exp = array();
        }
       // print_r($exp);die;
        
         if(in_array('user',$exp)){
            $login_data = $this->db->get_where('user', array('email' =>$alldata['email'],'password' =>md5($alldata['password'])))->row();
          }else{
        	$login_data = array();
        }

		if(isset($login_data) && !empty($login_data)){
			
				if($login_data->email_activated == 1){
					$this->session->set_userdata('id',$login_data->id);
					$this->session->set_userdata('name',$login_data->name);
					return array('status'=>1,'message'=>'Successfully Logged In!');
				}else{
					return array('status'=>2,'message'=>"Your account not activated.");
				}
			

		}else{
			return array('status'=>2,'message'=>'Invalid Username or Password');
		}

	}




	public function saveSignupData($data=array()){

		      
		        // echo '<pre>';print_r($allAdmin);die;
		$data['name'] = $data['firstname'].' '.$data['lastname'];
		$data['password'] = md5($data['password']);
		$data['created_date'] = date('Y-m-d H:i:s');
		$hash_number = md5(rand(100,10000));
		$data['activation_code'] = $hash_number;
		$data['usertype'] = 'user';
		
		$data['activated'] = 2;
		$data['email_activated'] = 2;
		$userData = $this->db->get_where('user', array('email'=>$data['email']))->row();
		if($userData){
			$inserData = $this->db->where('id',$userData->id)->update('user',$data);
			$lastID = $userData->id;
		}else{
			$inserData = $this->db->insert('user',$data);
			$lastID = $this->db->insert_id();
		}
		
		
		if($inserData){

			$getUserEmailTemplate = $this->db->get_where('email',array('code'=>'frontend-user-signup','email_for'=>'user','status'=>1))->row();
			if($getUserEmailTemplate){

				$pattern = array('{USER_NAME}','{LINK}','{FULL_LINK}');
				$replacement = array($data['name'],base_url()."user/activate/".$hash_number,base_url()."user/activate/".$hash_number);
				$body = str_replace($pattern,$replacement,$getUserEmailTemplate->content);

				$this->email->from($getUserEmailTemplate->from_email,$getUserEmailTemplate->from_name);
				$this->email->to($data['email']);
				$this->email->set_mailtype('html');
				$this->email->subject($getUserEmailTemplate->subject);
				$this->email->message($body);
				$mail = $this->email->send();
			}

			// $getAdministratorEmailTemplate = $this->db->get_where('email',array('code'=>'frontend-user-signup','email_for'=>'administrator','status'=>1))->row();
			// if($getAdministratorEmailTemplate){

			// 	 $this->db->select('user.*');
		 //         $this->db->from('user');
		 //         $this->db->where("FIND_IN_SET('admins',user.usertype) !=", 0);
		 //         $this->db->where("get_email",1);
		 //         $query = $this->db->get();
		 //         $allAdmin = $query->result();

			// 	if($allAdmin){
			// 		foreach ($allAdmin as $key => $value) {
			// 			$receiver_email = $value->email;
			// 			$pattern = array('{USER_NAME}','{USER_EMAIL}');
			// 			$replacement = array($data['name'],$data['email'],$data['name']);
			// 			$body = str_replace($pattern,$replacement,$getAdministratorEmailTemplate->content);

			// 			$this->email->from($getAdministratorEmailTemplate->from_email,$getAdministratorEmailTemplate->from_name);
			// 			//$this->email->to($getAdministratorEmailTemplate->to_email);
			// 			$this->email->to($receiver_email);
			// 			if($getAdministratorEmailTemplate->cc_email){
			// 				$this->email->cc($getAdministratorEmailTemplate->cc_email);
			// 			}
			// 			$this->email->set_mailtype('html');
			// 			$this->email->subject($getAdministratorEmailTemplate->subject);
			// 			$this->email->message($body);
			// 			$mail = $this->email->send();
			// 		}
			// 	}
			// }

			return array('status'=>1,'message'=>'Thanks for signing up, We sent you a account verification link in your registered email address');
		}else{
			return array('status'=>2,'message'=>'Signup failed,please try again.');	
		}
	}

public function emailCheck($where=array()){

		$checkemail = $this->db->get_where('user',$where)->row();
		if($checkemail && ($checkemail->email_activated == 1)){
			return array('status'=>2,'message'=>'Email already exists.');
		} else {
			return array('status'=>1);
		}
	}




	public function SaveContact($data=array()){

		unset($data['g-recaptcha-response']);
		$data['created_at'] = date('Y-m-d H:i:s');
		$data['name'] = $data['name'];
		
		$inserData = $this->db->insert('contact',$data);
         //echo 'hi';die;
		if($inserData){
			$getAdministratorEmailTemplate = $this->db->get_where('email',array('code'=>'frontend-contact-us','email_for'=>'admins','status'=>1))->row();
			$admin = $this->db->get_where('user', array('id'=>1))->row();
			if($getAdministratorEmailTemplate){

				$pattern = array('{NAME}','{EMAIL}','{SUBJECT}','{MESSAGE}');
				$replacement = array($data['name'],$data['email'],$data['subject'],$data['message']);
				$body = str_replace($pattern,$replacement,$getAdministratorEmailTemplate->content);

				$this->email->from($getAdministratorEmailTemplate->from_email,$getAdministratorEmailTemplate->from_name);
				$this->email->to($admin->email);
				if($getAdministratorEmailTemplate->cc_email){
					$this->email->cc($getAdministratorEmailTemplate->cc_email);
				}
				$this->email->set_mailtype('html');
				$this->email->subject($getAdministratorEmailTemplate->subject);
				$this->email->message($body);
				$mail = $this->email->send();
			}

			$getUserEmailTemplate = $this->db->get_where('email',array('code'=>'frontend-contact-us','email_for'=>'user','status'=>1))->row();
             //print_r($getUserEmailTemplate);die;
			if($getUserEmailTemplate){

				$pattern = array('{USER_NAME}');
				$replacement = array($data['name']);
				$body = str_replace($pattern,$replacement,$getUserEmailTemplate->content);

				$this->email->from($getUserEmailTemplate->from_email,$getUserEmailTemplate->from_name);
				$this->email->to($data['email']);
				if($getUserEmailTemplate->cc_email){
					$this->email->cc($getUserEmailTemplate->cc_email);
				}
				$this->email->set_mailtype('html');
				$this->email->subject($getUserEmailTemplate->subject);
				$this->email->message($body);
				$mail = $this->email->send();
			}

			return array('status'=>1,'message'=> 'Data send successfully');
		}else{
			return array('status'=>2,'message'=>'Something is wrong. Please try again.');
		}
	}


	public function forgotpasswordMail($data=array()){
		$token_number = mt_rand();
		$token =md5($token_number);
		$get_user = $this->db->get_where('user',array('email'=>$data['email']))->row();
		if($get_user){
			$exp = explode(',', $get_user->usertype);
		}else{
			$exp = array();
		}
		if(in_array('user',$exp) && in_array('admins',$exp)){
            $chk_data = $this->db->get_where('user',array('email'=>$data['email']))->row();
		}else if(in_array('user',$exp)){
            $chk_data = $this->db->get_where('user',array('email'=>$data['email']))->row();
		}else{
            $chk_data = array();
		}

		if(!empty($chk_data)){
			$data_array=array(
				'user_id' =>$chk_data->id,
				'token' =>$token,
				'created_date' =>date('Y-m-d H:i:s')
			);
			$result = $this->db->insert('forget_password',$data_array);
			if($result){
				$getUserEmailTemplate = $this->db->get_where('email',array('code'=>'frontend-forgot-password','email_for'=>'user','status'=>1))->row();
				if($getUserEmailTemplate){

					$pattern = array('{USER_NAME}','{LINK}');
					$replacement = array($chk_data->name,base_url()."reset/password/".$token);
					$body = str_replace($pattern,$replacement,$getUserEmailTemplate->content);

					$this->email->from($getUserEmailTemplate->from_email,$getUserEmailTemplate->from_name);
					$this->email->to($data['email']);
					$this->email->set_mailtype('html');
					$this->email->subject($getUserEmailTemplate->subject);
					$this->email->message($body);
					$mail = $this->email->send();
					//echo $this->email->print_debugger();
				}
				return array('status'=>1,'message'=>'An email has been sent to your mail. Please check');
			}else{
				return array('status'=>2,'message'=>'Somethings is wrong. Please try again');
			}
		}else{
			return array('status'=>2,'message'=>'Oh no! That email isn’t registered with our site.Please try another email.');
		}
	}
	


	public function saveForgotData($data=array()){
        $this->db->where('id',$data['id']);
        $res=$this->db->update('user',array('password' =>md5($data['password'])));
        if($res){
        	return array('status'=>1,'message'=>'Password change successfully done.');
        }else{
           return array('status'=>2,'message'=>'Somethings is wrong. Please try again.');
        }
	}
		


    
}
?>