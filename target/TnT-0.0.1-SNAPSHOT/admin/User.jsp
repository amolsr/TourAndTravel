
<!DOCTYPE HTML>
<html>
<head>
<title>TMS | Admin manage Users</title>
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
					class="fa fa-angle-right"></i>Manage Users</li>
			</ol>
			<div class="agile-grids">
				<!-- tables -->

				<div class="agile-tables">
					<div class="w3l-table-info">
						<h2>Manage Users</h2>
						<table id="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Name</th>
									<th>Mobile No.</th>
									<th>Email Id</th>
									<th>RegDate</th>
									<th>Updation Date</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>1</td>
									<td>Anuj kumar</td>
									<td>1111111111</td>
									<td>anuj@gmail.com</td>
									<td>2017-05-10 16:08:17</td>
									<td>2019-07-21 01:48:18</td>
								</tr>

								<tr>
									<td>2</td>
									<td>sarita</td>
									<td>9999999999</td>
									<td>sarita@gmail.com</td>
									<td>2017-05-10 16:20:48</td>
									<td>2017-05-14 13:10:19</td>
								</tr>

								<tr>
									<td>3</td>
									<td>test</td>
									<td>7676767676</td>
									<td>test@gm.com</td>
									<td>2017-05-10 16:24:56</td>
									<td>0000-00-00 00:00:00</td>
								</tr>

								<tr>
									<td>4</td>
									<td>Anuj kumar</td>
									<td>9999999999</td>
									<td>demo@gmail.com</td>
									<td>2017-05-14 12:47:44</td>
									<td>0000-00-00 00:00:00</td>
								</tr>

								<tr>
									<td>5</td>
									<td>XYZabc</td>
									<td>3333333333</td>
									<td>xyz@gmail.com</td>
									<td>2017-05-14 12:55:13</td>
									<td>2017-05-14 12:55:42</td>
								</tr>

								<tr>
									<td>6</td>
									<td>Anuj Kumar</td>
									<td>4543534534</td>
									<td>demo@test.com</td>
									<td>2017-05-14 13:13:23</td>
									<td>2017-05-14 13:16:57</td>
								</tr>

								<tr>
									<td>7</td>
									<td>XYZ</td>
									<td>8888888888</td>
									<td>abc@g.com</td>
									<td>2017-05-14 13:24:32</td>
									<td>2017-05-14 13:25:17</td>
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