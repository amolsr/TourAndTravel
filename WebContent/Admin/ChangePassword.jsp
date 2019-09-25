<!DOCTYPE HTML>
<html>
<head>
<title>TMS | Admin Change Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>

<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css" />
<link href="css/font-awesome.css" rel="stylesheet">
<script src="js/jquery-2.1.4.min.js"></script>
<link
	href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400'
	rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
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

</head>
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="mother-grid-inner">
				<!--header start here-->
				<div class="header-main">
					<div class="logo-w3-agile">
						<h1>
							<a href="dashboard.php">Tourism Management System</a>
						</h1>
					</div>


					<div class="profile_details w3l">
						<ul>
							<li class="dropdown profile_details_drop"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false">
									<div class="profile_img">
										<span class="prfil-img"><img src="images/User-icon.png"
											alt=""> </span>
										<div class="user-name">
											<p>Welcome</p>
											<span>Administrator</span>
										</div>
										<i class="fa fa-angle-down"></i> <i class="fa fa-angle-up"></i>
										<div class="clearfix"></div>
									</div>
							</a>
								<ul class="dropdown-menu drp-mnu">
									<li><a href="change-password.php"><i
											class="fa fa-user"></i> Profile</a></li>
									<li><a href="logout.php"><i class="fa fa-sign-out"></i>
											Logout</a></li>
								</ul></li>
						</ul>
					</div>

					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!--heder end here-->
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
											required="">
									</div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label">New Password</label>
								<div class="col-md-8">
									<div class="input-group">
										<span class="input-group-addon"> <i class="fa fa-key"></i>
										</span> <input type="password" class="form-control1"
											name="newpassword" id="newpassword"
											placeholder="New Password" required="">
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
											placeholder="Confrim Password" required="">
									</div>
								</div>
							</div>

							<div class="col-sm-8 col-sm-offset-2">
								<button type="submit" name="submit" class="btn-primary btn">Submit</button>
								<button type="reset" class="btn-inverse btn">Reset</button>
							</div>
					</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<!--//grid-->

	<!-- script-for sticky-nav -->
	<script>
		$(document).ready(function() {
			var navoffeset = $(".header-main").offset().top;
			$(window).scroll(function() {
				var scrollpos = $(window).scrollTop();
				if (scrollpos >= navoffeset) {
					$(".header-main").addClass("fixed");
				} else {
					$(".header-main").removeClass("fixed");
				}
			});

		});
	</script>
	<!-- /script-for sticky-nav -->
	<!--inner block start here-->
	<div class="inner-block"></div>
	<!--inner block end here-->
	<!--copy rights start here-->
	<div class="copyrights">
		<p>
			© 2016 TMS. All Rights Reserved | <a href="#">TMS</a>
		</p>
	</div>
	<!--COPY rights end here-->
	</div>
	</div>
	<!--//content-inner-->
	<!--/sidebar-menu-->
	<div class="sidebar-menu">
		<header class="logo1">
			<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
			</a>
		</header>
		<div style="border-top: 1px ridge rgba(255, 255, 255, 0.15)"></div>
		<div class="menu">
			<ul id="menu">
				<li><a href="dashboard.php"><i class="fa fa-tachometer"></i>
						<span>Dashboard</span>
						<div class="clearfix"></div></a></li>

				<li id="menu-academico"><a href="#"><i
						class="fa fa-list-ul" aria-hidden="true"></i><span> Tour
							Packages</span> <span class="fa fa-angle-right" style="float: right"></span>
						<div class="clearfix"></div></a>
					<ul id="menu-academico-sub">
						<li id="menu-academico-avaliacoes"><a
							href="create-package.php">Create</a></li>
						<li id="menu-academico-avaliacoes"><a
							href="manage-packages.php">Manage</a></li>
					</ul></li>
				<li id="menu-academico"><a href="manage-users.php"><i
						class="fa fa-users" aria-hidden="true"></i><span>Manage
							Users</span>
						<div class="clearfix"></div></a></li>

				<li><a href="manage-bookings.php"><i class="fa fa-list"
						aria-hidden="true"></i> <span>Manage Booking</span>
						<div class="clearfix"></div></a></li>
				<li><a href="manageissues.php"><i class="fa fa-table"></i>
						<span>Manage Issues</span>
						<div class="clearfix"></div></a></li>
				<li><a href="manage-enquires.php"><i
						class="fa fa-file-text-o" aria-hidden="true"></i> <span>Manage
							Enquiries</span>
						<div class="clearfix"></div></a></li>
				<li><a href="manage-pages.php"><i class="fa fa-file-text-o"
						aria-hidden="true"></i> <span>Manage Pages</span>
						<div class="clearfix"></div></a></li>


			</ul>
		</div>
	</div>
	<div class="clearfix"></div>
	</div>
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}

					toggle = !toggle;
				});
	</script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>
