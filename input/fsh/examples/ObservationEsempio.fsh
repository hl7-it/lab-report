Instance: Observation-Lab-Esempio-Glucosio
InstanceOf: observation-doc-it-lab
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di glucosio nel sangue."


* category[+][laboratory].coding.code = #laboratory
* category[=][laboratory].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][laboratory].coding.display = "Laboratory"

// * category[+][specialita-laboratory].coding.code = #18723-7
// * category[=][specialita-laboratory].coding.system = "http://loinc.org"
// * category[=][specialita-laboratory].coding.display = "Hematology studies (set)"

* status = #final
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* code.coding.system = "http://loinc.org"
* code.coding.code = #10450-5 	
* code.coding.display = "Glucose [Mass/volume] in Serum or Plasma --10 hours fasting"

* valueQuantity.unit = "mg/dL"
* valueQuantity.code = #mg/dL
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value = 70

* subject = Reference(Paziente-SSN)

* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference (Specimen-Lab-Esempio)