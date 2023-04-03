Instance: PractitionerRole-Lab-Esempio
InstanceOf: PractitionerRoleRL
Usage: #example
Description: "Esempio di un PractionerRole: medico in ematologia clinica presso il policlinico."

* identifier.use = #official
* identifier.system = "http://esempio_policlinico.it/codiceEmatologo"
* identifier.value = "12345"

* active = true

* practitioner = Reference(Practitioner-Lab-Esempio)
* organization.display = "Policlinico di Roma"
* organization = Reference(Organization-Lab-Esempio)

* code.coding.system = $sct
* code.coding.code = #61246008
* code.coding.display = "Laboratory medicine specialist"

* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #394803006
* specialty.coding.display = "Clinical hematology"
