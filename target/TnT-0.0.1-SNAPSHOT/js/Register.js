jQuery(function($) {
	$("input[type='submit'][value='REGISTER']")
			.click(
					function(e) {
						e.preventDefault();
						var nameReg = /^[a-zA-Z ]*$/;
						var numberReg = /^[0-9]+$/;
						var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

						var fname = $("input[name='fnameRegister']").val();
						var mobile = $("input[name='mobileRegister']").val();
						var email = $("input[name='emailRegister']").val();
						var pass = $("input[name='passwordRegister']").val();
						var passc = $("input[name='password-repeatRegister']")
								.val();

						if ((!nameReg.test(fname)) || (fname == "")) {
							$("input[name='fnameRegister']").addClass(
									"is-invalid");
							$("input[name='fnameRegister']").focus();
							$("input[name='fnameRegister']")
									.next("small.error").show().html(
											"Please enter a valid Full Name.");
							$("input[name='fnameRegister']").val("");
						} else if ((!numberReg.test(mobile))
								|| (mobile.length < 10)) {
							$("input[name='mobileRegister']").addClass(
									"is-invalid");
							$("input[name='mobileRegister']").focus();
							$("input[name='mobileRegister']").next(
									"small.error").show().html(
									"Please enter a valid Mobile Number.");
							$("input[name='mobileRegister']").val("");
						} else if ((!emailReg.test(email)) || (email == "")) {
							$("input[name='emailRegister']").addClass(
									"is-invalid");
							$("input[name='emailRegister']").focus();
							$("input[name='emailRegister']")
									.next("small.error")
									.show()
									.html(
											"Please enter a correct email address.");
							$("input[name='emailRegister']").val("");
						} else if (pass == "") {
							$("input[type='passwordRegister']").addClass(
									"is-invalid");
							$("input[name='passwordRegister']").focus();
							$("input[type='passwordRegister']").next(
									"small.error").show().html(
									"Password field empty.");
						} else if (pass.length < 6) {
							$("input[type='passwordRegister']").addClass(
									"is-invalid");
							$("input[name='passwordRegister']").focus();
							$("input[type='passwordRegister']").next(
									"small.error").show().html(
									"Password too Short.");
						} else if (pass != passc) {
							$("input[type='passwordRegister']").addClass(
									"is-invalid");
							$("input[name='passwordRegister']").focus();
							$("input[type='passwordRegister']").next(
									"small.error").show().html(
									"Password do not match.");
						} else {
							var data = {
								name : fname,
								mobile : mobile,
								email : email,
								password : pass,
							}
							$.ajax({
								type : "POST",
								url : "./Register",
								data : data,
							}).done(function(data) {
								alert(data);
								window.location = './Index';
							}).fail(function(jqXHR, textStatus) {
								alert(textStatus);
							});
						}
					});
	$("input").keypress(function() {
		$(this).removeClass("is-invalid");
		$(this).next("small.error").hide();
	});
})