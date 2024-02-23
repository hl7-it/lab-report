Instance: Paziente-SSN
InstanceOf: PatientRefertoLabIt
Usage: #example
Description: "Esempio di un paziente: soggetto iscritto al Sistema Sanitario Nazionale (SSN) con rappresentazione strutturata dell'attributo birthPlace."

* id = "8472931c-fbd0-437b-9ed1-4f66472c78b5"

* extension[luogoNascita].valueAddress.line[+].extension[odonimo].valueString = "Via della Vittoria"
* extension[luogoNascita].valueAddress.line[=].extension[houseNumber].valueString = "1"
* extension[luogoNascita].valueAddress.line[=] = "Via della Vittoria, 1"
* extension[luogoNascita].valueAddress.city = "Milano"
* extension[luogoNascita].valueAddress.postalCode = "20100"
* extension[luogoNascita].valueAddress.country = "IT"
* extension[professione].valueCodeableConcept = CsIstatProfessioni#1.1.3 "Dirigenti della magistratura"
* extension[titoloStudio].valueCodeableConcept = CsIstatTitoliStudio#40205013 "Giuridico economico aziendale"


* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRA71E01F205E" 
  * extension[certificazioneId].extension[when].valueDateTime = "2022-05-01"

* extension[luogoNascitaCodeable].valueCodeableConcept = $istat-stati#100 "Italia"


* name.family = "Rossi"
* name.given = "Maria"

* telecom[0].system = #phone
* telecom[0].value = "3331245678"

* telecom[1].system = #email
* telecom[1].value = "maria.rossi@mail.com"

* birthDate = "1971-05-01"

* gender = #female

* address.city = "Milano"
* address.country = "IT"
* address.postalCode = "20100"
* address.line = "Via della Libertà, 52"
* address.use = #home
* address.extension[residenza].valueBoolean = true
* address.line.extension[dugCode].valueCodeableConcept  = $istat-DUG-CS#67 "via"

* contact[0].name.family = "Rossi"
* contact[0].name.given = "Luigi"
* contact[1].name.family = "Bianchi"
* contact[1].name.given = "Maria"
* contact[0].relationship.coding.code = #C
* contact[0].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[0].relationship.coding.display = "Emergency Contact"
* contact[1].relationship.coding.code = #C
* contact[1].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[1].relationship.coding.display = "Emergency Contact"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "3312345567"
* contact[1].telecom.system = #phone
* contact[1].telecom.value = "3311234598"
* generalPractitioner[aziendaAssistenza] = Reference(urn:uuid:ae0365ea-d8a1-45e0-a39d-f14fac4ccfe8)





