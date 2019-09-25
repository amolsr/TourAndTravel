
<!DOCTYPE HTML>
<html>
<head>
<title>TMS | Admin Package Creation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
				<li class="breadcrumb-item"><a href="index.html">Home</a><i
					class="fa fa-angle-right"></i>Update Tour Package</li>
			</ol>
			<!--grid-->
			<div class="grid-form">

				<!---->
				<div class="grid-form1">
					<h3>Update Package</h3>
					<div class="tab-content">
						<div class="tab-pane active" id="horizontal-form">


							<form class="form-horizontal" name="package" method="post"
								enctype="multipart/form-data">
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Package
										Name</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="packagename"
											id="packagename" placeholder="Create Package"
											value="Manali Trip " required>
									</div>
								</div>
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Package
										Type</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="packagetype"
											id="packagetype"
											placeholder=" Package Type eg- Family Package / Couple Package"
											value="General" required>
									</div>
								</div>

								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Package
										Location</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1"
											name="packagelocation" id="packagelocation"
											placeholder=" Package Location" value="Kullu Manali India"
											required>
									</div>
								</div>

								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Package
										Price in USD</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="packageprice"
											id="packageprice" placeholder=" Package Price is USD"
											value="100" required>
									</div>
								</div>

								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Package
										Features</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1"
											name="packagefeatures" id="packagefeatures"
											placeholder="Package Features Eg-free Pickup-drop facility"
											value="Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer"
											required>
									</div>
								</div>


								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Package
										Details</label>
									<div class="col-sm-8">
										<textarea class="form-control" rows="5" cols="50"
											name="packagedetails" id="packagedetails"
											placeholder="Package Details" required>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Package
										Image</label>
									<div class="col-sm-8">
										<img
											src="pacakgeimages/14287acc-b5cb-46db-b8b4-e3ffe652fc0d.png"
											width="200">&nbsp;&nbsp;&nbsp;<a
											href="change-image.php?imgid=1">Change Image</a>
									</div>
								</div>

								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Last
										Updation Date</label>
									<div class="col-sm-8">2017-05-13 23:21:01</div>
								</div>

								<div class="row">
									<div class="col-sm-8 col-sm-offset-2">
										<button type="submit" name="submit" class="btn-primary btn">Update</button>
									</div>
								</div>
						</div>

						</form>





						<div class="panel-footer"></div>
						</form>
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
					<li><a href="manage-pages.php"><i
							class="fa fa-file-text-o" aria-hidden="true"></i> <span>Manage
								Pages</span>
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
	<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<!-- /Bootstrap Core JavaScript -->

</body>
</html>
