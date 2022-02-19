<div class="card shadow mb-4">
	<div class="card-header py-3 forms">
		<div class="row form-row mb-2">
			<div class="col-sm-6 d-flex">
				<h6 class="title my-auto">Quotes list</h6>
			</div>
			<div class="col-sm-6 text-right">
				
				
				<a href="javascript:void(0)" onclick="resetSearch()" class="btn btn-sm btn-primary" data-tooltip="Reset"><i class="fa fa-sync"></i></a>
			</div>
		</div>
		<div class="row form-row mb-2">
			<input type="hidden" id="sortByField" value="">
			<input type="hidden" id="sortBy" value="">
			<div class="col-sm-4 col-md-3 col-lg-2 col-xl-2">
				<div class="form-group">
					<select class="form-control select2-nosearch" id="perPage" onchange="searchFilter()">
						<option disabled>Show Per Page</option>
						<option value="5">5 Per Page</option>
						<option value="10" selected>10 Per Page</option>
						<option value="20">20 Per Page</option>
						<option value="50">50 Per Page</option>
						<option value="100">100 Per Page</option>
						<option value="10000000000">All</option>
					</select>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<input type="text" class="form-control" id="keyword" placeholder="Search" onkeyup="searchFilter()" />
				</div>
			</div>

			<div class="col-sm-4 col-md-3 col-lg-2 col-xl-2" style="display: none;">
				<div class="form-group">
					<select class="form-control select2-nosearch" id="otp_verified" onchange="searchFilter()">
						<option value="">Phone</option>
						<option value="1">Verified</option>
						<option value="2">Un-verified</option>
					</select>
				</div>
			</div>

      <div class="col-sm-4 col-md-3 col-lg-2 col-xl-2" style="display: none;">
				<div class="form-group">
					<select class="form-control select2-nosearch" id="status" onchange="searchFilter()">
						<option value="">Select Status</option>
						<option value="1">Active</option>
						<option value="2">In-Active</option>
					</select>
				</div>
			</div>
			<div class="col-sm-8 col-md-9 col-lg-4 col-xl-3">
				<div class="form-group">
					<input type="text"  name="startEnd" id="startEnd" placeholder="Created At" class="form-control" readonly/>
				</div>
			</div>
		</div>
	</div>
	<div class="card-body">
		<div class="table-wrap">
			<div class="preloader">
				<?php $this->load->view('admin/common/default/loader');?>
			</div>
			<div>
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr>
								
								
								<th>
									Name
								</th>

								<th>Email/Phone</th>
								<th>Service /Warrenty</th>
								<th> Date Of purchase
								</th>
                                <th>
									Full Address
								</th>
								<th>
									Nearest Reailway Station
								</th>
								
                                <th>
								Submit Date
							</th>

							

								
								<!-- <th>Status</th>
								<th>Action</th> -->
							</tr>
						</thead>
						<tbody id="quotesList">
							<tr><td colspan="15" align="center">Searching Datas...</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row" id="paginationDiv"></div>
			</div>
		</div>
	</div>
</div>