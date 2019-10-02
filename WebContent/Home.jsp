<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="banner">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
			TMS - Tourism Management System</h1>
	</div>
</div>
<!--- Offers ---->
<div class="container ">
	<div class="rupes d-flex">

		<div class="col-md-4 rupes-left wow fadeInDown animated animated"
			data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
			<div class="rup-left">
				<a href="offers.html"><i class="fa fa-usd"></i></a>
			</div>
			<div class="rup-rgt">
				<h3>UP TO USD. 50 OFF</h3>
				<h4>
					<a href="offers.html">TRAVEL SMART</a>
				</h4>
			</div>
			<div class="clearfix"></div>
		</div>

		<div class="col-md-4 rupes-left wow fadeInDown animated animated"
			data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
			<div class="rup-left">
				<a href="offers.html"><i class="fa fa-h-square"></i></a>
			</div>
			<div class="rup-rgt">
				<h3>UP TO 70% OFF</h3>
				<h4>
					<a href="offers.html">ON HOTELS ACROSS WORLD</a>
				</h4>
			</div>
			<div class="clearfix"></div>
		</div>

		<div class="col-md-4 rupes-left wow fadeInDown animated animated"
			data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
			<div class="rup-left">
				<a href="offers.html"><i class="fa fa-mobile"></i></a>
			</div>
			<div class="rup-rgt">
				<h3>FLAT USD. 50 OFF</h3>
				<h4>
					<a href="offers.html">US APP OFFER</a>
				</h4>

			</div>
			<div class="clearfix"></div>
		</div>

	</div>
</div>
<!--- /Offer ---->

<!---holiday---->
<div class="container">
	<div class="holiday">

		<h3>Package List</h3>

		<c:forEach var="temp" items="${Sample}">
			<div class="rom-btm">
				<div class="col-md-3 room-left wow fadeInLeft animated"
					data-wow-delay=".5s">
					<img src="${temp.packageImage}" class="img-responsive" alt="">
				</div>
				<div class="col-md-6 room-midle wow fadeInUp animated"
					data-wow-delay=".5s">
					<h4>
						Package Name:
						<c:out value="${temp.packageName}"></c:out>
					</h4>
					<h6>
						Package Type :
						<c:out value="${temp.packageType}"></c:out>
					</h6>
					<p>
						<b>Package Location :</b>
						<c:out value="${temp.packageLocation}"></c:out>
					</p>
					<p>
						<b>Features</b>
						<c:out value="${temp.packageFeatures}"></c:out>
					</p>
				</div>
				<div class="col-md-3 room-right wow fadeInRight animated"
					data-wow-delay=".5s">
					<h5>
						&#8377 <c:out value="${temp.packagePrice}"></c:out>
					</h5>
					<a href="PackageDetails?pkgid=${temp.id}" class="view">Details</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</c:forEach>

		<div>
			<a href="ViewPackage" class="view">View More Packages</a>
		</div>
	</div>
	<div class="clearfix"></div>
</div>



<!--- routes ---->
<div class="routes">
	<div class="container">
		<div class="col-md-4 routes-left wow fadeInRight animated"
			data-wow-delay=".5s">
			<div class="rou-left">
				<a href="#"><i class="glyphicon glyphicon-list-alt"></i></a>
			</div>
			<div class="rou-rgt wow fadeInDown animated" data-wow-delay=".5s">
				<h3>80000</h3>
				<p>Enquiries</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-4 routes-left">
			<div class="rou-left">
				<a href="#"><i class="fa fa-user"></i></a>
			</div>
			<div class="rou-rgt">
				<h3>1900</h3>
				<p>Regestered users</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-4 routes-left wow fadeInRight animated"
			data-wow-delay=".5s">
			<div class="rou-left">
				<a href="#"><i class="fa fa-ticket"></i></a>
			</div>
			<div class="rou-rgt">
				<h3>7,00,00,000+</h3>
				<p>Booking</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>