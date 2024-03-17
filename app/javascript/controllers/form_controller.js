import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "parksContainer","heading"];

  connect() {
    console.log("Form controller connected");
    this.formTarget.addEventListener("focus", this.handleFocus.bind(this));
    this.parksContainerTarget.addEventListener("scroll", this.handleScroll.bind(this));
    setTimeout(() => this.showForm(), 500);
  }

  handleFocus() {
    this.parksContainerTarget.classList.remove("trans");
    this.parksContainerTarget.classList.add("visible");
  }

  handleScroll() {
    console.log("scrolling");
    this.headingTarget.classList.add("background")
  }

}
