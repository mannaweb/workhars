<div class="card shadow mb-4">
  <div class="card-header py-3">
    <div class="row">
      <div class="col-sm-6 d-flex"><h6 class="title my-auto"><?php echo ($pages && $pages->id)?'Edit Page':'Add Page'?></h6></div>
      <div class="col-sm-6 text-right">
        <button class="btn btn-sm btn-primary saveButton" type="button">Save</button>
        <button class="btn btn-sm btn-danger cancelButton" type="button">Cancel</button>
      </div>
    </div>
  </div>
  <div class="card-body">
    <form class="user" id="manageForm">
    	<div class="row">
    		<?php if($this->uri->segment(3) == 'about'){?>
    		<div class="col-lg-4 col-xl-3">
    			<div class="profile-image img-square">
						<div class="img-container">
							<input type="hidden" name="logo" value="<?php echo ($pages && $pages->logo)?$pages->logo:''?>">
							<img src="<?php echo base_url().$pages->logo;?>" class="upic" alt=""/>
						</div>
						<input type="file" id="image" class="input-file" name="image" data-multiple-caption="{count} files selected" onchange="readURL(this)" />
						<label class="btn-file" for="image" id="upBtn2"><span class="fas fa-camera"></span></label>
					</div>
				</div>
              <?php }else{?>
              	<input type="hidden" name="logo" value="">
              	<div style="display: none;">
              		<input type="file" name="image" value=""></div>
              <?php } ?>
				<input type="hidden" name="id" value="<?php echo ($pages && $pages->id)?$pages->id:''?>">
				<?php if($this->uri->segment(3) == 'about-us'){?><div class="col-lg-8 col-xl-9"><?php }else{ ?><div class="col-md-12"><?php } ?>
				
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">Title</label>
								<input type="text" class="form-control validate" autocomplete="off" name="title" id="title" data-validate-msg="Title field is required"  placeholder="Enter Page Title" value="<?php echo ($pages && $pages->title)?$pages->title:''?>">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">Alias</label>
								<input type="text" class="form-control validate" autocomplete="off" name="slug" id="slug" data-validate-msg="Alias field is required"  placeholder="Enter Alias" value="<?php echo ($pages && $pages->slug)?$pages->slug:''?>">
							</div> 
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label class="control-label">Description</label>
								<textarea class="form-control tinymce" id="description" name="description" rows="5"><?php echo ($pages && $pages->description)?$pages->description:''?></textarea>
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