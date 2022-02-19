
    <footer class="footer ftco-section">
      <div class="container">
        <div class="row mb-5 ">
          <div class="col-md-4 col-lg ">
            <div class="ftco-footer-widget mb-4 ">
          <img width="150px" src="http://workhars.in/resize.png">
            </div>
          </div>
          <div class="col-md-6 col-lg ">
            <div class="ftco-footer-widget mb-4 ">
            <!-- <h2 class="logo" style="color:black"><a href="#">Workhars<span>.</span></a></h2> -->
              <p><?php echo getSiteSettings('description'); ?></p>
            </div>
          </div>
          <div class="col-md-6 col-lg  mb-4">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Pages</h2>
              <ul class="list-unstyled">
                <li><a href="<?php echo base_url();?>" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Home</a></li>
                  <li><a href="<?php echo base_url();?>services" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Services</a></li>
                <li><a href="<?php echo base_url();?>about" class="py-1 d-block"><span class="fa fa-check mr-3"></span>About</a></li>
                <li><a href="<?php echo base_url();?>contact" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Contact</a></li>
                 <li><a href="<?php echo base_url();?>terms-and-conditions" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Terms & Conditions</a></li>
                 <li><a href="<?php echo base_url();?>privacy-policy" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Privacy Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Contact information</h2>
              <div class="block-23 mb-3">
                <ul>
                  <li><span class="icon fa fa-map-marker"></span><span class="text"><?php echo getSiteSettings('address'); ?></span></li>
                  <li><a href="tel:<?php echo getSiteSettings('phone'); ?>"><span class="icon fa fa-phone"></span><span class="text"><?php echo getSiteSettings('phone'); ?></span></a></li>
                  <li><a href="mailto:<?php echo getSiteSettings('contact_email'); ?>"><span class="icon fa fa-paper-plane"></span><span class="text"><?php echo getSiteSettings('contact_email'); ?></span></a></li>
                </ul>
              </div>
            </div>
          </div>
         <!--  <div class="col-md-6 col-lg">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Business Hours</h2>
              <div class="opening-hours">
                <h4>Opening Days:</h4>
                <p class="pl-3">
                  <span>Monday – Friday : 9am to 20 pm</span>
                  <span>Saturday : 9am to 17 pm</span>
                </p>
                <h4>Vacations:</h4>
                <p class="pl-3">
                  <span>All Sunday Days</span>
                  <span>All Official Holidays</span>
                </p>
              </div>
            </div>
          </div> -->
        </div>
  


       

        <div class="row">
          <div class="col-md-12 text-center">

            <p>
 <?php echo getSiteSettings('copyright'); ?>
 </p>
          </div>
        </div>
      </div>
    </footer>

    