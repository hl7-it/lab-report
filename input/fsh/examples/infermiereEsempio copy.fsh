Instance: Infermiere-Lab-Esempio
InstanceOf: Practitioner
Usage: #example
Description: "Esempio di un professionista sanitario: infermiere."

* identifier.use = #official
* identifier.system = "http://hl7.it/sid/codiceFiscale" 
* identifier.value = "NFRPRV80A01H501G"

* name.use = #usual
* name.family = "Infermiere"
* name.given = "Prova"

* telecom[0].system = #email
* telecom[0].value = "infermiere.prova@policlinico.it"
* telecom[0].use = #work
* telecom[0].rank = 1

* telecom[1].system = #phone
* telecom[1].value = "331793553"
* telecom[1].use = #work
* telecom[1].rank = 2

* gender = #male

* communication.coding.system = "urn:ietf:bcp:47"
* communication.coding.code = #it-IT
* communication.coding.display = "Italian (Italy)"

