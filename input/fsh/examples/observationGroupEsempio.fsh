Instance: Observation-Lab-Esempio-Group
InstanceOf: ObservationGroupingRefertoLabIt
Usage: #example
Description: "Esempio di contenitore per Battery Test: rilevazione di glucosio nel sangue."

* category[+][laboratory].coding.code = #laboratory
* category[=][laboratory].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][laboratory].coding.display = "Laboratory"





* status = #final

* hasMember[+] = Reference(Observation-Lab-Esempio-Glucosio)
* hasMember[+] = Reference(Observation-Lab-Esempio-Cloruro)

* code.coding.system = $loinc
* code.coding.code = #18723-7


* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* subject = Reference(Paziente-SSN)
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference (Specimen-Lab-Esempio)