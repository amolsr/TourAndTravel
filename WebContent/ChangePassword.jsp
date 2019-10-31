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
<div class="banner-1 ">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">TMS-Tourism
			Management System</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- privacy ---->
<div class="privacy">
	<div class="container">
		<h3 class="wow fadeInDown animated animated" data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">Change
			Password</h3>
		<form name="chngpwd" method="post" onSubmit="return valid();">
			<p style="width: 350px;">

				<b>Current Password</b> <input type="password" name="password"
					class="form-control" id="exampleInputPassword1"
					placeholder="Current Password" required>
			</p>

			<p style="width: 350px;">
				<b>New Password</b> <input type="password" class="form-control"
					name="newpassword" id="newpassword" placeholder="New Password"
					required>
			</p>

			<p style="width: 350px;">
				<b>Confirm Password</b> <input type="password" class="form-control"
					name="confirmpassword" id="confirmpassword"
					placeholder="Confrim Password" required>
			</p>

			<p style="width: 350px;">
				<button type="submit" name="submit5" class="btn-primary btn">Change</button>
			</p>
		</form>


	</div>
</div>
<!--- /privacy ---->