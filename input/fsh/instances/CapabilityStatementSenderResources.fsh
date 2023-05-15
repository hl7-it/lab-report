Instance: CapabilityStatementSenderResourceLabReport
InstanceOf: CapabilityStatement
Usage: #definition
* name = "RefertoDiLaboratorio_Sender_Resource"
* title = "Referto di Laboratorio - Resources Sender (client)"
* status = #draft
* experimental = false
* date = "2023-04-05"
* description = "CapabilityStatement per il Sender definito nelle specifiche del dominio di medicina di Laboratorio."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml


* rest.mode = #client

* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].profile = Canonical( DiagnosticReportRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Observation
* rest.resource[=].profile = Canonical( ObservationRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Specimen
* rest.resource[=].profile = Canonical( SpecimenRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update
