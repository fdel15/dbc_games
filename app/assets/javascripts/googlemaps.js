function initialize() {
  var mapCanvas = document.getElementById('map-canvas');
  var latitude = mapCanvas.dataset.latitude
  var longitude = mapCanvas.dataset.longitude
  var myLatLng = new google.maps.LatLng(latitude, longitude)
  var mapOptions = {
      center: myLatLng,
      zoom: 15,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(mapCanvas, mapOptions)
    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map
    })

  }
  google.maps.event.addDomListener(window, 'load', initialize);
