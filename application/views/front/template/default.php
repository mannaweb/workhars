<!DOCTYPE html>
<html lang="en">
  <head>
    <title><?php echo getSiteSettings('title'); ?></title>
    <meta charset="utf-8">
   <!--  <meta name="viewport" content="width=device-width, initial-scale=0"> -->
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo base_url();?>favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/font-awesome/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/animate.css">
    
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/magnific-popup.css">

    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/jquery.timepicker.css">

    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/flaticon.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/style.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/toastr.min.css">
   
     <?php if(isset($cssFiles)){ foreach ($cssFiles as $cssKey => $cssValue) { ?>
   <link rel="stylesheet" href="<?php echo base_url();?>assets/front/css/<?php echo $cssValue;?>.css" type="text/css">
    <?php } } ?>
</head>

<body class="page-wrap">

<?php $this->load->view('front/common/default/header');  ?>
<?php $this->load->view((isset($viewPage)?'front/'.$viewPage:'')); ?>
<?php  $this->load->view('front/common/default/footer'); ?>

  <script src="<?php echo base_url(); ?>assets/front/js/jquery.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/front/js/jquery-migrate-3.0.1.min.js"></script>
<!--   <script src="<?php echo base_url(); ?>assets/front/js/popper.min.js"></script> -->
  <script src="<?php echo base_url(); ?>assets/front/js/bootstrap.min.js"></script>
 <!--  <script src="<?php echo base_url(); ?>assets/front/js/jquery.easing.1.3.js"></script> -->
  <script src="<?php echo base_url(); ?>assets/front/js/jquery.waypoints.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/front/js/jquery.stellar.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/front/js/jquery.animateNumber.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/front/js/bootstrap-datepicker.js"></script>
 <!--  <script src="<?php echo base_url(); ?>assets/front/js/jquery.timepicker.min.js"></script> -->
  <script src="<?php echo base_url(); ?>assets/front/js/owl.carousel.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/front/js/jquery.magnific-popup.min.js"></script>
<!--   <script src="<?php echo base_url(); ?>assets/front/js/scrollax.min.js"></script> -->
  
  <script src="<?php echo base_url(); ?>assets/front/js/main.js"></script>
  <script src="<?php echo base_url(); ?>assets/front/js/toastr.min.js"></script>
  <script type="text/javascript">
        var BASE_URL = '<?php echo base_url(); ?>';
    </script>
<?php if(isset($jsFiles)){ foreach ($jsFiles as $jsKey => $jsValue) { ?>
    <script src="<?php echo base_url();?>assets/front/js/<?php echo $jsValue;?>.js"></script>
    <?php } } ?>
</body>
<style type="text/css">
  .page-wrap { width: 100%; }

@media (max-width: 600px) {
  .resp .page-wrap { width: 100%; }
}
</style>
</html>