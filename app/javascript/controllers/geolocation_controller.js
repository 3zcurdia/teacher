import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="geolocation"
export default class extends Controller {
  static targets = ["latitude", "longitude"]

  connect() {
    if (navigator.geolocation) {
      this.updatePosition();
    } else {
      x.innerHTML = "Geolocation is not supported by this browser.";
    }
  }

  updatePosition() {
    var that = this;
    navigator.geolocation.getCurrentPosition(function(position) {
      that.latitudeTarget.value = position.coords.latitude;
      that.longitudeTarget.value = position.coords.longitude;
    });
  }
}
