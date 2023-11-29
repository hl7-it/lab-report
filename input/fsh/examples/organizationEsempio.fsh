Instance: Organization-Lab-Esempio
InstanceOf: OrganizationRefertoLabIt
Usage: #example
Description: "Esempio di un'organizzazione: Azienda Sanitaria Locale."

* id = "5fd3f1a6-b2c8-44cb-8237-0b5f0a81f2a8"
* identifier[0].system = "http://hl7.it/sid/fls"
* identifier[0].value = "120201"

* identifier[1].system = "http://hl7.it/sid/vda/asl" 
* identifier[1].value = "201"

* active = true

* type =  $tipoEntita#asl "Azienda Sanitaria Locale"
* name = "Azienda Sanitara Locale Roma 1"

* contact.telecom.system = #phone
* contact.telecom.value = "06 123456"
