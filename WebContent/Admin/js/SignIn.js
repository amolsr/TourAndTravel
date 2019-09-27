jQuery(function($) {
	$("button[type='submit']").click(function(e) {
		e.preventDefault();
		var uname = $("input[name='uname']").val();
		var pass = $("input[name='pass']").val();
		if (uname == "") {
			$("input[name='uname']").addClass("is-invalid");
			$("input[name='uname']").focus();
			$("input[name='uname']").val("");
		} else if (pass == "") {
			$("input[name='pass']").addClass("is-invalid");
			$("input[name='pass']").focus();
			$("input[name='pass']").val("");
		} else {
			var data = {
				uname : uname,
				pass : pass,
			}
			$.ajax({
				type : "POST",
				url : "./LogIn",
				data : data,
			}).done(function(data) {
				alert(data);
				window.location = './DashBoard';
			}).fail(function(jqXHR, textStatus) {
				alert(textStatus);
			});
		}
	});
});