import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static values = {
    apiKey: String,
    marker: String
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;
    console.log("Marker data:", this.markersValue);


    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    });
    this.#addMarkerToMap();
    this.#fitMapToMarker();
  }

  #fitMapToMarker() {
    if (this.markerValue) {
      const marker = JSON.parse(this.markerValue);
      this.map.setCenter([marker.lng, marker.lat]);
      this.map.setZoom(9); // Adjust the zoom level as needed
    } else {
      console.error("Marker data is undefined");
    }
  }

  #addMarkerToMap() {
    if (this.markerValue) {
      const marker = JSON.parse(this.markerValue);
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html);

      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div");
      customMarker.innerHTML = marker.marker_html;

      // Pass the element as an argument to the new marker
      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);
    } else {
      console.error("Marker data is undefined");
    }
  }
}
