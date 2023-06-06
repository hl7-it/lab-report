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
* rest.resource[=].profile = Canonical( diagnosticreport-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Encounter
* rest.resource[=].profile = Canonical( encounter-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #ServiceRequest
* rest.resource[=].profile = Canonical( servicerequest-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Observation
* rest.resource[=].profile = Canonical( observation-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Observation
* rest.resource[=].profile = Canonical( observation-grouping-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Specimen
* rest.resource[=].profile = Canonical( specimen-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Media
* rest.resource[=].profile = Canonical( media-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical( patient-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical( practitioner-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical( practitionerrole-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Location
* rest.resource[=].profile = Canonical( location-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Organization
* rest.resource[=].profile = Canonical( organization-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update


* rest.resource[+].type = #Device
* rest.resource[=].profile = Canonical(device-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update


* rest.resource[+].type = #Substance
* rest.resource[=].profile = Canonical(specimen-additive-substance-it-lab )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

