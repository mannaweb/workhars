<?php 
 foreach ($getpro as $key => $value) { ?>
	<option value="<?php echo $value->id; ?>"><?php echo $value->name; ?></option>
<?php } ?>