Instance: Patient-IT
InstanceOf: PatientItRL
Usage: #example

* identifier[+].use = #official
* identifier[=].system = "http://hl7.it/sid/codiceFiscale"
* identifier[=].value = "DOEJHN80R10F257A"
* name.family = "DOE"
* name.given = "JOHN"
* gender = #male
* birthDate = "1980-01-01"
* address[+].city = #36023
* address[=].use = #home
* address[=].type = #physical
* address[=].postalCode = "41125"
* address[=].city = "MODENA"
* telecom.use = #mobile
* telecom.system = #phone
* telecom.value = "05912345678"

* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension.valueAddress.use = #home
* extension.valueAddress.type = #physical
* extension.valueAddress.postalCode = "41125"
* extension.valueAddress.city = "MODENA"
* extension.valueAddress.country = "ITA"