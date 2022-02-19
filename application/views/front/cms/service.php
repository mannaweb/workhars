	<section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          <h2><?php echo $getCat->name;?></h2>
          </div>
        </div>

        <?php echo isset($getCat->description)?$getCat->description:'';?>
        <br><br>
        <div style="text-align: center;">
        <a href="<?php echo base_url(); ?>?form=1&product=<?php echo $getCat->id;?>" class="btn btn-primary">Booking an Appointment</a>
        </div>
     </div>
    </section>
