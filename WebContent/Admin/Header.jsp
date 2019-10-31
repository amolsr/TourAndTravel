<!--header start here-->
<div class="header-main">
	<div class="logo-w3-agile">
		<h1>
			<a href="Admin">Tourism Management System</a>
		</h1>
	</div>


	<div class="profile_details w3l">
		<ul>
			<li class="dropdown profile_details_drop"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					<div class="profile_img">
						<span class="prfil-img"><img src="img/User-icon.png" alt="">
						</span>
						<div class="user-name">
							<p>Welcome</p>
							<span>Administrator</span>
						</div>
						<i class="fa fa-angle-down"></i> <i class="fa fa-angle-up"></i>
						<div class="clearfix"></div>
					</div>
			</a>
				<ul class="dropdown-menu drp-mnu">
					<li><a href="DashBoard?content=changepass"><i
							class="fa fa-user"></i> Profile</a></li>
					<li><a href="./Logout"><i class="fa fa-sign-out"></i>
							Logout</a></li>
				</ul></li>
		</ul>
	</div>
	<div class="clearfix"></div>
</div>
<!--header end here-->
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