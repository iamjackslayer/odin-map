$(document).ready(function(){
	$('#go').on('click',function(e){
		e.preventDefault();
		var lat = parseFloat($('#lat').val());
		var lng = parseFloat($('#lng').val());
		var msg = $('#msg').val();
		initMap(lat,lng,msg);
	});
});