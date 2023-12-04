Instance: PractitionerRole-Lab-Esempio
InstanceOf: PractitionerRoleRefertoLabIt
Usage: #example
Description: "Esempio di un PractitionerRole: medico in ematologia clinica presso il policlinico."

* id = "dc5842a1-83b6-43c7-b063-75ae989b803c"
* identifier.use = #official
* identifier.system = "http://esempio_policlinico.it/codiceEmatologo"
* identifier.value = "12345"

* active = true


* practitioner = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803d)


* organization = Reference(urn:uuid:5fd3f1a6-b2c8-44cb-8237-0b5f0a81f2a8)

* code.coding.system = "urn:oid:2.16.840.1.113883.2.9.6.2.7"
* code.coding.code = #2211
* code.coding.display = "Generalist Medical Practitioners"

* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #394803006
* specialty.coding.display = "Clinical hematology"
