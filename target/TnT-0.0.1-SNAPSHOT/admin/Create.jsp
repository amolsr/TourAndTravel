<style>
.errorWrap {
	padding: 10px;
	margin: 0 0 20px 0;
	background: #fff;
	border-left: 4px solid #dd3d36;
	-webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
}

.succWrap {
	padding: 10px;
	margin: 0 0 20px 0;
	background: #fff;
	border-left: 4px solid #5cb85c;
	-webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
}
</style>
<!--/content-inner-->
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="index.html">Home</a><i
		class="fa fa-angle-right"></i>Update Package</li>
</ol>
<!--grid-->
<div class="grid-form">

	<!---->
	<div class="grid-form1">
		<h3>Create Package</h3>
		<div class="tab-content">
			<div class="tab-pane active" id="horizontal-form">
				<form class="form-horizontal" name="package" method="post"
					enctype="multipart/form-data">
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Name</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packagename"
								id="packagename" placeholder="Create Package" required>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Type</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packagetype"
								id="packagetype"
								placeholder=" Package Type eg- Family Package / Couple Package"
								required>
						</div>
					</div>

					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Location</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packagelocation"
								id="packagelocation" placeholder=" Package Location" required>
						</div>
					</div>

					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Price in USD</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packageprice"
								id="packageprice" placeholder=" Package Price is USD" required>
						</div>
					</div>

					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Features</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packagefeatures"
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
								name="packagedetails" id="packagedetails"
								placeholder="Package Details" required></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Image</label>
						<div class="col-sm-8">
							<input type="file" name="packageimage" id="packageimage" required>
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
<!--//content-inner-->
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>