<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script language="javascript" type="text/javascript">
	var popUpWin = 0;
	function popUpWindow(URLStr, left, top, width, height) {
		if (popUpWin) {
			if (!popUpWin.closed)
				popUpWin.close();
		}
		popUpWin = open(
				URLStr,
				'popUpWin',
				'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='
						+ 600
						+ ',height='
						+ 600
						+ ',left='
						+ left
						+ ', top='
						+ top + ',screenX=' + left + ',screenY=' + top + '');
	}
</script>
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="index.html">Home</a><i
		class="fa fa-angle-right"></i>Manage Issues</li>
</ol>
<div class="agile-grids">
	<!-- tables -->
	<div class="agile-tables">
		<div class="w3l-table-info">
			<h2>Manage Issues</h2>
			<table id="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Email Id</th>
						<th>Issues</th>
						<th>Description</th>
						<th>Posting date</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="temp" items="${Issue}">
						<tr>
							<td><c:out value="${temp.id}"></c:out></td>
							<td><c:out value="${temp.userEmail}"></c:out></td>
							<td><c:out value="${temp.issue}"></c:out></td>
							<td><c:out value="${temp.description}"></c:out></td>
							<td><c:out value="${temp.postingDate}"></c:out></td>
							<td><a href="javascript:void(0);"
								onClick="popUpWindow('UpdateIssue?id=${temp.id}');">View </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>