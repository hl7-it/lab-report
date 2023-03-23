Instance: ServiceRequest-Covid
InstanceOf: ServiceRequestRL
Usage: #example

* identifier[+].type = #PLAC "Placer Identifier"
* identifier[=].system = "http://eng.it/identifiers/placer"
* identifier[=].value = "2831398888"
* requisition.system = "http://eng.it/identifiers/requisition"
* requisition.value = "1283139202209031800"
* status = #active
* intent = #order
* category = $serviceRequest-category#LAB "esami per laboratorio"
* priority = #routine
* code = $servicerequest-englab#IV16060 "Ricerca Coronavirus SARS-CoV-2"
* subject = Reference(Patient-IT)
* encounter = Reference(Encounter-IT)
* occurrenceDateTime = "2022-09-03T18:00:00+02:00"
* authoredOn = "2022-09-05T14:52:43+02:00"
