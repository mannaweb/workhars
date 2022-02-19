  <div class="hero-wrap">
      <div class="home-slider owl-carousel">
      
         <?php foreach ($getBanner as $key => $value) { ?>
          
        <div class="slider-item" style="background-image:url(<?php echo getBannerImage($value->id,'image'); ?>);">
          <div class="overlay"></div>
          <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-start">
              <div class="col-md-6 ftco-animate">
                <div class="text w-100">
                  <h2><?php echo $value->title; ?></h2>
                  <h1 class="mb-4"><?php echo $value->description; ?></h1>
                  <p><a href="#enquiryForm" class="btn btn-primary">Book an appointment</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>

   <?php } ?>
      
      </div>
    </div>
    
<!--     <section class="intro">
      <div class="container intro-wrap">
        <div class="row no-gutters">
          <div class="col-md-12 col-lg-9 bg-intro d-sm-flex align-items-center align-items-stretch">
            <div class="intro-box d-flex align-items-center">
              <div class="icon d-flex align-items-center justify-content-center">
                <i class="flaticon-repair"></i>
              </div>
              <h2 class="mb-0">Are you ready? <span>Let's repair it now!</span></h2>
            </div>
            <a href="#enquiryForm" class="bg-primary btn-custom d-flex align-items-center"><span>Book an Appointment</span></a>
          </div>
        </div>
      </div>  
    </section> -->


        <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb img" style="background-image: url('https://www.howellsac.com/hubfs/When%20should%20I%20start%20my%20AC.jpg');" id="enquiryForm">
      <div class="overlay"></div>
      <div class="container">
        <div class="row d-md-flex justify-content-end">
          <div class="col-md-12 col-lg-6 half p-3 py-5 pl-lg-5 ftco-animate heading-section heading-section-white">
            <span class="subheading">Filling in a form</span>
            <h2 class="mb-4">Booking an Appointment</h2>
            <form action="javascript:void(0);" class="appointment" id="appointment">
              <div class="row">
                 <div class="col-md-12">
                <div class="form-group">
                  <select class="form-control validate" data-validate-msg="Product field is required" name="service_id" onchange="getProduct(this.value)" id="pro_id">
                    <option value="">Select Product</option>
                    <?php foreach ($getServices as $key => $value) { ?>
                       <option value="<?php echo $value->id; ?>" <?php if($this->input->get('product') == $value->id){ echo 'selected';} ?>><?php echo $value->name; ?></option>
                      <?php } ?>
                  </select>
                </div>
              </div>

               <div class="col-md-12">
                <div class="form-group">
                  <select class="form-control validate" data-validate-msg="product type field is required" name="product_type" id="productType">
                    <option value="">Product Type</option>
                   
                  </select>
                </div>
              </div>

               <div class="col-md-12">
                <div class="form-group">
                  <select class="form-control validate" data-validate-msg="service type field is required" name="service_type" id="serviceType">
                    <option value="">Service Type</option>
                   
                  </select>
                </div>
              </div>

              <div class="col-md-12">
                <div class="form-group">
                  <select class="form-control validate" data-validate-msg="city field is required" name="city" id="city">
                    <option value="">Select City</option>
                    <?php $getCity = $this->db->get_where('cities',array('city_state'=>'West Bengal'))->result();
                    foreach ($getCity as $key => $value) {?>
                    <option value="<?php echo $value->city_name; ?>"><?php echo $value->city_name; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>

             

               <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control validate" name="warrenty" placeholder="Warrenty" data-validate-msg="Warrenty field is required">
                </div>
              </div>

               <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control validate" name="dop" id="datepicker" placeholder="Date Of purchase" data-validate-msg="date field is required">
                </div>
              </div>

              <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control validate" name="name" placeholder="Full Name" data-validate-msg="Name field is required">
                </div>
              </div>
            
              <div class="col-md-6">
                <div class="form-group">
                  <input type="number" class="form-control validate" id="phone"  name="phone" placeholder="Phone Number" data-validate-msg="Phone field is required">
                </div>
              </div>

              <div class="col-md-6">
                <div class="form-group">
                  <input type="number" class="form-control" id="altphone"  name="alt_phone" placeholder="Alt Phone Number" data-validate-msg="A field is required">
                </div>
              </div>
             
               <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control validate" id="email"  name="email" placeholder="Email" data-validate-msg="Email field is required">
                </div>
              </div>

               <div class="col-md-12">
                <div class="form-group">
                  <input type="text" class="form-control" id="doorno"  name="door_no" placeholder="Flat/Door/Bulding no" data-validate-msg="Flat/Door/Bulding no field is required">
                </div>
              </div>

            
              <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control validate" id="street"  name="street" placeholder="Street" data-validate-msg="street field is required">
                </div>
              </div>

              <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control validate" id="district"  name="dist" placeholder="District" data-validate-msg="district field is required">
                </div>
              </div>

              <div class="col-md-12">
                <div class="form-group">
                  <textarea name="area" id="" cols="30" rows="7" class="form-control validate" data-validate-msg="Address field is required" placeholder="Area"></textarea>
                </div>
              </div>
              

              <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control" id="railway"  name="railway" placeholder="Nearest Railway Station" data-validate-msg="railway  field is required">
                </div>
              </div>

               <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control validate" id="pincode"  name="pincode" placeholder="Pin code" data-validate-msg="district field is required">
                </div>
              </div>


               <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control" id="landmark"  name="landmark" placeholder="Land Mark" data-validate-msg="district field is required">
                </div>
              </div>

               <div class="col-md-6">
                <div class="form-group">
                  <select class="form-control validate" data-validate-msg="state field is required" name="state" id="state">
                    <option value="">Select state</option>
                     <option value="West Bengal">West Bengal</option>
                      </select>
                </div>
               </div>

                <div class="col-md-12">
                  <div class="form-group">
                    <input type="submit" value="Send message" class="btn btn-dark py-3 px-4 saveAppointment">
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    

     <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <span class="subheading">We offer Services</span>
            <h2>Our services</h2>
          </div>
        </div>
    <div class="row">
           <?php 
            $i = 1;
           foreach ($getServices as $key => $value) {
             
            ?> 
          <div class="col-md-4 services ftco-animate mb-5">
          <div class="d-block d-flex">
              <a href="<?php echo base_url();?>service/<?php echo $value->alias;?>" class="icon d-flex justify-content-center align-items-center">
                <!-- <span class="flaticon-car-service"></span> -->
                <img src="<?php echo getCatImage($value->id,'logo');?>" width="60px" class="img-circle">
              </a>
              <a href="<?php echo base_url();?>service/<?php echo $value->alias;?>" class="media-body pl-3 d-flex flex-column justify-content-center">
                <h3 class="heading"><?php echo $value->name;?></h3>
                <!-- <p><?php // echo $value->short_description;?></p> -->
               <!--  <p><a href="#" class="btn-custom">Read more</a></p> -->
              </a>
            </div>
             
           </div>
     <?php } ?>
           
          </div>
      </div>
    </section>


    <section class="ftco-section ftco-no-pt ftco-no-pb bg-light mt-5">
      <div class="container">
        <div class="row d-flex no-gutters">
          <div class="col-md-6 d-flex">
            <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center mb-4 mb-sm-0" <?php if(!empty($getAbout->logo)){?> style="background-image:url(<?php echo base_url().$getAbout->logo;?>);" <?php } ?>>
              
            </div>
          </div>
          <?php echo $getAbout->description; ?>
        </div>
      </div>
    </section>

    <section class="ftco-counter" id="section-counter">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 text-center">
              <div class="text">
                <strong class="number" data-number="12">0</strong>
              </div>
              <div class="text">
                <span>Years of Experienced</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 text-center">
              <div class="text">
                <strong class="number" data-number="8500">0</strong>
              </div>
              <div class="text">
                <span>Total Services</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 text-center">
              <div class="text">
                <strong class="number" data-number="8485">0</strong>
              </div>
              <div class="text">
                <span>Happy Customers</span>
              </div>
            </div>
          </div>
         
        </div>
      </div>
    </section>








    <section class="ftco-section testimony-section">
      <div class="container">
        <div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section heading-section-white text-center ftco-animate">
            <span class="subheading">Testimonial</span>
            <h2>Happy Clients &amp; Feedbacks</h2><br><br>
            <button class="btn btn-primary btn-sm" class="btn btn-primary" data-toggle="modal" data-target="#testModal">Add Testimonial</button>
          </div>
         
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
             
             <?php foreach ($getTestiminials as $key => $value) { ?>
              
              <div class="item">
                <div class="testimony-wrap py-4">
                  <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                  <div class="text">
                    <p class="mb-4"><?php echo $value->description;?></p>
                    <div class="d-flex align-items-center">
                      <div class="user-img" style="background-image: url(<?php echo gettestimonialImage($value->id,'user_image');?>)"></div>
                      <div class="pl-3">
                        <p class="name"><?php echo $value->name;?></p>
                        <span class="position"><?php echo $value->location;?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
             <?php } ?>
            </div>
          </div>
        </div>
      </div>
    </section>



<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Phone Verification</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="otpform">
        <div class="col-md-12">
          <input type="hidden" id="insert_id" name="insert_id" value="">
          <input type="text" name="otp" class="form-control validate1" data-validate-msg="OTP field is required" placeholder="Enter Otp">
        </div>
        </form>
      </div>
      <div class="modal-footer text-center">
        <button type="button" class="btn btn-primary checkOTP">Verify</button>
      </div>
    </div>
  </div>
</div>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<input type="hidden" id="form" value="<?php echo $this->input->get('form'); ?>">


<div class="modal fade" id="testModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Your Testimonial</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="reviewform" method="post">
        <div class="row">
       <div class="col-sm-12 mb-2">
        <input type="text" class="form-control validate4" data-validate-msg="Name field is required" id="tname" name="tname" placeholder="Name">
       </div>
       <div class="col-sm-12 mb-2">
        <input type="text" class="form-control validate4" data-validate-msg="Location field is required" id="tlocation" name="tlocation" placeholder="Location">
       </div>
       <div class="col-sm-12">
        <textarea class="form-control validate4" data-validate-msg="Messgae field is required" name="tmsg" id="tmsg"></textarea>
       </div>
      </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary saveTestimonial">Save changes</button>
      </div>
    </div>
  </div>
  <script src="http://workhars.in/assets/front/js/jquery.min.js"></script>
<script>
  $(".saveTestimonial").click(function(){
    var tname = $('#tname').val();
    var tl = $('#tlocation').val();
   // alert(tlocation);
    var tmsg = $('#tmsg').val();
    if(tname == ''){
      toastr.error('Name field is required', 'Validation failed', {timeOut: 2000,closeButton:true,progressBar:true});
      return false;
    }
    if(tl == ''){
      toastr.error('locaion field is required', 'Validation failed', {timeOut: 2000,closeButton:true,progressBar:true});
      return false;
    }
    if(tmsg == ''){
      toastr.error('Messgae field is required', 'Validation failed', {timeOut: 2000,closeButton:true,progressBar:true});
      return false;
    }
    saveTest();
});
</script>
</div>
