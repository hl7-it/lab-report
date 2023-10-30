Instance: PractitionerRole-Lab-Esempio
InstanceOf: practitionerrole-it-lab
Usage: #example
Description: "Esempio di un PractitionerRole: medico in ematologia clinica presso il policlinico."

* id = "dc5842a1-83b6-43c7-b063-75ae989b803c"
* identifier.use = #official
* identifier.system = "http://esempio_policlinico.it/codiceEmatologo"
* identifier.value = "12345"

* active = true






* practitioner = Reference(Practitioner-Lab-Esempio)





* organization = Reference(Organization-Lab-Esempio)

* code.coding.system = $sct
* code.coding.code = #61246008
* code.coding.display = "Laboratory medicine specialist"

* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #394803006
* specialty.coding.display = "Clinical hematology"
