
    function myMap() {
    var mapProp = {
    center: new google.maps.LatLng(4.885728, 114.931669),
    zoom: 20,
    };

    var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

    var marker = new google.maps.Marker({ //Map Marker
        position: new google.maps.LatLng(4.885728, 114.931669),
        map: map,
    });

  }
      