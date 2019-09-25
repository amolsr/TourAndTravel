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
						<th>Name</th>
						<th>Mobile No.</th>
						<th>Email Id</th>
						<th>Issues</th>
						<th>Description</th>
						<th>Posting date</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td width="120">#004</td>
						<td width="50">Anuj kumar</td>
						<td width="50">1111111111</td>
						<td width="50">anuj@gmail.com</td>
						<td width="200">Cancellation</td>
						<td width="400">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
							exercitation ullamco</td>
						<td width="50">2017-05-14 03:33:33</td>
						<td><a href="javascript:void(0);"
							onClick="popUpWindow('updateissue.php?iid=4');">View </a></td>
					</tr>
					<tr>
						<td width="120">#005</td>
						<td width="50">sarita</td>
						<td width="50">9999999999</td>
						<td width="50">sarita@gmail.com</td>
						<td width="200">Cancellation</td>
						<td width="400">tbt 3y 34y4 3y3hgg34t</td>
						<td width="50">2017-05-14 10:42:14</td>
						<td><a href="javascript:void(0);"
							onClick="popUpWindow('updateissue.php?iid=5');">View </a></td>
					</tr>
					<tr>
						<td width="120">#006</td>
						<td width="50">Anuj Kumar</td>
						<td width="50">4543534534</td>
						<td width="50">demo@test.com</td>
						<td width="200">Refund</td>
						<td width="400">demo test.com demo test.comdemo test.comdemo
							test.comdemo test.com</td>
						<td width="50">2017-05-14 13:15:37</td>
						<td><a href="javascript:void(0);"
							onClick="popUpWindow('updateissue.php?iid=6');">View </a></td>
					</tr>
					<tr>
						<td width="120">#007</td>
						<td width="50">XYZ</td>
						<td width="50">8888888888</td>
						<td width="50">abc@g.com</td>
						<td width="200">Refund</td>
						<td width="400">test test ttest test ttest test ttest test
							ttest test ttest test t</td>
						<td width="50">2017-05-14 13:26:46</td>
						<td><a href="javascript:void(0);"
							onClick="popUpWindow('updateissue.php?iid=7');">View </a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>