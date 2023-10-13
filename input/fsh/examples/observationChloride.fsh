Instance: Observation-Lab-Esempio-Cloruro
InstanceOf: observation-it-lab
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di cloruro nel sangue."


* category[+][laboratory].coding.code = #laboratory
* category[=][laboratory].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][laboratory].coding.display = "Laboratory"

// * category[+][specialita-laboratory].coding.code = #18723-7
// * category[=][specialita-laboratory].coding.system = "http://loinc.org"
// * category[=][specialita-laboratory].coding.display = "Hematology studies (set)"

* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #100745-9
* code.coding.display = "Chimica Concentrazione di Sostanza Punto nel tempo (episodio) Sangue venoso misto"
* effectiveDateTime = "2023-05-01"
* valueQuantity.unit = "meq/L"
* valueQuantity.code = #meq/L
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value = 100

// * subject.type = "Patient"
// * subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
// * subject.identifier.value = "RSSMRA71E01F205E"
* subject = Reference(Paziente-SSN)

* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference (Specimen-Lab-Esempio)




