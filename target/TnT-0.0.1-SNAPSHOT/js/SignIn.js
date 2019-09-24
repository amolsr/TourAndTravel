jQuery(function($) {
	$("input[type='submit'][value='SIGNIN']").click(
			function(e) {
				e.preventDefault();
				var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
				var email = $("input[name='emailLogin']").val();
				var pass = $("input[name='passwordLogin']").val();

				if ((!emailReg.test(email)) || (email == "")) {
					$("input[name='emailLogin']").addClass("is-invalid");
					$("input[name='emailLogin']").focus();
					$("input[name='emailLogin']").next("small.error").show()
							.html("Please enter a correct email address.");
					$("input[name='emailLogin']").val("");
				} else if (pass == "") {
					$("input[name='passwordLogin']").addClass("is-invalid");
					$("input[name='passwordLogin']").focus();
					$("input[name='passwordLogin']").next("small.error").show()
							.html("Password Field can not be empty");
				} else {
					var data = {
						email : email,
						password : pass,
					}
					$.ajax({
						type : "POST",
						url : "./Login",
						data : data,
					}).done(function(data) {
						alert(data);
						window.location = './User';
					}).fail(function(jqXHR, textStatus) {
						alert(textStatus);
					});
				}
			});
});