import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="landingpage"
export default class extends Controller {
  static targets = ["card"]
  connect() {
    console.log(this.cardTarget)
    setTimeout(() => this.showCard(), 500)
  }

  showCard() {
    this.cardTarget.classList.remove("d-none");
    this.cardTarget.classList.add("show")
  }
}
