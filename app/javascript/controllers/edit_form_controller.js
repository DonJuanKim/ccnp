import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-form"
export default class extends Controller {
  static targets = [ "editForm" ]

  connect() {
    // console.log("edit_form_controller testing");
  }

  toggleEdit() {
    // console.log("toggleEdit testing");
    // this.editFormTarget.classList.toggle("d-none")
    this.editFormTarget.classList.slideToggle()
  }
}
