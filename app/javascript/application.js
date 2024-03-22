// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener("DOMContentLoaded", function() {
  // Scroll the page on load
  setTimeout(function() {
      window.scrollTo(0, 1); // Scroll to hide the address bar
  }, 0);

  // Scroll the page when the user interacts with it
  window.addEventListener("touchstart", function() {
      setTimeout(function() {
          window.scrollTo(0, 1); // Scroll to hide the address bar
      }, 0);
  });
});
