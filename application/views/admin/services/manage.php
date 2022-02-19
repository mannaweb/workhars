<div class="card shadow mb-4">
  <div class="card-header py-3">
    <div class="row">
      <div class="col-sm-6 d-flex"><h6 class="title my-auto"><?php echo ($services && $services->id)?'Edit Service':'Add Service'?></h6></div>
      <div class="col-sm-6 text-right">
        <button class="btn btn-sm btn-primary saveButton" type="button">Save</button>
        <button class="btn btn-sm btn-danger cancelButton" type="button">Cancel</button>
      </div>
    </div>
  </div>
  <div class="card-body">
    <form class="user" id="manageForm">
    	<div class="row">
				<div class="col-lg-4 col-xl-3">
					<input type="hidden" name="id" value="<?php echo ($services && $services->id)?$services->id:''?>">
					<input type="hidden" name="user_image" value="<?php echo ($services && $services->user_image)?$services->user_image:''?>">
					<div class="profile-image img-square">
						<div class="img-container">
							<img src="<?php echo getserviceImage( (($services && $services->id)?$services->id:''),'user_image');?>" class="upic" alt=""/>
						</div>
						<input type="file" id="image" class="input-file" name="image" data-multiple-caption="{count} files selected" onchange="readURL(this)" />
						<label class="btn-file" for="image" id="upBtn2"><span class="fas fa-camera"></span></label>
					</div>
				</div>
				<div class="col-lg-8 col-xl-9">
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label required">Name</label>
								<input type="text" class="form-control validate" autocomplete="off" name="name" id="name" data-validate-msg="Name field is required"  placeholder="Enter Name" value="<?php echo ($services && $services->name)?$services->name:''?>">
							</div>
						</div>

						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label required">Product </label>
								<select class="form-control select2" name="category_id">
									<?php $getData = $this->db->get_where('category',array('activated'=>1,'category_type'=>'main'))->result();
									foreach ($getData as $key => $value) { ?>
									<option value="<?php echo $value->id; ?>" <?php if(isset($services->category_id) && $services->category_id == $value->id){ echo 'selected';}?>><?php echo $value->name; ?></option>
								<?php } ?>
								</select>
							</div>
						</div>

						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label required">Type </label>
								<select class="form-control select2" name="type">
									<option value="Product" <?php if(isset($services->type) && $services->type == 'Product'){ echo 'selected';}?>>Product</option>
							         <option value="Service"  <?php if(isset($services->type) && $services->type == 'Service'){ echo 'selected';}?>>Service</option>
								</select>
							</div>
						</div>
						
						
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label class="control-label ">Short Description</label>
								<textarea class="form-control" name="short_description" id="short_description" rows="5"><?php echo ($services && $services->short_description)?$services->short_description:''?></textarea>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col text-right">
							<button class="btn btn-primary saveButton" type="button">Save</button>
							<button class="btn btn-danger cancelButton" type="button">Cancel</button>
						</div>
					</div>
				</div>
			</div>
    </form>
  </div>
</div>