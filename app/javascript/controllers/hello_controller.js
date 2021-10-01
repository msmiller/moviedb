import { Controller } from "@hotwired/stimulus"

import $ from "jquery"

export default class extends Controller {
  connect() {
    console.log("CONNECTED");
    this.element.textContent = "Hello World from HelloController";
    $("#jquery-stimulus").text('jQuery worked from controller!');
  }
}