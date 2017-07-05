


function initMap(lat,lng,msg){
	var map = new google.maps.Map(document.getElementById('map'),{
		center:{lat: lat, lng:lng},
		zoom: 11
	});

	var marker = new google.maps.Marker({
		position: {lat: lat, lng:lng},
		map: map
	});

	var infoWindow = new google.maps.InfoWindow({
		content: msg
	});

	infoWindow.open(map,marker);
}