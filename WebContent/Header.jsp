<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="top-header">
	<div class="container">
		<c:choose>
			<c:when test="${uEmail eq null}">
				<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
					<li class="hm"><a href="index.php"><i class="fa fa-home"></i></a></li>
					<li class="hm"><a href="admin/index.php">Admin Login</a></li>
				</ul>
				<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s">
					<li class="tol">Toll Number : 123-4568790</li>
					<li class="sig"><a href="#" data-toggle="modal"
						data-target="#myModal">Sign Up</a></li>
					<li class="sigi"><a href="#" data-toggle="modal"
						data-target="#myModal4">/SignIn</a></li>
				</ul>
				<div class="clearfix"></div>
			</c:when>
			<c:otherwise>
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
					<li class="sig">{uEmail}</li>
					<li class="sigi"><a href="logout.php">/Logout</a></li>
				</ul>
				<div class="clearfix"></div>
			</c:otherwise>
		</c:choose>
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
			<i class="fa fa-lock"></i> <span class="securetxt">SAFE &amp;
				SECURE</span>
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
			<nav class="navbar navbar-default navbar-expand-md">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header d-none d-lg-block">
					<button class="navbar-toggler" data-toggle="collapse"
						data-target="#navcol-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="navcol-1">
					<nav class="cl-effect-1">
						<c:choose>
							<c:when test="${uEmail eq null}">
								<ul class="nav navbar-nav">
									<li><a href="Index?content=home">Home</a></li>
									<li><a href="Index?content=about">About</a></li>
									<li><a href="Index?content=package">Tour Packages</a></li>
									<li><a href="Index?content=privacy">Privacy Policy</a></li>
									<li><a href="Index?content=terms">Terms of Use</a></li>
									<li><a href="Index?content=contact">Contact Us</a></li>
									<li><a href="Index?content=enquiry"> Enquiry </a></li>
								</ul>
							</c:when>
							<c:otherwise>
								<ul class="nav navbar-nav">
									<li><a href="User?content=home">Home</a></li>
									<li><a href="User?content=about">About</a></li>
									<li><a href="User?content=package">Tour Packages</a></li>
									<li><a href="User?content=privacy">Privacy Policy</a></li>
									<li><a href="User?content=terms">Terms of Use</a></li>
									<li><a href="User?content=contact">Contact Us</a></li>
									<li><a href="User?content=help"> Help </a></li>
								</ul>
							</c:otherwise>
						</c:choose>
					</nav>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>

		<div class="clearfix"></div>
	</div>
</div>
<div class="banner">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
			TMS - Tourism Management System</h1>
	</div>
</div>
