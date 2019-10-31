<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="index.html">Home</a><i
		class="fa fa-angle-right"></i>Manage Enquiries</li>
</ol>
<div class="agile-grids">
	<!-- tables -->
	<div class="agile-tables">
		<div class="w3l-table-info">
			<h2>Manage Enquiries</h2>
			<table id="table">
				<thead>
					<tr>
						<th>Ticket id</th>
						<th>Name</th>
						<th>Mobile No./ Email</th>
						<th>Subject</th>
						<th>Description</th>
						<th>Posting date</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="temp" items="${Enquiry}">
						<tr>
							<td><c:out value="${temp.id}"></c:out></td>
							<td><c:out value="${temp.fullName}"></c:out></td>
							<td><c:out value="${temp.mobileNumber}"></c:out>/<br /> <c:out
									value="${temp.emailId}"></c:out></td>
							<td><c:out value="${temp.subject}"></c:out></td>
							<td><c:out value="${temp.description}"></c:out></td>
							<td><c:out value="${temp.postingDate}"></c:out></td>
							<td><c:out value="${temp.status}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>