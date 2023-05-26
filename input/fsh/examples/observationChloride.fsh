Instance: Observation-Lab-Esempio-Cloruro
InstanceOf: observation-it-lab
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di cloruro nel sangue."


* category[+][esame-laboratorio].coding.code = #laboratory
* category[=][esame-laboratorio].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][esame-laboratorio].coding.display = "Laboratory"

* category[+][specialita-esame-laboratorio].coding.code = #HM
* category[=][specialita-esame-laboratorio].coding.system = "https://terminology.hl7.org/5.1.0/CodeSystem-v2-0074"
* category[=][specialita-esame-laboratorio].coding.display = "Hematology"

* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #100745-9
* code.coding.display = "Chloride [Moles/volume] in Mixed venous blood"

* valueQuantity.unit = "meq/L"
* valueQuantity.code = #meq/L
* valueQuantity.system = "https://ucum.org"
* valueQuantity.value = 100

// * subject.type = "Patient"
// * subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
// * subject.identifier.value = "RSSMRA71E01F205E"
* subject = Reference(Paziente-SSN)

* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference (Specimen-Lab-Esempio)




