// app/javascript/controllers/games_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button"];

  connect() {
    console.log("Button controller connected");
    window.addEventListener("scroll", this.hideButton.bind(this));
  }

  disconnect() {
    window.removeEventListener("scroll", this.hideButton.bind(this));
  }

  hideButton() {
    console.log("scrolling");
    const scrollPosition = window.scrollY || window.pageYOffset;

    if (scrollPosition > 0) {
      this.buttonTarget.classList.add("d-none");
    } else {
      this.buttonTarget.classList.remove("d-none");
    }
  }
}
