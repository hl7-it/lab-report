Instance: PractitionerRoleMMG-Lab-Esempio
InstanceOf: practitionerrole-MMGPLS-it-lab
Usage: #example
Description: "Esempio di un PractitionerRole: medico in ematologia clinica presso il policlinico."

* id = "dc5842a1-83b6-43c7-b063-75ae989b803k"
* identifier.use = #official
* identifier.system = "http://esempio_policlinico.it/codiceEmatologo"
* identifier.value = "12345"

* active = true












* organization = Reference(urn:uuid:5fd3f1a6-b2c8-44cb-8237-0b5f0a81f2a8)

* code.coding.system = "http://terminology.hl7.it/CodeSystem/it-v3RoleCode"
* code.coding.code = #MMG
* code.coding.display = "medico di medicina generale"
