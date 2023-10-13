Instance: ServiceRequest-Lab-Esempio
InstanceOf: servicerequest-it-lab
Usage: #example
Description: "Esempio di richiesta: prestazione richiesta facente parte di un'autorizzazione simultanea per esami di laboratorio."

* id = "463ae6fe-60d4-4b38-84b3-1008e0925678"

* identifier.value = "12345"
* identifier.period.start = "2023-03-15"
* identifier.period.end = "2023-04-15"

* status = #completed
* intent = #order

* requisition.value = "1300A4000000248"

* authoredOn = "2023-03-15"

* category.coding.system = $sct
* category.coding.code = #108252007
* category.coding.display = "Laboratory procedure"
* code.coding.system = $sct
* code.coding.code = #5357009
* code.coding.display = "Leukocyte poor blood preparation"
* subject = Reference(Paziente-SSN) //$patient-url
// * subject.type = "Patient"
// * subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
// * subject.identifier.value = "RSSMRA71E01F205E"

* priority = #routine

* reasonCode.coding = $sct#4307007 "Pregestational diabetes mellitus AND/OR impaired glucose tolerance, modified White class F"

* specimen = Reference(Specimen-Lab-Esempio)
