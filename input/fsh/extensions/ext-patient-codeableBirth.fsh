Extension: ExtCodeableBirthPlace
Id: patient-codeableBirthPlace
Title: "Codice comune e/o stato di nascita"
Description: "Codice comune e/o stato di nascita."
* ^version = "0.0.1"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept