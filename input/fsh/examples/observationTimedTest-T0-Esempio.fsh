Instance: Bundle-Lab-Esempio-3
InstanceOf: Bundle
Title: "Observation - Timed Test"
Description: "Esempio di rilevazioni effettuate con cadenza temporale (timed-test): rilevazione di insulina nel sangue a digiuno, dopo 30 minuti e dopo 60 minuti."
Usage: #example

* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:eumfh-39-07"
* type = #transaction
* timestamp = "2023-05-29T14:30:00+01:00"
* entry[+].fullUrl = "/Observation/Observation-TimedTest-T0-Lab-Esempio" //urn:uuid:56f19992-e73e-45b5-bbdd-6d9aeb60b15a
* entry[=].resource = Observation-TimedTest-T0-Lab-Esempio

* entry[+].fullUrl = "/Observation/Observation-TimedTest-T1-Lab-Esempio" //urn:uuid:56f19992-e73e-45b5-bbdd-6d9aeb60b15a
* entry[=].resource = Observation-TimedTest-T0-Lab-Esempio

* entry[+].fullUrl = "/Observation/Observation-TimedTest-T2-Lab-Esempio" //urn:uuid:56f19992-e73e-45b5-bbdd-6d9aeb60b15a
* entry[=].resource = Observation-TimedTest-T0-Lab-Esempio

Instance: Observation-TimedTest-T0-Lab-Esempio
InstanceOf: observation-it-lab
Usage: #inline
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue a digiuno, dopo 30 minuti e dopo 60 minuti."

* category[+][esame-laboratorio].coding.code = #laboratory
* category[=][esame-laboratorio].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][esame-laboratorio].coding.display = "Laboratory"

* category[+][specialita-esame-laboratorio].coding.code = #HM
* category[=][specialita-esame-laboratorio].coding.system = "https://terminology.hl7.org/5.1.0/CodeSystem-v2-0074"
* category[=][specialita-esame-laboratorio].coding.display = "Hematology"

* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #20448-7 	
* code.coding.display = "Insulin [Units/volume] in Serum or Plasma"

* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = "https://ucum.org"
* valueQuantity.value = 20

* subject = Reference(Paziente-SSN)

* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)

Instance: Observation-TimedTest-T1-Lab-Esempio
InstanceOf: observation-it-lab
Usage: #inline
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 30 minuti."

* category[+][esame-laboratorio].coding.code = #laboratory
* category[=][esame-laboratorio].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][esame-laboratorio].coding.display = "Laboratory"

* category[+][specialita-esame-laboratorio].coding.code = #HM
* category[=][specialita-esame-laboratorio].coding.system = "https://terminology.hl7.org/5.1.0/CodeSystem-v2-0074"
* category[=][specialita-esame-laboratorio].coding.display = "Hematology"

* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #20448-7 	
* code.coding.display = "Insulin [Units/volume] in Serum or Plasma"

* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = "https://ucum.org"
* valueQuantity.value = 120

// * subject.type = "Patient"
// * subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
// * subject.identifier.value = "RSSMRA71E01F205E"
* subject = Reference(Paziente-SSN)
* extension[sequelTo].valueReference = Reference(Observation-TimedTest-T0-Lab-Esempio)
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)

Instance: Observation-TimedTest-T2-Lab-Esempio
InstanceOf: observation-it-lab
Usage: #inline
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 60 minuti."

* category[+][esame-laboratorio].coding.code = #laboratory
* category[=][esame-laboratorio].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][esame-laboratorio].coding.display = "Laboratory"

* category[+][specialita-esame-laboratorio].coding.code = #HM
* category[=][specialita-esame-laboratorio].coding.system = "https://terminology.hl7.org/5.1.0/CodeSystem-v2-0074"
* category[=][specialita-esame-laboratorio].coding.display = "Hematology"

* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #20448-7 	
* code.coding.display = "Insulin [Units/volume] in Serum or Plasma"

* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = "https://ucum.org"
* valueQuantity.value = 87

// * subject.type = "Patient"
// * subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
// * subject.identifier.value = "RSSMRA71E01F205E"
* subject = Reference(Paziente-SSN)
* extension[sequelTo].valueReference = Reference(Observation-TimedTest-T1-Lab-Esempio)
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)