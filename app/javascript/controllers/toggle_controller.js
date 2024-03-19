import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["invite"]

  connect() {
    console.log("Toggle controller connected");
  }

  invited(event) {
    event.preventDefault();
    console.log("Invited!");
    this.inviteTarget.innerHTML = `<svg class="tick" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#14cc17"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M5.5 12.5L10.167 17L19.5 8" stroke="#14cc17" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>`;
  }
}
