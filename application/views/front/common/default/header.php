<!-- Global site tag (gtag.js) - Google Ads: 10837743888 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-10837743888"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-10837743888');
</script>
<script>
window.addEventListener('load',function(){
let timeInt = setInterval(function () {
    if (jQuery('[class="toast-title"]:contains(Success)').is(':visible')) {
     gtag('event', 'conversion', {'send_to': 'AW-10837743888/cZ5ICN7ctKADEJCy668o'}); 
      clearInterval(timeInt);
    }

  }, 1000);
  
  jQuery('[href*="tel:"]').click(function(){
 gtag('event', 'conversion', {'send_to': 'AW-10837743888/2jAdCL6ShaADEJCy668o'});
    
})
  
})

</script>

    <div class="wrap">
      <div class="container">
        <div class="row justify-content-between">
          <div class="col-md-3 d-flex justify-content-start">
            <a class="navbar-brand" href="<?php echo base_url(); ?>"><span><img  draggable="false" src="http://workhars.in/resize.png" width="80px"></span></a>
          </div>
          <div class="col-md-8" >
            <div class="row">
              <div class="col">
                <!-- <div class="top-wrap d-flex" >
                  <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-map-marker"></span></div>
                  <a href="https://www.google.com/maps/place/Ashokenagar,+North+24+Parganas,+West+Bengal,+India,+NH+35,+Manicktala,+Habra,+West+Bengal+743222/@22.8217227,88.6232516,17z/data=!3m1!4b1!4m5!3m4!1s0x39f8baa4a49e2dd1:0x1e3a8acc9987c532!8m2!3d22.8217227!4d88.6254403" class="text"><span>Address</span><span><?php echo getSiteSettings('address'); ?></span></a>
                </div> -->
              </div>
              <div class="col" >
              <div class="top-wrap d-flex" >
                  <div class="icon d-flex align-items-center justify-content-center"><strong><span class="fa fa-map-marker"></span></strong></div>
                  <a href="https://www.google.com/maps/place/Ashokenagar,+North+24+Parganas,+West+Bengal,+India,+NH+35,+Manicktala,+Habra,+West+Bengal+743222/@22.8217227,88.6232516,17z/data=!3m1!4b1!4m5!3m4!1s0x39f8baa4a49e2dd1:0x1e3a8acc9987c532!8m2!3d22.8217227!4d88.6254403" class="text"><strong><span>Address</span><span><?php echo getSiteSettings('address'); ?></span></strong></a>
                </div>
              </div>
              <a href="tel:<?php echo getSiteSettings('phone'); ?>">
              <div class="col-md-3 d-flex justify-content-end align-items-center">
               <div class="top-wrap d-flex ">
                  <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-phone"></span></div>
                  <a class="text" href="tel:<?php echo getSiteSettings('phone'); ?>"><strong><span>Call us</span><span><?php echo getSiteSettings('phone'); ?></span></strong></a>
                </div>
              </div>
            </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
      
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="fa fa-bars"></span> Menu
        </button>
        
        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item <?php if($this->uri->segment(1) == ''){ echo 'active';} ?>"><a href="<?php echo base_url();?>" class="nav-link">Home</a></li>
             <li class="nav-item <?php if($this->uri->segment(1) == 'services'){ echo 'active';} ?>"><a href="<?php echo base_url();?>services" class="nav-link">Services</a></li>
            <li class="nav-item <?php if($this->uri->segment(1) == 'about'){ echo 'active';} ?>"><a href="<?php echo base_url();?>about" class="nav-link">About</a></li>
            <li class="nav-item <?php if($this->uri->segment(1) == 'contact'){ echo 'active';} ?>" ><a href="<?php echo base_url();?>contact" class="nav-link">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->