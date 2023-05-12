Instance: Location-Lab-Esempio
InstanceOf: LocationRL
Usage: #inline
Description: "Esempio di location: struttura ospedaliera di Roma."

* identifier.use = #usual

* identifier.value = "123456"

* status = #active

* name = "Policlinico di Roma"

* alias[0] = "Poliambulatorio di Roma"

* alias[1] = "Ospedale universitario di Roma"

* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.code = #HOSP
* type.coding.display = "Hospital"


* telecom[0].system = #phone
* telecom[0].value = "33324567"

* address[+].city = #36023
* address[=].type = #physical
* address[=].postalCode = "00144"
* address[=].city = "ROMA"