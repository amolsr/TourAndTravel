
<!DOCTYPE HTML>
<html>
<head>
<title>TMS | Tourism Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tourism Management System In PHP" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet'
	type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css"
	media="all">
<script src="js/wow.min.js"></script>
<script>
	new WOW().init();
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
	<!-- top-header -->
	<div class="top-header">
		<div class="top-header">
			<div class="container">
				<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
					<li class="hm"><a href="index.html"><i class="fa fa-home"></i></a></li>
					<li class="prnt"><a href="profile.php">My Profile</a></li>
					<li class="prnt"><a href="change-password.php">Change
							Password</a></li>
					<li class="prnt"><a href="tour-history.php">My Tour
							History</a></li>
					<li class="prnt"><a href="issuetickets.php">Issue Tickets</a></li>
				</ul>
				<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s">
					<li class="tol">Welcome :</li>
					<li class="sig">anuj@gmail.com</li>
					<li class="sigi"><a href="logout.php">/ Logout</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--- /top-header ---->
		<!--- header ---->
		<div class="header">
			<div class="container">
				<div class="logo wow fadeInDown animated" data-wow-delay=".5s">
					<a href="index.php">Tourism <span>Management System</span></a>
				</div>

				<div class="lock fadeInDown animated" data-wow-delay=".5s">
					<li><i class="fa fa-lock"></i></li>
					<li><div class="securetxt">SAFE &amp; SECURE</div></li>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--- /header ---->
		<!--- footer-btm ---->
		<div class="footer-btm wow fadeInLeft animated" data-wow-delay=".5s">
			<div class="container">
				<div class="navigation">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse nav-wil"
							id="bs-example-navbar-collapse-1">
							<nav class="cl-effect-1">
								<ul class="nav navbar-nav">
									<li><a href="index.php">Home</a></li>
									<li><a href="page.php?type=aboutus">About</a></li>
									<li><a href="package-list.php">Tour Packages</a></li>
									<li><a href="page.php?type=privacy">Privacy Policy</a></li>
									<li><a href="page.php?type=terms">Terms of Use</a></li>
									<li><a href="page.php?type=contact">Contact Us</a></li>
									<li>Need Help?<a href="#" data-toggle="modal"
										data-target="#myModal3"> / Write Us </a>
									</li>
									<div class="clearfix"></div>

								</ul>
							</nav>
						</div>
						<!-- /.navbar-collapse -->
					</nav>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
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
				<form name="chngpwd" method="post">


					<p style="width: 350px;">

						<b>Name</b> <input type="text" name="name" value="Anuj kumar"
							class="form-control" id="name" required="">
					</p>

					<p style="width: 350px;">
						<b>Mobile Number</b> <input type="text" class="form-control"
							name="mobileno" maxlength="10" value="1111111111" id="mobileno"
							required="">
					</p>

					<p style="width: 350px;">
						<b>Email Id</b> <input type="email" class="form-control"
							name="email" value="anuj@gmail.com" id="email" readonly>
					</p>
					<p style="width: 350px;">
						<b>Last Updation Date : </b> 2019-07-21 01:48:18
					</p>

					<p style="width: 350px;">
						<b>Reg Date :</b> 2017-05-10 16:08:17
					</p>

					<p style="width: 350px;">
						<button type="submit" name="submit6" class="btn-primary btn">Updtae</button>
					</p>
				</form>


			</div>
		</div>
		<!--- /privacy ---->
		<!--- footer-top ---->
		<!--- /footer-top ---->




		<!--- /footer-top ---->
		<!---copy-right ---->
		<div class="copy-right">
			<div class="container">

				<div class="footer-social-icons wow fadeInDown animated animated"
					data-wow-delay=".5s"
					style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
					<ul>
						<li><a class="facebook" href="#"><span>Facebook</span></a></li>
						<li><a class="twitter" href="#"><span>Twitter</span></a></li>
						<li><a class="flickr" href="#"><span>Flickr</span></a></li>
						<li><a class="googleplus" href="#"><span>Google+</span></a></li>
						<li><a class="dribbble" href="#"><span>Dribbble</span></a></li>
					</ul>
				</div>
				<p class="wow zoomIn animated animated" data-wow-delay=".5s"
					style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">©
					2017 TMS . All Rights Reserved</p>
			</div>
		</div>
		<!-- signup -->
		<!--Javascript for check email availabilty-->
		<script>
			function checkAvailability() {

				$("#loaderIcon").show();
				jQuery.ajax({
					url : "check_availability.php",
					data : 'emailid=' + $("#email").val(),
					type : "POST",
					success : function(data) {
						$("#user-availability-status").html(data);
						$("#loaderIcon").hide();
					},
					error : function() {
					}
				});
			}
		</script>

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<section>
						<div class="modal-body modal-spa">
							<div class="login-grids">
								<div class="login">
									<div class="login-left">
										<ul>
											<li><a class="fb" href="#"><i></i>Facebook</a></li>
											<li><a class="goog" href="#"><i></i>Google</a></li>

										</ul>
									</div>
									<div class="login-right">
										<form name="signup" method="post">
											<h3>Create your account</h3>


											<input type="text" value="" placeholder="Full Name"
												name="fname" autocomplete="off" required=""> <input
												type="text" value="" placeholder="Mobile number"
												maxlength="10" name="mobilenumber" autocomplete="off"
												required=""> <input type="text" value=""
												placeholder="Email id" name="email" id="email"
												onBlur="checkAvailability()" autocomplete="off" required="">
											<span id="user-availability-status" style="font-size: 12px;"></span>
											<input type="password" value="" placeholder="Password"
												name="password" required=""> <input type="submit"
												name="submit" id="submit" value="CREATE ACCOUNT">
										</form>
									</div>
									<div class="clearfix"></div>
								</div>
								<p>
									By logging in you agree to our <a href="page.php?type=terms">Terms
										and Conditions</a> and <a href="page.php?type=privacy">Privacy
										Policy</a>
								</p>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- //signu -->
		<!-- signin -->

		<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-info">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body modal-spa">
						<div class="login-grids">
							<div class="login">
								<div class="login-left">
									<ul>
										<li><a class="fb" href="#"><i></i>Facebook</a></li>
										<li><a class="goog" href="#"><i></i>Google</a></li>

									</ul>
								</div>
								<div class="login-right">
									<form method="post">
										<h3>Signin with your account</h3>
										<input type="text" name="email" id="email"
											placeholder="Enter your Email" required=""> <input
											type="password" name="password" id="password"
											placeholder="Password" value="" required="">
										<h4>
											<a href="forgot-password.php">Forgot password</a>
										</h4>

										<input type="submit" name="signin" value="SIGNIN">
									</form>
								</div>
								<div class="clearfix"></div>
							</div>
							<p>
								By logging in you agree to our <a href="page.php?type=terms">Terms
									and Conditions</a> and <a href="page.php?type=privacy">Privacy
									Policy</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //signin -->
		<!-- write us -->


		<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<section>
						<form name="help" method="post">
							<div class="modal-body modal-spa">
								<div class="writ">
									<h4>HOW CAN WE HELP YOU</h4>
									<ul>

										<li class="na-me"><select id="country" name="issue"
											class="frm-field required sect" required="">
												<option value="">Select Issue</option>
												<option value="Booking Issues">Booking Issues</option>
												<option value="Cancellation">Cancellation</option>
												<option value="Refund">Refund</option>
												<option value="Other">Other</option>
										</select></li>

										<li class="descrip"><input class="special" type="text"
											placeholder="description" name="description" required="">
										</li>
										<div class="clearfix"></div>
									</ul>
									<div class="sub-bn">
										<form>
											<button type="submit" name="submit" class="subbtn">Submit</button>
										</form>
									</div>
								</div>
							</div>
						</form>
					</section>
				</div>
			</div>
		</div>
</body>
</html>
