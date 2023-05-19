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

* rest.resource[+].type = #Encounter
* rest.resource[=].profile = Canonical( EncounterRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #ServiceRequest
* rest.resource[=].profile = Canonical( ServiceRequestRL )
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

* rest.resource[+].type = #Media
* rest.resource[=].profile = Canonical( MediaRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical( PatientRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical( PractitionerRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical( PractitionerRoleRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Location
* rest.resource[=].profile = Canonical( LocationRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update

* rest.resource[+].type = #Organization
* rest.resource[=].profile = Canonical( OrganizationRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #update