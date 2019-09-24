
<!DOCTYPE HTML>
<html>
<head>
<title>TMS | admin manage packages</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css" />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#table').basictable();

		$('#table-breakpoint').basictable({
			breakpoint : 768
		});

		$('#table-swap-axis').basictable({
			swapAxis : true
		});

		$('#table-force-off').basictable({
			forceResponsive : false
		});

		$('#table-no-resize').basictable({
			noResize : true
		});

		$('#table-two-axis').basictable();

		$('#table-max-height').basictable({
			tableWrapper : true
		});
	});
</script>
<!-- //tables -->
<link
	href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400'
	rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
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
					class="fa fa-angle-right"></i>Manage Packages</li>
			</ol>
			<div class="agile-grids">
				<!-- tables -->

				<div class="agile-tables">
					<div class="w3l-table-info">
						<h2>Manage Packages</h2>
						<table id="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Name</th>
									<th>Type</th>
									<th>Location</th>
									<th>Price</th>
									<th>Creation Date</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>1</td>
									<td>Manali Trip</td>
									<td>General</td>
									<td>Kullu Manali India</td>
									<td>$100</td>
									<td>2017-05-13 19:53:44</td>
									<td><a href="update-package.php?pid=1"><button
												type="button" class="btn btn-primary btn-block">View
												Details</button></a></td>
								</tr>

								<tr>
									<td>2</td>
									<td>Test</td>
									<td>Test</td>
									<td>Delhi India</td>
									<td>$5433</td>
									<td>2017-05-13 20:54:26</td>
									<td><a href="update-package.php?pid=2"><button
												type="button" class="btn btn-primary btn-block">View
												Details</button></a></td>
								</tr>

								<tr>
									<td>3</td>
									<td>Demo Demo Demo Demo test</td>
									<td>Demo Demo Demo Demo Demo Demo test</td>
									<td>Demo Demo Demo Demo Demo Demo test</td>
									<td>$1000</td>
									<td>2017-05-13 21:30:58</td>
									<td><a href="update-package.php?pid=3"><button
												type="button" class="btn btn-primary btn-block">View
												Details</button></a></td>
								</tr>

								<tr>
									<td>4</td>
									<td>Kerla</td>
									<td>Familty and Couple</td>
									<td>Kerlal</td>
									<td>$2000</td>
									<td>2017-05-14 04:09:37</td>
									<td><a href="update-package.php?pid=4"><button
												type="button" class="btn btn-primary btn-block">View
												Details</button></a></td>
								</tr>

								<tr>
									<td>5</td>
									<td>Coorg : Tour Packages</td>
									<td>General</td>
									<td>Coorg</td>
									<td>$3000</td>
									<td>2017-05-14 04:12:10</td>
									<td><a href="update-package.php?pid=5"><button
												type="button" class="btn btn-primary btn-block">View
												Details</button></a></td>
								</tr>

								<tr>
									<td>6</td>
									<td>Indonesia</td>
									<td>Family</td>
									<td>Indonesia</td>
									<td>$5000</td>
									<td>2017-05-14 13:31:08</td>
									<td><a href="update-package.php?pid=6"><button
												type="button" class="btn btn-primary btn-block">View
												Details</button></a></td>
								</tr>
							</tbody>
						</table>
					</div>
					</table>


				</div>
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