Instance: Paziente-SSN
InstanceOf: patient-it-lab
Usage: #example
Description: "Esempio di un paziente: soggetto iscritto al Sistema Sanitario Nazionale (SSN) con rappresentazione strutturata dell'attributo birthPlace."

* id = "8472931c-fbd0-437b-9ed1-4f66472c78b5"
* extension[luogoNascita].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[luogoNascita].valueAddress.line[0].extension[odonimo].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* extension[luogoNascita].valueAddress.line[0].extension[odonimo].valueString = "Via della Vittoria"
* extension[luogoNascita].valueAddress.line[0].extension[houseNumber].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* extension[luogoNascita].valueAddress.line[0].extension[houseNumber].valueString = "1"
* extension[luogoNascita].valueAddress.line[0] = "Via della Vittoria, 1"
* extension[luogoNascita].valueAddress.city = "Milano"
* extension[luogoNascita].valueAddress.postalCode = "20100"
* extension[luogoNascita].valueAddress.country = "IT"

* extension[professione].url = "http://hl7.it/fhir/StructureDefinition/patient-occupation-it"
* extension[professione].valueCodeableConcept = CsIstatProfessioni#1.1.3 "Dirigenti della magistratura"

* extension[titoloStudio].url = "http://hl7.it/fhir/StructureDefinition/patient-qualification-it"
* extension[titoloStudio].valueCodeableConcept = CsIstatTitoliStudio#40205013 "Giuridico economico aziendale"

* identifier.extension[certificazioneId].url = "http://hl7.it/fhir/StructureDefinition/recordCertification"
* identifier.extension[certificazioneId].extension[when].url = "when"
* identifier.extension[certificazioneId].extension[when].valueDateTime = "2022-05-01"

* extension[luogoNascitaCodeable].url = "http://hl7.it/fhir/StructureDefinition/patient-codeableBirthPlace"
* extension[luogoNascitaCodeable].valueCodeableConcept = CS_Estero#100 "Italia"

* identifier.system = "http://hl7.it/sid/codiceFiscale"
* identifier.value = "RSSMRA71E01F205E"

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
* address.extension[OfficialAddress].valueBoolean = true
* address.line.extension[ExtDug].url = "http://hl7.it/fhir/StructureDefinition/address-dug"
* address.line.extension[ExtDug].valueCodeableConcept  = $istat-DUG-CS#67 "via"

* contact[0].name.family = "Rossi"
* contact[0].name.given = "Luigi"
* contact[1].name.family = "Bianchi"
* contact[1].name.given = "Maria"
* contact[0].relationship.coding.code = #C
* contact[0].relationship.coding.system = "http://terminology.hl7.org/5.1.0/CodeSystem-v2-0131"
* contact[0].relationship.coding.display = "Emergency Contact"
* contact[1].relationship.coding.code = #C
* contact[1].relationship.coding.system = "http://terminology.hl7.org/5.1.0/CodeSystem-v2-0131"
* contact[1].relationship.coding.display = "Emergency Contact"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "3312345567"
* contact[1].telecom.system = #phone
* contact[1].telecom.value = "3311234598"
* generalPractitioner[aziendaAssistenza] = Reference(OrganizationOperatore-Lab-Esempio)





