<div class="card shadow mb-4">
  <div class="card-header py-3">
    <div class="row">
      <div class="col-sm-6 d-flex"><h6 class="title my-auto"><?php echo ($faqs && $faqs->id)?'Edit Faq':'Add Faq'?></h6></div>
      <div class="col-sm-6 text-right">
        <button class="btn btn-sm btn-primary saveButton" type="button">Save</button>
        <button class="btn btn-sm btn-danger cancelButton" type="button">Cancel</button>
      </div>
    </div>
  </div>
  <div class="card-body">
    <form class="user" id="manageForm">
    	<div class="row">
			<input type="hidden" name="id" value="<?php echo ($faqs && $faqs->id)?$faqs->id:''?>">
			<div class="col-md-12">
				<?php 
					$cat_id = array();
					if(isset($faqs->category_id) && !empty($faqs->category_id)){
						$cat_id = explode(',', $faqs->category_id);
					}
				?>
				<div class="row">
					<div class="col">
						<div class="permission-management-title required">Category</div>
						<div class="permission-management">
							<?php if($all_cat){ foreach ($all_cat as $value) { 
								if($value->rootcategoryid == 0){
							?>
							<div class="permission-item">
								<div class="item-header">
									<div class="custom-checkbox">
										<input name="main_cat_id[]" <?php if(isset($faqs->category_id) && in_array($value->id, $cat_id)){echo 'checked';}?> type="checkbox" value="<?php echo $value->id; ?>" class="custom-input main_cat">
										<label class="custom-label"><?php echo $value->name; ?></label>
									</div>
									<div class="right-btn">
										<button class="btn btn-primary check_class check-all" type="button" cat_val="<?php echo $value->id; ?>"><i class="far fa-fw fa-tasks"></i><span>Select all</span></button>
									</div>
									<a href="javascript:void(0)" class="btn-trigger"><i class="far fa-fw fa-angle-down"></i></a>
								</div>
								
								<div class="item-body">
									<ul class="permission-list">
										<?php if($all_cat){ foreach ($all_cat as $key => $val) { 
											if($value->id == $val->rootcategoryid){
										?>
										<li>
											<div class="custom-checkbox">
												<input name="sub_cat_id[]" <?php if(isset($faqs->category_id) && in_array($val->id, $cat_id)){echo 'checked';}?> type="checkbox" value="<?php echo $val->id; ?>" main_cat_val="<?php echo $val->rootcategoryid; ?>" class="custom-input sub_cat">
												<label class="custom-label"><?php echo $val->name; ?></label>
											</div>
										</li>
										<?php } } } ?>
									</ul>
								</div>
							</div>
							<?php } } } ?>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label class="control-label required">Question</label>
							<textarea class="form-control tinymce validate" id="question" name="question" rows="5"><?php echo ($faqs && $faqs->question)?$faqs->question:''?></textarea>
						</div>
					</div>
				</div>
                 <div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label class="control-label required">Answer</label>
							<textarea class="form-control tinymce validate" id="answer" name="answer" rows="5"><?php echo ($faqs && $faqs->answer)?$faqs->answer:''?></textarea>
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