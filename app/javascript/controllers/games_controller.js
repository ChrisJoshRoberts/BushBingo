// app/javascript/controllers/games_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button", "container"];

  connect() {
    console.log("Button controller connected");
    this.containerTarget.addEventListener("scroll", this.hideButton.bind(this));
  }

  hideButton() {
    console.log("scrolling");
    if (this.containerTarget.scrollTop > 0) {
      this.buttonTarget.classList.add("d-none");
    } else {
      this.buttonTarget.classList.remove("d-none");
    }
  }
}
