<!--/sidebar-menu-->
<div class="sidebar-menu">
	<header class="logo1">
		<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
		</a>
	</header>
	<div style="border-top: 1px ridge rgba(255, 255, 255, 0.15)"></div>
	<div class="menu">
		<ul id="menu">
			<li><a href="DashBoard"><i class="fa fa-tachometer"></i> <span>Dashboard</span>
			</a></li>
			<li id="menu-academico"><a href="#"><i class="fa fa-list-ul"
					aria-hidden="true"></i><span> Tour Packages</span> <span
					class="fa fa-angle-right" style="float: right"></span> </a>
				<ul id="menu-academico-sub">
					<li id="menu-academico-avaliacoes"><a
						href="DashBoard?content=create">Create</a></li>
					<li id="menu-academico-avaliacoes"><a href="ManageTour">Manage</a></li>
				</ul></li>
			<li id="menu-academico"><a href="ManageUser"><i
					class="fa fa-users" aria-hidden="true"></i><span>Manage
						Users</span> </a></li>
			<li><a href="ManageBooking"><i class="fa fa-list"
					aria-hidden="true"></i> <span>Manage Booking</span> </a></li>
			<li><a href="ManageIssue"><i class="fa fa-table"></i> <span>Manage
						Issues</span> </a></li>
			<li><a href="ManageEnquiry"><i class="fa fa-file-text-o"
					aria-hidden="true"></i> <span>Manage Enquiries</span> </a></li>
			<li><a href="manage-pages.jsp"><i class="fa fa-file-text-o"
					aria-hidden="true"></i> <span>Manage Pages</span> </a></li>


		</ul>
	</div>
</div>
<div class="clearfix"></div>
<script>
	var toggle = true;
	jQuery(function($) {
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
	});
</script>