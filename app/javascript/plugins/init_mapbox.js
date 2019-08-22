import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css'

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };


  if (mapElement) {

    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/ely-na/cjzmsf05h0czh1cmnhfa8gtn3'
    });

    const markers = JSON.parse(mapElement.dataset.markers);

    const addMarkersToMap = (map, markers) => {
    console.log(markers)
      markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);


      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';
      console.log(popup)
      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
      });

    };
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
