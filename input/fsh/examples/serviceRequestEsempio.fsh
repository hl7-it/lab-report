Instance: ServiceRequest-Lab-Esempio
InstanceOf: ServiceRequestRefertoLabIt
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
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5) //$patient-url




* priority = #routine

* reasonCode.coding = $sct#4307007 "Pregestational diabetes mellitus AND/OR impaired glucose tolerance, modified White class F"

* specimen = Reference(urn:uuid:168d4960-0a0b-43af-8025-180f0965f324)
