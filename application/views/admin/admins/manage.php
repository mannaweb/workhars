<div class="card shadow mb-4">
  <div class="card-header py-3">
    <div class="row">
      <div class="col-sm-6 d-flex"><h6 class="title my-auto"><?php echo ($admins && $admins->id)?'Edit Admin':'Add Admin'?></h6></div>
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
					<input type="hidden" name="id" value="<?php echo ($admins && $admins->id)?$admins->id:''?>">
					<input type="hidden" name="usertype" value="<?php echo ($admins && $admins->usertype)?$admins->usertype:'admins'?>">
					<input type="hidden" name="profile" value="<?php echo ($admins && $admins->profile)?$admins->profile:''?>">
					<div class="profile-image">
						<div class="img-container">
							<img src="<?php echo getUserDetails( (($admins && $admins->id)?$admins->id:''),'profile');?>" class="upic" alt=""/>
						</div>
						<input type="file" id="image" class="input-file" name="image" data-multiple-caption="{count} files selected" onchange="readURL(this)" />
						<label class="btn-file" for="image" id="upBtn2"><span class="fas fa-camera"></span></label>
					</div>
				</div>
				<div class="col-lg-8 col-xl-9">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">First Name</label>
								<input type="text" class="form-control validate" id="firstname" name="firstname" data-validate-msg="First Name field is required"  placeholder="Enter First Name" value="<?php echo ($admins && $admins->firstname)?$admins->firstname:''?>">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">Last Name</label>
								<input type="text" class="form-control validate"  id="lastname" name="lastname" data-validate-msg="Last Name field is required"  placeholder="Enter Last Name" value="<?php echo ($admins && $admins->lastname)?$admins->lastname:''?>">
							</div> 
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">Email Address</label>
								<input type="text" class="form-control validate" id="email" name="email" data-validate-msg="Email field is required"  placeholder="Enter Email Address" value="<?php echo ($admins && $admins->email)?$admins->email:''?>">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label required">Password</label>
								<input type="password" class="form-control <?php echo ($admins && $admins->password)?'':'validate'?>" name="password" id="password" data-validate-msg="Password field is required"  placeholder="Enter Password" >
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