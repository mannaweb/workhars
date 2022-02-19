<div class="card shadow mb-4">
  <div class="card-header py-3">
    <div class="row">
      <div class="col-sm-6 d-flex"><h6 class="title my-auto">Upload File</h6></div>
      <div class="col-sm-6 text-right">
        <button class="btn btn-sm btn-primary saveButton" type="button">Save</button>
        <button class="btn btn-sm btn-danger cancelButton" type="button">Cancel</button>
      </div>
    </div>
  </div>
  <div class="card-body">
    <form class="user" id="manageForm">
    	<div class="row">
				
				<div class="col-lg-12">
					<input type="hidden" name="id" value="<?php echo ($forms && $forms->id)?$forms->id:''?>">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">Button Name</label>
								<input type="text" class="form-control validate" autocomplete="off" name="name" id="name" data-validate-msg="Name field is required"  placeholder="Enter Name" value="<?php echo ($forms && $forms->name)?$forms->name:''?>">
							</div>
						</div>
                       	<input type="hidden" name="doc" value="<?php echo ($forms && $forms->doc)?$forms->doc:''?>">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">File</label>
								<input type="file" class="form-control" autocomplete="off" name="new_doc" id="new_doc" data-validate-msg="File is required">
							</div>
							<span><a href="<?php echo base_url();?><?php echo ($forms && $forms->doc)?$forms->doc:''?>" target="_blank">preview</a></span>
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