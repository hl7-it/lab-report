Instance: ServiceRequest-Lab-Esempio
InstanceOf: ServiceRequestRL
Usage: #example
Title: "ServiceRequest1"
Description: "Richiesta di esami di laboratorio."

* identifier[+].type = #PLAC "Placer Identifier"
* identifier[=].system = "http://example.it/identifiers/placer"
* identifier[=].value = "2831398888"
* requisition.system = "http://example.it/identifiers/requisition"
* requisition.value = "1283139202209031800"
* status = #active
* intent = #order
* category = $serviceRequest-category#LAB "Esami per laboratorio"
* priority = #routine
* code = $servicerequest-lab#100156-9
* subject = Reference(Patient-SSN)
* encounter = Reference(Encounter-IT)
* occurrenceDateTime = "2022-09-03T18:00:00+02:00"
* authoredOn = "2022-09-05T14:52:43+02:00"
