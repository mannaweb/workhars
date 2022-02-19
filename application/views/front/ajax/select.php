<?php 
 foreach ($getService as $key => $value) { ?>
	<option value="<?php echo $value->id; ?>"><?php echo $value->name; ?></option>
<?php } ?>