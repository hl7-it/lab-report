Instance: Observation-Lab-Esempio-Group
InstanceOf: observation-it-lab
Usage: #example
Description: "Esempio di contenitore per Battery Test: rilevazione di glucosio nel sangue."

* category[+][esame-laboratorio].coding.code = #laboratory
* category[=][esame-laboratorio].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][esame-laboratorio].coding.display = "Laboratory"

* status = #final

* hasMember[+] = Reference(Observation-Lab-Esempio-Glucosio)
* hasMember[+] = Reference(Observation-Lab-Esempio-Cloruro)

* code.coding.system = $LOINC
* code.coding.code = #18723-7
* code.coding.display = "Studi di ematologia"


* subject = Reference(Paziente-SSN)
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference (Specimen-Lab-Esempio)