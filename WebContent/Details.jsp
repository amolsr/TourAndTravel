<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="banner-3">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
			TMS -Package Details</h1>
	</div>
</div>
<!--- /banner ---->
<!--- selectroom ---->
<div class="selectroom">
	<div class="container">
		<c:set var="temp" scope="page" value="${Package}" />
		<form>
			<div class="selectroom_top">
				<div class="col-md-4 selectroom_left wow fadeInLeft animated"
					data-wow-delay=".5s">
					<img src="${temp.packageImage}" class="img-responsive" alt="">
				</div>
				<div class="col-md-8 selectroom_right wow fadeInRight animated"
					data-wow-delay=".5s">
					<h2>
						<c:out value="${temp.packageName}"></c:out>
					</h2>
					<p class="dow">
						#PKG-
						<c:out value="${temp.id}"></c:out>
						<input type="text" name="pkgid" style="display: none;"
							value="${temp.id}">
					</p>
					<p>
						<b>Package Type :</b>
						<c:out value="${temp.packageType}"></c:out>
					</p>
					<p>
						<b>Package Location :</b>
						<c:out value="${temp.packageLocation}"></c:out>
					</p>
					<p>
						<b>Features</b>
						<c:out value="${temp.packageFeatures}"></c:out>
					</p>
					<div class="ban-bottom">
						<div class="bnr-right">
							<label class="inputLabel">From</label>
							<h5>${temp.from}</h5>
						</div>
						<div class="bnr-right">
							<label class="inputLabel">To</label>
							<h5>${temp.to}</h5>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="grand">
						<p>Grand Total</p>
						<h3>
							&#8377
							<c:out value="${temp.packagePrice}"></c:out>
						</h3>
					</div>
				</div>
				<h3>Package Details</h3>
				<p style="padding-top: 1%">
					<c:out value="${temp.packageDetails}"></c:out>
				</p>
				<div class="clearfix"></div>
			</div>
			<div class="selectroom_top">
				<h2>Travels</h2>
				<div class="selectroom-info animated wow fadeInUp animated"
					data-wow-duration="1200ms" data-wow-delay="500ms"
					style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp; margin-top: -70px">
					<ul>
						<li class="spe"><label class="inputLabel">Comment</label> <input
							class="special" type="text" name="comment" required></li>
						<li class="spe" align="center"><button type="submit"
								name="submit2" class="btn-primary btn">Book</button></li>
						<div class="clearfix"></div>
					</ul>
				</div>

			</div>
		</form>
		<script type="text/javascript" src="js/Booking.js"></script>

	</div>
</div>
<!--- /selectroom ---->