Instance: PractitionerRoleMMG-Lab-Esempio
InstanceOf: PractitionerRoleItcore
Usage: #example
Description: "Esempio di un PractitionerRole: medico di medicina generale."

* id = "dc5842a1-83b6-43c7-b063-75ae989b803k"
// * identifier.use = #official
// * identifier.system = "http://esempio_policlinico.it/codiceEmatologo"
// * identifier.value = "12345"
* identifier.use = #official
* identifier.system = $cf 
* identifier.value = "MDCPRV80A01H501G"


* active = true

* organization = Reference(urn:uuid:5fd3f1a6-b2c8-44cb-8237-0b5f0a81f2a8)

* code = $cs-role-it#MMG "Medico di Medicina Generale"
