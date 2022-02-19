     
      <?php if(!empty($getBanner->image)){?>
     <section class="hero-wrap hero-wrap-2" style="background-image: url(<?php echo $getBanner->image; ?>)" data-stellar-background-ratio="0.5">
     	<?php }else { ?>
   <section class="hero-wrap hero-wrap-2" style="background-image: url(<?php echo base_url();?>assets/front/images/bg_2.jpg);" data-stellar-background-ratio="0.5">
     	<?php } ?>
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span><?php echo isset($getBanner->title)?$getBanner->title:ucwords(getPageDetailsByAlias($param1,'title')); ?> <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread"> <?php echo isset($getBanner->title)?$getBanner->title:ucwords(getPageDetailsByAlias($param1,'title')); ?></h1>
          </div>
        </div>
      </div>
    </section>

 <?php if($param1 == 'about'){?>
 <section class="ftco-section ftco-no-pt ftco-no-pb bg-light">
    	<div class="container">
    		<div class="row d-flex no-gutters">
    			<div class="col-md-6 d-flex">
    				<div class="img img-video d-flex align-self-stretch align-items-center justify-content-center mb-4 mb-sm-0" style="background-image:url( <?php echo getPageDetailsByAlias($param1,'logo'); ?>);">
    					</div>
    			</div>
    			 <?php echo getPageDetailsByAlias($param1,'description'); ?>
        </div>
    	</div>
    </section>
    <?php }else if($param1 == 'contact'){ 
     $getForm = $this->db->get_where('forms',array('status'=>1))->result();
    	?>
       
    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters">

								<div class="col-md-7 d-flex">
									<div class="contact-wrap w-100 p-md-5 p-4">
										
										<h3 class="mb-4">Get in touch </h3>

										 <form action="javascript:void(0)" id="contactForm">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<input type="text" class="form-control validate" name="name" id="name" placeholder="Name" data-validate-msg="Name field is required">
													</div>
												</div>
												<div class="col-md-6"> 
													<div class="form-group">
														<input type="email" class="form-control validate" name="email" id="email" placeholder="Email" data-validate-msg="Email field is required">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="form-control validate" name="subject" id="subject" placeholder="Subject" data-validate-msg="subject field is required">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<textarea name="message" class="form-control validate" id="message" cols="30" rows="7" placeholder="Message" data-validate-msg="Message field is required"></textarea>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="submit" value="Send Message" class="btn btn-primary contactButton">
														<div class="submitting"></div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="col-md-5 d-flex align-items-stretch">
									<div class="info-wrap bg-primary w-100 p-lg-5 p-4">
										<h3 class="mb-4 mt-md-4">Contact us</h3>

					        	<div class="dbox w-100 d-flex align-items-start">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-map-marker"></span>
					        		</div>
					        		<div class="text pl-3">
						            <p><span>Address:</span> <?php echo getSiteSettings('address'); ?></p>
						          </div>
					          </div>
					        	<div class="dbox w-100 d-flex align-items-center">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-phone"></span>
					        		</div>
					        		<div class="text pl-3">
						            <p><span>Phone:</span> <a href="tel:<?php echo getSiteSettings('phone'); ?>"><?php echo getSiteSettings('phone'); ?></a></p>
						          </div>
					          </div>
					        	<div class="dbox w-100 d-flex align-items-center">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-paper-plane"></span>
					        		</div>
					        		<div class="text pl-3">
						            <p><span>Email:</span> <a href="mailto:<?php echo getSiteSettings('contact_email'); ?>"><?php echo getSiteSettings('contact_email'); ?></a></p>
						          </div>
					          </div>
					        	<!-- <div class="dbox w-100 d-flex align-items-center">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-globe"></span>
					        		</div>
					        		<div class="text pl-3">
						            <p><span>Website</span> <a href="#">yoursite.com</a></p>
						          </div>
					          </div> -->
				          </div>
								</div>
							</div>
						</div>
					</div>
					<!--<div class="col-md-12">
						<div id="map" class="map"></div>
					</div>-->
				</div>
    	</div>
    </section>


    	 <?php }else if($param1 == 'services'){
           $getService = $this->db->order_by('ordering','asc')->get_where('category',array('activated'=>1,'category_type'=>'main'))->result();
    	  ?>
    	<section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">We offer Services</span>
            <h2>Our services</h2>
          </div>
        </div>

         <?php echo getPageDetailsByAlias($param1,'description'); ?>
        <br><br>
        
    	<div class="row">
    			 <?php 
    			 
    			 foreach ($getService as $key => $value) {
            
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
       <?php  } ?>
           
          </div>
       
        </div>
    </section>

    	<?php }else{ ?>
    		 <?php echo getPageDetailsByAlias($param1,'description'); ?>
    		<?php } ?>