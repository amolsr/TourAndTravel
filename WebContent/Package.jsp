<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="banner-3">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
			TMS - Package List</h1>
	</div>
</div>
<div class="rooms">
	<div class="container">
		<div class="room-bottom">
			<h3>Package List</h3>

			<c:forEach var="temp" items="${Tour}">
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
							&#8377
							<c:out value="${temp.packagePrice}"></c:out>
						</h5>
						<a href="PackageDetails?pkgid=${temp.id}" class="view">Details</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>