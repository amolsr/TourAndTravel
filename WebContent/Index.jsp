<!DOCTYPE HTML>
<html>
<head>
<title>TMS | Tourism Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/26f2295f32.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.css"
	rel="stylesheet" type="text/css" media="all">
<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
<script>
	new WOW().init();
</script>
<!--//end-animate-->
</head>
<body>
	<%@ include file="Header.jsp"%>

	<%@ include file="Content.jsp"%>

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
	<%@ include file="Footer.jsp"%>
</body>
</html>