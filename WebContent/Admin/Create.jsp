<!--/content-inner-->
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="index.html">Home</a><i
		class="fa fa-angle-right"></i>Update Package</li>
</ol>
<!--grid-->
<div class="grid-form">
	<!---->
	<script type="text/javascript" src="./js/Create.js"></script>
	<div class="grid-form1">
		<h3>Create Package</h3>
		<div class="tab-content">
			<div class="tab-pane active" id="horizontal-form">
				<form class="form-horizontal" action="CreatePackage" name="package"
					method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Name</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packageName"
								id="packagename" placeholder="Create Package" required>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Type</label>
						<div class="col-sm-8">
							<select class="form-control1" name="packageType" id="packagetype"
								required>
								<option value="" disabled selected>Select your option</option>
								<option value="Family">Family Package</option>
								<option value="Couple">Couple Package</option>
								<option value="Biker">Biker Package</option>
								<option value="Adventure">Adventure Package</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Date</label>
						<div class="col-sm-8">
							<div class="input-datepicker input-group"
								style="padding-bottom: 0px;">
								<input type="text" class="input-sm form-control1" name="from"
									id="datepicker1" /> <span class="input-group-addon">to</span>
								<input type="text" class="input-sm form-control1" name="to"
									id="datepicker2" /><small class="form-text text-danger error"></small>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Location</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packageLocation"
								id="packagelocation" placeholder=" Package Location" required>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Price in &#8377</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packagePrice"
								id="packageprice" placeholder=" Package Price is &#8377"
								required>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Features</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packageFeatures"
								id="packagefeatures"
								placeholder="Package Features Eg-free Pickup-drop facility"
								required>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Details</label>
						<div class="col-sm-8">
							<textarea class="form-control" rows="5" cols="50"
								name="packageDetails" id="packagedetails"
								placeholder="Package Details" required></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Image</label>
						<div class="col-sm-8">
							<input type="file" name="packageImage" id="packageimage" required>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							<button type="submit" name="submit" class="btn-primary btn">Create</button>
							<button type="reset" class="btn-inverse btn">Reset</button>
						</div>
					</div>
				</form>
			</div>
			<div class="panel-footer"></div>
		</div>
	</div>
	<!--//grid-->
</div>