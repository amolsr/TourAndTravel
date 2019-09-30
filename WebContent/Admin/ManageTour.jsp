<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="index.html">Home</a><i
		class="fa fa-angle-right"></i>Manage Packages</li>
</ol>
<div class="agile-grids">
	<!-- tables -->
	<script type="text/javascript" src="./js/ManageTour.js"></script>
	<div class="agile-tables">
		<div class="w3l-table-info">
			<h2>Manage Packages</h2>
			<table id="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Type</th>
						<th>Location</th>
						<th>From</th>
						<th>To</th>
						<th>Price</th>
						<th>Creation Date</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="temp" items="${Tour}">
						<tr>
							<td><c:out value="${temp.id}"></c:out></td>
							<td><c:out value="${temp.packageName}"></c:out></td>
							<td><c:out value="${temp.packageType}"></c:out></td>
							<td><c:out value="${temp.packageLocation}"></c:out></td>
							<td><c:out value="${temp.from}"></c:out></td>
							<td><c:out value="${temp.to}"></c:out></td>
							<td><c:out value="${temp.packagePrice}"></c:out></td>
							<td><c:out value="${temp.creationDate}"></c:out></td>
							<td><a href="UpdatePackage?tid=${temp.id}"><button
										type="button" class="btn btn-primary btn-block">View
										Details</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>