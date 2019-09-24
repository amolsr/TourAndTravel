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
<link rel="stylesheet" href="css/morris.css" type="text/css" />
<!-- //jQuery -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
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
						© 2016 TMS. All Rights Reserved | <a href="#">TMS</a>
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

			//CHARTS
			function gd(year, day, month) {
				return new Date(year, month - 1, day).getTime();
			}

			graphArea2 = Morris.Area({
				element : 'hero-area',
				padding : 10,
				behaveLikeLine : true,
				gridEnabled : false,
				gridLineColor : '#dddddd',
				axes : true,
				resize : true,
				smooth : true,
				pointSize : 0,
				lineWidth : 0,
				fillOpacity : 0.85,
				data : [ {
					period : '2014 Q1',
					iphone : 2668,
					ipad : null,
					itouch : 2649
				}, {
					period : '2014 Q2',
					iphone : 15780,
					ipad : 13799,
					itouch : 12051
				}, {
					period : '2014 Q3',
					iphone : 12920,
					ipad : 10975,
					itouch : 9910
				}, {
					period : '2014 Q4',
					iphone : 8770,
					ipad : 6600,
					itouch : 6695
				}, {
					period : '2015 Q1',
					iphone : 10820,
					ipad : 10924,
					itouch : 12300
				}, {
					period : '2015 Q2',
					iphone : 9680,
					ipad : 9010,
					itouch : 7891
				}, {
					period : '2015 Q3',
					iphone : 4830,
					ipad : 3805,
					itouch : 1598
				}, {
					period : '2015 Q4',
					iphone : 15083,
					ipad : 8977,
					itouch : 5185
				}, {
					period : '2016 Q1',
					iphone : 10697,
					ipad : 4470,
					itouch : 2038
				}, {
					period : '2016 Q2',
					iphone : 8442,
					ipad : 5723,
					itouch : 1801
				} ],
				lineColors : [ '#ff4a43', '#a2d200', '#22beef' ],
				xkey : 'period',
				redraw : true,
				ykeys : [ 'iphone', 'ipad', 'itouch' ],
				labels : [ 'All Visitors', 'Returning Visitors',
						'Unique Visitors' ],
				pointSize : 2,
				hideHover : 'auto',
				resize : true
			});

		});
	</script>
</body>
</html>