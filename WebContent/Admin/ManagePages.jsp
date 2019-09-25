<script type="text/javascript" src="nicEdit.js"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() {
		nicEditors.allTextAreas()
	});
</script>
<!--heder end here-->
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="index.html">Home</a><i
		class="fa fa-angle-right"></i>Update Page Data</li>
</ol>
<!--grid-->
<div class="grid-form">
	<div class="grid-form1">
		<h3>Update Page Data</h3>
		<div class="tab-content">
			<div class="tab-pane active" id="horizontal-form">
				<form class="form-horizontal" name="package" method="post"
					enctype="multipart/form-data">
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Select
							page</label>
						<div class="col-sm-8">
							<select name="menu1" onChange="MM_jumpMenu('parent',this,0)">
								<option value="" selected="selected" class="form-control">***Select
									One***</option>
								<option value="manage-pages.php?type=terms">terms and
									condition</option>
								<option value="manage-pages.php?type=privacy">privacy
									and policy</option>
								<option value="manage-pages.php?type=aboutus">aboutus</option>
								<option value="manage-pages.php?type=contact">Contact
									us</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Selected
							Page</label>
						<div class="col-sm-8"></div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Details</label>
						<div class="col-sm-8">
							<textarea class="form-control" rows="5" cols="50"
								name="pgedetails" id="pgedetails" placeholder="Package Details"
								required></textarea>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							<button type="submit" name="submit" value="Update" id="submit"
								class="btn-primary btn">Update</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--//grid-->