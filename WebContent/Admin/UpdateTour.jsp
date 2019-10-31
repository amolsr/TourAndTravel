<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="index.html">Home</a><i
		class="fa fa-angle-right"></i>Update Tour Package</li>
</ol>
<!--grid-->
<div class="grid-form">
	<!---->
	<div class="grid-form1">
		<h3>Update Package</h3>
		<div class="tab-content">
			<div class="tab-pane active" id="horizontal-form">
				<c:set var="temp" scope="page" value="${Package}" />
				<form class="form-horizontal" name="package" method="post"
					enctype="multipart/form-data">
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Name</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packagename"
								id="packagename" placeholder="Create Package"
								value="${temp.packageName}" required>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Type</label>
						<div class="col-sm-8">
							<select class="form-control1" name="packageType" id="packagetype"
								required>
								<option value="" disabled selected>Select your option</option>
								<option value="Family">Family Package</option>
								<option value="Couple">Couple Package</option>
								<option value="Biker">Biker Package</option>
								<option value="Adventure">Adventure Package</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Date</label>
						<div class="col-sm-8">
							<div class="input-datepicker input-group"
								style="padding-bottom: 0px;">
								<input type="text" class="input-sm form-control1" name="from"
									id="datepicker1" /> <span class="input-group-addon">to</span>
								<input type="text" class="input-sm form-control1" name="to"
									id="datepicker2" /><small class="form-text text-danger error"></small>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Location</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packageLocation"
								id="packagelocation" placeholder=" Package Location"
								value="${temp.packageLocation}" required>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Price in &#8377</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packagePrice"
								id="packageprice" placeholder=" Package Price is &#8377"
								value="${temp.packagePrice}" required>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Features</label>
						<div class="col-sm-8">
							<input type="text" class="form-control1" name="packageFeatures"
								id="packagefeatures"
								placeholder="Package Features Eg-free Pickup-drop facility"
								value="${temp.packageFeatures}" required>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Details</label>
						<div class="col-sm-8">
							<textarea class="form-control" rows="5" cols="50"
								name="packageDetails" id="packagedetails"
								placeholder="Package Details" required>${temp.packageDetails}</textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Package
							Image</label>
						<div class="col-sm-8">
							<img src="${temp.packageImage}" width="200">&nbsp;&nbsp;&nbsp;<a
								href="change-image.php?imgid=1">Change Image</a>
						</div>
					</div>

					<div class="form-group">
						<label for="focusedinput" class="col-sm-2 control-label">Last
							Updation Date</label>
						<div class="col-sm-8">
							<c:choose>
								<c:when test="${temp.updationDate == null}">
									<c:out value="${temp.creationDate}"></c:out>
								</c:when>
								<c:otherwise>
									<c:out value=" ${temp.updationDate}"></c:out>
								</c:otherwise>
							</c:choose>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							<button type="submit" name="submit" class="btn-primary btn">Update</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--//grid-->