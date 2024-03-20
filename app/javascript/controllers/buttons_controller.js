import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["hideable", "footer"];

  connect() {
    console.log("Buttons controller connected");
    // Bind the scroll event to the sightings container, not the window
    window.addEventListener("scroll", this.checkScroll.bind(this));
  }

  checkScroll() {
    // Get the current target inside the method
    // Adjust the condition to check for the bottom of the sightings container
    if (window.innerHeight + window.scrollY >= document.body.offsetHeight) {
      console.log(this.hideableTarget, "Bottom reached!");
      // Implement what happens when bottom is reached (e.g., hide the hideable element)
      this.hideableTarget.style.display = 'none';
      this.footerTarget.style.display = 'none';
    } else {
      // Optionally, show it again when not at bottom
      this.hideableTarget.style.display = 'flex';
      this.footerTarget.style.display = 'block';
    }
  }

  disconnect() {
    // Properly remove the event listener when the controller is disconnected
    window.removeEventListener("scroll", this.checkScroll.bind(this));
  }
}
