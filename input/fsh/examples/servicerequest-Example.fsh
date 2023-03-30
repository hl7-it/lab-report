Instance: ServiceRequest-Lab-Esempio
InstanceOf: ServiceRequestRL
Usage: #example
Title: "Esempio Richiesta"
Description: "Esempio di richiesta: prestazione richiesta facente parte di un'autorizzazione simultanea per esami di laboratorio."

* identifier[+].type = #PLAC "Placer Identifier"
* identifier[=].system = "http://example.it/identifiers/placer"
* identifier[=].value = "2831398888"
* requisition.system = "http://example.it/identifiers/requisition"
* requisition.value = "1283139202209031800"
* status = #active
* intent = #order
* category = $serviceRequest-category#LAB "esami per laboratorio"
* priority = #routine
* code = $servicerequest-lab#100156-9
* subject = Reference(Patient-SSN)
* encounter = Reference(Encounter-IT)
* occurrenceDateTime = "2022-09-03T18:00:00+02:00"
* authoredOn = "2022-09-05T14:52:43+02:00"
