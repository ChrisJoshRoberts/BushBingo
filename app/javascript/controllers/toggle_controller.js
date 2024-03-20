import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["invite", "togglableElement", "startGameButton"]

  connect() {
    console.log("Toggle controller connected");
  }

  fire() {
    this.togglableElementTarget.classList.remove("d-none");
    this.startGameButtonTarget.classList.add('d-none');
  }


  invited(event) {
    event.preventDefault();
    console.log("Invited!");
    const form = event.target.closest('form');

    if (!form) {
      console.error('Form not found');
      return;
    }

    const formData = new FormData(form);

    fetch(form.action, {
      method: 'POST',
      body: formData,
      headers: {
        'X-CSRF-Token': document.querySelector("[name='csrf-token']").content
      }
    }).then(response => {
      if (response.ok) {
        this.inviteTarget.innerHTML = `<svg class="tick" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#14cc17"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M5.5 12.5L10.167 17L19.5 8" stroke="#14cc17" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>`;
      } else {
        console.error('Failed to submit form');
      }
    }).catch(error => {
      console.error('Error:', error);
    });
  }
}
