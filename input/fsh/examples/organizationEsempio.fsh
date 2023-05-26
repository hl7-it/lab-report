Instance: Organization-Lab-Esempio
InstanceOf: organization-it-lab
Usage: #example
Description: "Esempio di un'organizzazione: Azienda sanitaria locale."

* identifier[0].system = "http://hl7.it/sid/fls"
* identifier[0].value = "120201"

* identifier[1].system = "http://hl7.it/sid/vda/asl" 
* identifier[1].value = "201"

* active = true

* type.coding.system = "http://terminology.hl7.it/CodeSystem/it-tipoEntita"
* type.coding.code = #asl
* type.coding.display = "Azienda Sanitaria Locale"

* name = "Azienda Sanitara Locale Roma 1"

* contact.telecom.system = #phone
* contact.telecom.value = "06 123456"
