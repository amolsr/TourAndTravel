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
						<th>Status</th>
						<th>UpdationDate</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="temp" items="${Book}">
						<tr>
							<td>#BK-<c:out value="${temp.BookingId}"></c:out></td>
							<td><a href="UpdatePackage?pid=${temp.PackageId}"><c:out
										value="${temp.PackageId}"></c:out></a></td>
							<td><c:out value="${temp.UserEmail}"></c:out></td>
							<td><c:out value="${temp.RegDate}"></c:out></td>
							<td><c:out value="${temp.Comment}"></c:out></td>
							<td><c:out value="${temp.UpdationDate}"></c:out></td>
							<td><c:choose>
									<c:when test="${temp.status == null}">Pending</c:when>
									<c:when test="${temp.status == 'cancel'}">Canceled by 
									    <c:choose>
											<c:when test="${temp.CancelledBy eq 'a'}">Admin</c:when>
											<c:when test="${temp.CancelledBy eq 'u'}">User</c:when>
										</c:choose>
									</c:when>
									<c:otherwise>
										<c:out value="${temp.status}"></c:out>
									</c:otherwise>
								</c:choose></td>
							<td><c:choose>
									<c:when test="${(temp.CancelledBy eq null)}">
										<a href="ManagePackage?bkid=11"
											onclick="return confirm('Do you really want to cancel booking')">Cancel</a>/
										<a href="ManagePackage?bckid=11"
											onclick="return confirm('Do you really want to cancel booking')">Confirm</a>
									</c:when>
									<c:otherwise>
                                        Cancelled
									</c:otherwise>
								</c:choose>
							<td></td>
						</tr>
					</c:forEach>

					<tr>
						<td>#BK-10</td>
						<td>XYZ</td>
						<td>8888888888</td>
						<td>abc@g.com</td>
						<td><a href="update-package.php?pid=5">Coorg : Tour
								Packages</a></td>
						<td>05/22/2017 To 05/24/2017</td>
						<td>test test t test test ttest test ttest test ttest test
							ttest test ttest test ttest test ttest test ttest test ttest test
							ttest test ttest test ttest test t</td>
						<td>Confirmed</td>

						<td><a href="manage-bookings.php?bkid=10"
							onclick="return confirm('Do you really want to cancel booking')">Cancel</a>
							/ <a href="manage-bookings.php?bckid=10"
							onclick="return confirm('Do you really want to cancel booking')">Confirm</a></td>

					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>