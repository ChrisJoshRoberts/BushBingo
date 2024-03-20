import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["hideable1", "hideable2","sightings"];

  connect() {
    console.log("Buttons controller connected");
    // Bind the scroll event to the sightings container, not the window
    this.sightingsTarget.addEventListener("scroll", this.checkScroll.bind(this));
  }

  checkScroll() {
    // Get the current target inside the method
    const sightings = this.sightingsTarget;

    // Adjust the condition to check for the bottom of the sightings container
    if (sightings.scrollTop + sightings.clientHeight >= sightings.scrollHeight) {
      console.log(this.hideable1Target, "Bottom reached!");
      // Implement what happens when bottom is reached (e.g., hide the hideable element)
      this.hideable1Target.style.display = 'none';
      this.hideable2Target.style.display = 'none';
    } else {
      // Optionally, show it again when not at bottom

      this.hideable1Target.style.display = 'flex';
      this.hideable2Target.style.display = 'flex';
    }
  }

  disconnect() {
    // Properly remove the event listener when the controller is disconnected
    this.sightingsTarget.removeEventListener("scroll", this.checkScroll.bind(this));
  }
}
