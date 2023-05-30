import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["modal", "content"];

// Action to handle the click event
openModal() {
  this.contentTarget.textContent = "This is the login form.";
  this.modalTarget.classList.add("active");
}

// Action to close the modal
closeModal() {
  this.modalTarget.classList.remove("active");
}
}

