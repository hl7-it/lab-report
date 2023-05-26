Instance: CapabilityStatementSenderLabReport
InstanceOf: CapabilityStatement
Usage: #definition
* name = "RefertoDiLaboratorio_Sender"
* title = "Referto di Laboratorio - Document Sender (client)"
* status = #draft
* experimental = false
* date = "2023-04-05"
* description = "CapabilityStatement per il Sender definito nelle specifiche del Referto di Laboratorio."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml

* rest.mode = #client
// --------------------------------------//
//-----------------Bundle----------------//
// --------------------------------------//

* rest.resource[+].type = #Bundle
* rest.resource[=].profile = Canonical( bundle-it-lab)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create

* document[0].mode = #producer
* document[=].profile = Canonical(bundle-it-lab)

* rest.resource[+].type = #Composition
* rest.resource[=].profile = Canonical( composition-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].profile = Canonical( diagnosticreport-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Encounter
* rest.resource[=].profile = Canonical( encounter-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Device
* rest.resource[=].profile = Canonical(device-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Substance
* rest.resource[=].profile = Canonical(specimen-additive-substance-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Observation
* rest.resource[=].profile = Canonical( observation-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #ServiceRequest
* rest.resource[=].profile = Canonical( servicerequest-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Specimen
* rest.resource[=].profile = Canonical( specimen-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Media
* rest.resource[=].profile = Canonical( media-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical( patient-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical( practitioner-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical( practitionerrole-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Location
* rest.resource[=].profile = Canonical( location-it-lab )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Organization
* rest.resource[=].profile = Canonical( organization-it-lab )
* rest.resource[=].interaction[0].code = #read
