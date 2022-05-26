import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-form"
export default class extends Controller {
  static targets = [ "editForm" ]

  connect() {
    console.log("edit_form_controller testing");
  }

  toggleEdit() {
    console.log("toggleEdit testing");
    this.editFormTarget.classList.toggle("d-none")
  }
}



// const element = document.getElementById("edit-btn");
// console.log(element.innerText);
// element.addEventListener("click", (event) => {
//   // Do something (callback)
//   element.innerText = "Bingo!";
//   const audio = new Audio('sound.mp3');
//   audio.play();
//   element.classList.add("disabled");
// });
