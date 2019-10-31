<script type="text/javascript">
	function valid() {
		if (document.chngpwd.newpassword.value != document.chngpwd.confirmpassword.value) {
			alert("New Password and Confirm Password Field do not match  !!");
			document.chngpwd.confirmpassword.focus();
			return false;
		}
		return true;
	}
</script>

<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="dashboard.php">Home</a><i
		class="fa fa-angle-right"></i>Profile <i class="fa fa-angle-right"></i>
		Change Password</li>
</ol>
<!--grid-->
<div class="grid-form">
	<div class="grid-form1">
		<div class="panel-body">
			<form name="chngpwd" method="post" class="form-horizontal"
				onSubmit="return valid();">
				<div class="form-group">
					<label class="col-md-2 control-label">Current Password</label>
					<div class="col-md-8">
						<div class="input-group">
							<span class="input-group-addon"> <i class="fa fa-key"></i>
							</span> <input type="password" name="password" class="form-control1"
								id="exampleInputPassword1" placeholder="Current Password"
								required>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label">New Password</label>
					<div class="col-md-8">
						<div class="input-group">
							<span class="input-group-addon"> <i class="fa fa-key"></i>
							</span> <input type="password" class="form-control1" name="newpassword"
								id="newpassword" placeholder="New Password" required>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label">Confirm Password</label>
					<div class="col-md-8">
						<div class="input-group">
							<span class="input-group-addon"> <i class="fa fa-key"></i>
							</span> <input type="password" class="form-control1"
								name="confirmpassword" id="confirmpassword"
								placeholder="Confrim Password" required>
						</div>
					</div>
				</div>

				<div class="col-sm-8 col-sm-offset-2">
					<button type="submit" name="submit" class="btn-primary btn">Submit</button>
					<button type="reset" class="btn-inverse btn">Reset</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!--//grid-->