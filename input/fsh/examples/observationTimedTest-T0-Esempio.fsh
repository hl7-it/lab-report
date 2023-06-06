Instance: Observation-TimedTest-T0-Lab-Esempio
InstanceOf: observation-it-lab
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue a digiuno, dopo 30 minuti, dopo 60 minuti, dopo 90 minuti e dopo 120 minuti."

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
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value = 20

* subject = Reference(Paziente-SSN)

* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)

Instance: Observation-TimedTest-T1-Lab-Esempio
InstanceOf: observation-it-lab
Usage: #example
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
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value = 120

// * subject.type = "Patient"
// * subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
// * subject.identifier.value = "RSSMRA71E01F205E"
* subject = Reference(Paziente-SSN)
* extension.valueReference = Reference(Observation-TimedTest-T0-Lab-Esempio)
* extension.url = $sequelTo
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)

Instance: Observation-TimedTest-T2-Lab-Esempio
InstanceOf: observation-it-lab
Usage: #example
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
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value = 87

// * subject.type = "Patient"
// * subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
// * subject.identifier.value = "RSSMRA71E01F205E"
* subject = Reference(Paziente-SSN)
* extension.valueReference = Reference(Observation-TimedTest-T1-Lab-Esempio)
* extension.url = $sequelTo
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)


Instance: Observation-TimedTest-T3-Lab-Esempio
InstanceOf: observation-it-lab
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 90 minuti."

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
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value = 70

// * subject.type = "Patient"
// * subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
// * subject.identifier.value = "RSSMRA71E01F205E"
* subject = Reference(Paziente-SSN)
* extension.valueReference = Reference(Observation-TimedTest-T2-Lab-Esempio)
* extension.url = $sequelTo
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)

Instance: Observation-TimedTest-T4-Lab-Esempio
InstanceOf: observation-it-lab
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 120 minuti."

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
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value = 35

// * subject.type = "Patient"
// * subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
// * subject.identifier.value = "RSSMRA71E01F205E"
* subject = Reference(Paziente-SSN)
* extension.valueReference = Reference(Observation-TimedTest-T3-Lab-Esempio)
* extension.url = $sequelTo
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)