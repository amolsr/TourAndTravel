jQuery(function($) {
	$("button[type='submit'][name='submit2']").click(function(e) {
		e.preventDefault();
		var pkid = $("input[name='pkgid']").val();
		var comment = $("input[name='comment']").val();
		var data = {
			PackageId : pkid,
			Comment : comment
		}
		$.ajax({
			type : "POST",
			url : "./CreateBooking",
			data : data,
		}).done(function(data) {
			if (data == 'Login') {
				$('#btn-signin').click();
			} else {
				alert(data);
			}
		}).fail(function(jqXHR, textStatus) {
			alert(textStatus);
		});
	});
})