<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="Dashboad?content=home">Home</a><i
		class="fa fa-angle-right"></i>Manage Users</li>
</ol>
<div class="agile-grids">
	<!-- tables -->

	<div class="agile-tables">
		<div class="w3l-table-info">
			<h2>Manage Users</h2>
			<table id="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Mobile No.</th>
						<th>Email Id</th>
						<th>RegDate</th>
						<th>Updation Date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="temp" items="${User}">
						<tr>
							<td><c:out value="${temp.id}"></c:out></td>
							<td><c:out value="${temp.fullName}"></c:out></td>
							<td><c:out value="${temp.mobileNumber}"></c:out></td>
							<td><c:out value="${temp.emailId}"></c:out></td>
							<td><c:out value="${temp.regDate}"></c:out></td>
							<td><c:out value="${temp.updationDate}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>