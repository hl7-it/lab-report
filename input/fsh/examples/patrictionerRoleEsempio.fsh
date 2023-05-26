Instance: PractitionerRole-Lab-Esempio
InstanceOf: practitionerrole-it-lab
Usage: #example
Description: "Esempio di un PractitionerRole: medico in ematologia clinica presso il policlinico."

* id = "dc5842a1-83b6-43c7-b063-75ae989b803c"
* identifier.use = #official
* identifier.system = "http://esempio_policlinico.it/codiceEmatologo"
* identifier.value = "12345"

* active = true

// * practitioner.type = "Practitioner"
// * practitioner.identifier.use = #official
// * practitioner.identifier.system = "http://hl7.it/sid/codiceFiscale" 
// * practitioner.identifier.value = "MDCPRV80A01H501G"
// * practitioner.display = "Medico Prova"
* practitioner = Reference(Practitioner-Lab-Esempio)

// * organization.display = "Policlinico di Roma"
// * organization.type = "Organization"
// * organization.identifier.system = "http://hl7.it/sid/fls"
// * organization.identifier[0].value = "120201"
* organization = Reference(Organization-Lab-Esempio)

* code.coding.system = $sct
* code.coding.code = #61246008
* code.coding.display = "Laboratory medicine specialist"

* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #394803006
* specialty.coding.display = "Clinical hematology"
