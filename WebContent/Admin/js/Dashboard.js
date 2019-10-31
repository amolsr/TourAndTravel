jQuery(function($) {
	$.ajax({
		type : "GET",
		url : './Count',
		dataType : 'json',
		success : function(outputfromserver) {
			var i = 0;
			$(".four-text h4").each(function(index, value) {
				$(this).html(outputfromserver[i]);
				i++;
			});
		}
	});
});