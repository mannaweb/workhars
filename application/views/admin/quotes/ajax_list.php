
<?php if($quotes){ foreach($quotes as $key=>$val){
$getProduct = $this->db->get_where('category',array('id'=>$val->service_id))->row();
$getProducttype = $this->db->get_where('services',array('id'=>$val->product_type))->row();
$getService = $this->db->get_where('services',array('id'=>$val->service_type))->row();
	?>

	<tr>
	
	
          
			<td><?php echo $val->name;?></td>
			<td><?php echo $val->email;?><br><?php echo $val->phone;?></td>
			<td>Ref : <?php echo isset($val->ref)?$val->ref:''; ?><br>
				Product :  <?php echo isset($getProduct->name)?$getProduct->name:'--'; ?><br>
				Product Type : <?php echo isset($getProducttype->name)?$getProducttype->name:'--'; ?><br>
				Service Type :<?php echo isset($getService->name)?$getService->name:'--'; ?><br>
				Warrenty :<?php echo $val->warrenty; ?></td>
			<td><?php echo date('d M Y',strtotime($val->dop)); ?></td>
			<td>
				<?php echo isset($val->door_no)?$val->door_no:''; ?>
				<?php echo isset($val->area)?$val->area:''; ?>
				<?php echo isset($val->street)?$val->street:''; ?>,<?php echo isset($val->city)?$val->city:''; ?>,<?php echo isset($val->state)?$val->state:''; ?><br>
				<?php echo isset($val->pincode)?$val->pincode:''; ?>
          </td>
             <td><?php echo isset($val->created)?$val->created:''; ?></td>
		<td><?php echo date('d M Y h:i A',strtotime($val->dop)); ?></td>

		
		

		
		</td>
	</tr>
<?php } } else { ?>
	<tr><td colspan="15" align="center">No Data Found!</td>
	</tr>
<?php } ?>
		