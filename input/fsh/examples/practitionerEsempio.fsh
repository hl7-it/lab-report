Instance: Practitioner-Lab-Esempio
InstanceOf: Practitioner
Usage: #inline
Description: "Esempio di un professionista sanitario: medico."

* identifier.use = #official
* identifier.system = "http://hl7.it/sid/codiceFiscale" 
* identifier.value = "MDCPRV80A01H501G"

* name.use = #usual
* name.family = "Medico"
* name.given = "Prova"

* telecom[0].system = #email
* telecom[0].value = "medico.prova@policlinico.it"
* telecom[0].use = #work
* telecom[0].rank = 1

* telecom[1].system = #phone
* telecom[1].value = "331793423"
* telecom[1].use = #work
* telecom[1].rank = 2

* gender = #male
