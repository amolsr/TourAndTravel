$(document).ready(function() {
	var date1;
	var date2;
	$("#datepicker1").datepicker({
		minDate : new Date(),
		dateFormat : "dd-mm-yy",
		showOtherMonths : true,
		selectOtherMonths : true,
		onSelect : function(dateText, inst) {
			date1 = dateText;
			$("#datepicker2").datepicker("setDate", date1);
			$("#datepicker2").datepicker("minDate", date1);
		}
	});
	$("#datepicker2").datepicker({
		minDate : new Date(),
		dateFormat : "dd-mm-yy",
		showOtherMonths : true,
		selectOtherMonths : true,
		onSelect : function(dateText, inst) {
			date2 = dateText;
		}
	});
});