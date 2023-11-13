Instance: Observation-Lab-Esempio-Group
InstanceOf: ObservationGroupingRefertoLabIt
Usage: #example
Description: "Esempio di contenitore per Battery Test: rilevazione di glucosio nel sangue."

* category[laboratory] = $observation-category#laboratory

* status = #final
* code = $loinc#18723-7

* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* subject = Reference(Paziente-SSN)
* encounter = Reference(Encounter-Lab-Esempio)

* hasMember[+] = Reference(Observation-Lab-Esempio-Glucosio)
* hasMember[+] = Reference(Observation-Lab-Esempio-Cloruro)

* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference (Specimen-Lab-Esempio)