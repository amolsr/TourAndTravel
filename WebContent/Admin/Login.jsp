<!DOCTYPE HTML>
<html>
<head>
<title>Admin Sign in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/Login-Form-Dark.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/SignIn.js"></script>
</head>
</head>
<body class="login d-flex justify-content-center align-items-center"
	background="img/Back.jpg"
	style="background-position: center; background-size: cover; background-repeat: no-repeat;">
	<div class="login-dark">
		<form action="LogIn" autocomplete="off">
			<h2 class="sr-only">Login Form</h2>
			<div class="illustration">
				<i class="icon ion-ios-locked-outline"></i>
			</div>
			<div class="form-group">
				<input class="form-control" type="text" name="uname"
					placeholder="Username">
			</div>
			<div class="form-group">
				<input class="form-control" type="password" name="pass"
					placeholder="Password">
			</div>
			<div class="form-group">
				<button class="btn btn-primary btn-block" type="submit">Log
					In</button>
			</div>
			<a href="../Index?content=home" class="forgot">Back To Home Page.</a>
		</form>
	</div>
</body>
</html>