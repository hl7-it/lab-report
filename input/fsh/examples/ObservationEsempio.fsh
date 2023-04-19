Instance: Observation-Lab-Esempio
InstanceOf: ObservationRL
Usage: #inline
Description: "Esempio di un'osservazione: rilevazione di glucosio nel sangue."

* id = "333b62b2-47b0-43b5-9745-abec1f0c4656"

* category[0][esame-laboratorio].coding.code = #laboratory
* category[0][esame-laboratorio].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0][esame-laboratorio].coding.display = "Laboratory"

* category[1].coding.code = #HM
* category[1].coding.system = "https://terminology.hl7.org/5.1.0/CodeSystem-v2-0074"
* category[1].coding.display = "Hematology"

* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #10450-5 	
* code.coding.display = "Glucosio [massa / volume] nel siero o nel plasma - 10 ore di digiuno"

* valueQuantity.unit = "mg/dL"
* valueQuantity.code = #mg/dL
* valueQuantity.system = "https://ucum.org"
* valueQuantity.value = 70

* subject.type = "Patient"
* subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
* subject.identifier.value = "RSSMRA71E01F205E"

* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference (Specimen-Lab-Esempio)




