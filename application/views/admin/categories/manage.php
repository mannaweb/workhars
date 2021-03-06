<div class="card shadow mb-4">
  <div class="card-header py-3">
    <div class="row">
      <div class="col-sm-6 d-flex"><h6 class="title my-auto"><?php echo ($categories && $categories->id)?'Edit Category':'Add Category'?></h6></div>
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
					<input type="hidden" name="id" value="<?php echo ($categories && $categories->id)?$categories->id:''?>">
					<input type="hidden" name="category_type" value="<?php echo ($categories && $categories->category_type)?$categories->category_type:'main'?>">
					<input type="hidden" name="logo" value="<?php echo ($categories && $categories->logo)?$categories->logo:''?>">
					<div class="profile-image img-square">
						<div class="img-container">
							<img src="<?php echo getCatImage( (($categories && $categories->id)?$categories->id:''),'logo');?>" class="upic" alt=""/>
						</div>
						<input type="file" id="image" class="input-file" name="image" data-multiple-caption="{count} files selected" onchange="readURL(this)" />
						<label class="btn-file" for="image" id="upBtn2"><span class="fas fa-camera"></span></label>
					</div>
				</div>
				<div class="col-lg-8 col-xl-9">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">Category Name</label>
								<input type="text" class="form-control validate" autocomplete="off" name="name" id="name" data-validate-msg="Category Name field is required"  placeholder="Enter Category Name" value="<?php echo ($categories && $categories->name)?$categories->name:''?>">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">Category Alias</label>
								<input type="text" class="form-control validate" autocomplete="off" name="alias" id="alias" data-validate-msg="Alias field is required"  placeholder="Enter Alias" value="<?php echo ($categories && $categories->alias)?$categories->alias:''?>">
							</div> 
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label class="control-label ">Description</label>
								<textarea class="form-control tinymce" name="description" id="description" rows="5"><?php echo ($categories && $categories->description)?$categories->description:''?></textarea>
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