<?php if($testimonials){ foreach($testimonials as $key=>$val){?>

	<tr>

		<td>

			<div class="custom-checkbox">

				<input type="checkbox" class="custom-input singleCheck" id="customCheck<?php echo $val->id;?>" value="<?php echo $val->id;?>">

				<label class="custom-label" for="customCheck<?php echo $val->id;?>"></label>

			</div>

		</td>	

		<td width="100"><div class="img-container"><a href="<?php echo gettestimonialImage($val->id,'user_image');?>" class="d-block w-100 h-100" data-fancybox=""><img src="<?php echo gettestimonialImage($val->id,'user_image');?>" alt=""/></a></div></td>

		<?php if(getUserDetails($this->session->userdata('user_id'),'role_manage') && in_array('edit-testimonial', getUserDetails($this->session->userdata('user_id'),'role_manage'))){?>

            <td><a href="<?php echo base_url()?>admin/edit-testimonial/<?php echo $val->id;?>" target="_blank"><?php echo $val->name;?></a></td>

            <td><a href="<?php echo base_url()?>admin/edit-testimonial/<?php echo $val->id;?>" target="_blank"></a><?php echo $val->location;?></td>

             <td><a href="<?php echo base_url()?>admin/edit-testimonial/<?php echo $val->id;?>" target="_blank"><?php echo date('d M, Y',strtotime($val->created_at));?></a></td>

         <?php } else { ?>

           <td><?php echo $val->name;?></td>

           <td><?php echo $val->location;?></td>

            <td><?php echo date('jS M, Y',strtotime($val->created_at));?></td>

           <?php } ?>	

           <td><?php echo $val->description;?></td>	

		<td id="status_td_<?php echo $val->id;?>"><?php echo ($val->status == 1)?'<span class="btn btn-xs btn-success btn-icon-split"><span class="icon text-white-50"><i class="fas fa-check"></i></span><span class="text">Active</span></span>':'<span class="btn btn-xs btn-danger btn-icon-split"><span class="icon text-white-50"><i class="fas fa-times"></i></span><span class="text">In-Active</span></span>';?></td>

		

		<td>

			<div class="dropdown">

				<button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">Action</button>

				<div class="dropdown-menu dropdown-menu-right">

					<?php if(getUserDetails($this->session->userdata('user_id'),'role_manage') && in_array('edit-testimonial', getUserDetails($this->session->userdata('user_id'),'role_manage'))){?>

					<a class="dropdown-item" href="<?php echo base_url()?>admin/edit-testimonial/<?php echo $val->id;?>"><i class="fas fa-fw fa-edit"></i> Edit</a>

					<?php } ?>

					<?php if(getUserDetails($this->session->userdata('user_id'),'role_manage') && in_array('change-status-testimonial', getUserDetails($this->session->userdata('user_id'),'role_manage'))){?>

					<a class="dropdown-item" href="javascript:void(0)" onclick="statusChange(<?php echo $val->id;?>,<?php echo ($val->status == 1)?2:1;?>)" id="status_a_<?php echo $val->id;?>"><?php echo ($val->status == 1)?'<i class="fas fa-fw fa-times-circle"></i>  Deactivate':'<i class="fas fa-fw fa-check-circle"></i>  Activate';?></a>

					<?php } ?>

				

					<?php if(getUserDetails($this->session->userdata('user_id'),'role_manage') && in_array('delete-testimonial', getUserDetails($this->session->userdata('user_id'),'role_manage'))){?>

					<a class="dropdown-item" href="javascript:void(0)" onclick="deleteCategory(<?php echo $val->id;?>,<?php echo $val->status;?>)"><i class="fas fa-fw fa-trash"></i> Delete</a>

					<?php } ?>

				</div>

			</div>

        </td>

	</tr>

<?php } } else { ?>

	<tr><td colspan="15" align="center">No Testimonials Found!</td>

	</tr>

<?php } ?>