import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["sound"];

  connect() {
    console.log("ParkAnimal controller connected");
  }

  play() {
    const audio = this.soundTarget;
    audio.play().then(() => {
      console.log('Audio is playing');
    }).catch((error) => {
      console.error('Failed to play audio:', error);
    });
  }
}
