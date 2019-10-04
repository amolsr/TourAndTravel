<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="index.html">Home</a><i
		class="fa fa-angle-right"></i>Manage Bookings</li>
</ol>
<div class="agile-grids">
	<!-- tables -->
	<div class="agile-tables">
		<div class="w3l-table-info">
			<h2>Manage Bookings</h2>
			<table id="table">
				<thead>
					<tr>
						<th>Booking id</th>
						<th>Package id</th>
						<th>User Email</th>
						<th>RegDate</th>
						<th>Comment</th>
						<th>UpdationDate</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="temp" items="${Booking}">
						<tr>
							<td>#BK-<c:out value="${temp.bookingId}"></c:out></td>
							<td><a href="UpdatePackage?pid=${temp.packageId}"><c:out
										value="${temp.packageId}"></c:out></a></td>
							<td><c:out value="${temp.userEmail}"></c:out></td>
							<td><c:out value="${temp.regDate}"></c:out></td>
							<td><c:out value="${temp.comment}"></c:out></td>
							<td><c:out value="${temp.updationDate}"></c:out></td>
							<td><c:choose>
									<c:when test="${temp.status == null}">Pending</c:when>
									<c:when test="${temp.status == 'CANCELED'}">Canceled by 
									    <c:choose>
											<c:when test="${temp.cancelledBy eq 'a'}">Admin</c:when>
											<c:when test="${temp.cancelledBy eq 'u'}">User</c:when>
										</c:choose>
									</c:when>
									<c:otherwise>
										<c:out value="${temp.status}"></c:out>
									</c:otherwise>
								</c:choose></td>
							<td><c:choose>
									<c:when test="${(temp.cancelledBy eq null)}">
										<a href="ManageBooking?bkid=${temp.bookingId}"
											onclick="return confirm('Do you really want to cancel booking')">Cancel</a>/
										<a href="ManageBooking?bckid=${temp.bookingId}"
											onclick="return confirm('Do you really want to cancel booking')">Confirm</a>
									</c:when>
									<c:otherwise>
                                        Cancelled
									</c:otherwise>
								</c:choose>
							<td></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>