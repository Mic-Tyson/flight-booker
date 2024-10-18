import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["formContainer", "formField", "formTemplate", "formSubmit", "formFieldContainer"]

  connect() {}

  add(event) {
    event.preventDefault();

    if(this.formFieldTargets.length > 3) { return; }

    let clone = this.formTemplateTarget.content.cloneNode(true);
    this.formFieldContainerTarget.appendChild(clone);

    this.setIndices()
  }

  setAttributes() {
    let fields = this.formFieldTargets;
    let index = (fields.length-1);

    let field = fields[index];
    field.innerHTML = field.innerHTML.replace(/0/g, index);
  }

  remove(event) {
    event.preventDefault();

    const button = event.currentTarget;
    const formField = button.closest('[data-passenger-target="formField"]');

    let fields = this.formFieldTargets;
    if (formField && (fields.length > 1)) {
      formField.remove();
    }

    this.setIndices();
  }

  setIndices() {
    let fields = this.formFieldTargets;

    fields.forEach((field, index) => {
      field.innerHTML = field.innerHTML.replace(/(\d+)/g, index);
      console.log(index)
    });
  }
}
