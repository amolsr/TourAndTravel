<!DOCTYPE HTML>
<html>
<head>
<title>DashBoard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="./css/admin-style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/26f2295f32.js"></script>
<!-- //jQuery -->
<!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery.basictable/1.0.9/basictable.min.css" />
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.basictable/1.0.9/jquery.basictable.min.js"></script>
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
</head>
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="mother-grid-inner">
				<jsp:include page="./Header.jsp"></jsp:include>
				<jsp:include page="./Content.jsp"></jsp:include>
				<!--copy rights start here-->
				<div class="copyrights">
					<p>
						� 2016 TMS. All Rights Reserved | <a href="#">TMS</a>
					</p>
				</div>
			</div>
		</div>
		<jsp:include page="./SideBar.jsp"></jsp:include>
	</div>
	<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- morris JavaScript -->
	<script src="js/raphael-min.js"></script>
	<script src="js/morris.js"></script>
	<script>
		jQuery(function($) {
			//BOX BUTTON SHOW AND CLOSE
			$('.small-graph-box').hover(function() {
				$(this).find('.box-button').fadeIn('fast');
			}, function() {
				$(this).find('.box-button').fadeOut('fast');
			});
			$('.small-graph-box .box-close').click(function() {
				$(this).closest('.small-graph-box').fadeOut(200);
				return false;
			});
		});
	</script>
</body>
</html>