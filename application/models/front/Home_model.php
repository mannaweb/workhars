<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends CI_Model {
    function __construct() {

    }



    public function getHowitsworks(){
        return $this->db->select('*')->order_by('step','ASC')->where('deleted_at',NULL)->get_where('how_it_works',array('status'=>1))->result();
    }

    public function getTestiminials(){
        return $this->db->order_by('id','ASC')->where('deleted_at',NULL)->get_where('testimonials',array('status'=>1))->result();
    }


 





    public function gerBanner($type_id){
        $this->db->select('*');
        $this->db->from('banners');
         $this->db->where('type','home');
        $this->db->where('type_id',$type_id);
        $query = $this->db->get();
        return $query->result();
    }

     public function getAbout(){
        $this->db->select('*');
        $this->db->from('pages');
         $this->db->where('slug','about');
        $query = $this->db->get();
        return $query->row();
    }
   

    public function getServices(){
        $this->db->select('*');
        $this->db->from('services');
         $this->db->where('status',1);
          $this->db->where('deleted_at',NULL);
        $query = $this->db->get();
        return $query->result();
    }


    

    

     public function getPages(){
        $this->db->select('pages.*,banners.image,banners.title,banners.description as banner_description');
        $this->db->from('pages');
        $this->db->join('banners','banners.type_id=pages.id');
        $this->db->where('banners.type','pages');
        $this->db->where('pages.featured',1);
         $this->db->order_by('pages.ordering','ASC');
        $this->db->limit(3);
        $query = $this->db->get();
        return $query->result();
    }



  


   
}