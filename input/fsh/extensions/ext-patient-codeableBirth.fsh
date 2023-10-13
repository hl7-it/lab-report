Extension: ExtCodeableBirthPlace
Id: patient-codeableBirthPlace
Title: "Codice comune e/o stato di nascita"
Description: "Codice comune e/o stato di nascita."
* ^version = "0.0.1"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Patient"
* ^url = "http://hl7.it/fhir/StructureDefinition/patient-codeableBirthPlace"
* value[x] only CodeableConcept