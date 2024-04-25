import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["searchreveal"]

  toggle() {
    console.log("Toggling searchbox");
    this.searchrevealTarget.classList.toggle("d-none");
  }
}