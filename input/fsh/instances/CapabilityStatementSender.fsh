Instance: CapabilityStatementSenderLabReport
InstanceOf: CapabilityStatement
Usage: #definition
* name = "RefertoDiLaboratorio_Sender"
* title = "Referto di Laboratorio - Sender (client)"
* status = #draft
* experimental = false
* date = "2023-04-05"
* description = "CapabilityStatement per il Sender definito nelle specifiche del Referto di Laboratorio"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml

* rest.mode = #client

// --------------------------------------//
//-----------------Bundle----------------//
// --------------------------------------//

* rest.resource[+].type = #Bundle
* rest.resource[=].profile = Canonical( BundleRL)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchParam.name = "identifier"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/SearchParameter/Bundle-identifier"
* rest.resource[=].searchParam.type = #token
* rest.resource[=].searchParam.documentation = "Permette di ricercare in base all'identifier del Bundle"
* rest.resource[=].searchParam.name = "ServiceRequest.identifier"
* rest.resource[=].searchParam.definition = "http://example-it/DocumentServiceRequest"
* rest.resource[=].searchParam.type = #token
* rest.resource[=].searchParam.documentation = "Permette di ricercare il Bundle in base all'identificativo della richiesta di prestazione."
* rest.resource[=].searchParam.name = "Specimen.type"
* rest.resource[=].searchParam.definition = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentSpecimenType"
* rest.resource[=].searchParam.type = #token
* rest.resource[=].searchParam.documentation = "Permette di ricercare il Bundle in base al tipo di campione."
* rest.resource[=].searchParam.name = "Encounter.period"
* rest.resource[=].searchParam.definition = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentEncounterPeriod"
* rest.resource[=].searchParam.type = #date
* rest.resource[=].searchParam.documentation = "Permette di RIcercare il Bundle in base alla data dell'incontro."
* rest.resource[=].searchParam.name = "Observation.code"
* rest.resource[=].searchParam.definition = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentObservationCode"
* rest.resource[=].searchParam.type = #token
* rest.resource[=].searchParam.documentation = "Permette di ricercare il Bundle in base al codice associato all'osservazione clinica."
* rest.resource[=].searchParam.name = "Composition.date"
* rest.resource[=].searchParam.definition = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentCompositionDate"
* rest.resource[=].searchParam.type = #date
* rest.resource[=].searchParam.documentation = "Permette di ricercare il Bundle in base all'ultima data di modifica del documento da parte del firmatario."
* rest.resource[=].searchParam.name = "ServiceRequest.requisition"
* rest.resource[=].searchParam.definition = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentServiceRequisition"
* rest.resource[=].searchParam.type = #token
* rest.resource[=].searchParam.documentation = "Permette di ricercare il Bundle in all'NRE o altri identificativi comuni a più richieste di prestazione."
* rest.resource[=].searchParam.name = "Encounter.identifier"
* rest.resource[=].searchParam.definition = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentEncounterIdentifier"
* rest.resource[=].searchParam.type = #token
* rest.resource[=].searchParam.documentation = "Permette di Ricercare il Bundle in base all'identificativo dell'incontro."
* rest.resource[=].searchParam.name = "Patient.identifier"
* rest.resource[=].searchParam.definition = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentPatientIdentifier"
* rest.resource[=].searchParam.type = #token
* rest.resource[=].searchParam.documentation = "Permette di ricercare il Bundle in base al paziente."


* document[0].mode = #producer
* document[=].profile = Canonical(BundleRL)
* document[+].mode = #producer
* document[=].profile = Canonical(CompositionRL)
* document[+].mode = #producer
* document[=].profile = Canonical(EncounterRL)
* document[+].mode = #producer
* document[=].profile = Canonical(ServiceRequestRL)
* document[+].mode = #producer
* document[=].profile = Canonical(ObservationRL)
* document[+].mode = #producer
* document[=].profile = Canonical(SpecimenRL)
* document[+].mode = #producer
* document[=].profile = Canonical(DiagnosticReportRL)
* document[+].mode = #producer
* document[=].profile = Canonical(PractitionerRoleRL)
* document[+].mode = #producer
* document[=].profile = Canonical(Device)
* document[+].mode = #producer
* document[=].profile = Canonical(Procedure)
* document[+].mode = #producer
* document[=].profile = Canonical(Media)

* rest.resource[+].type = #Device
* rest.resource[=].profile = Canonical( Device )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Media
* rest.resource[=].profile = Canonical( Media )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Procedure
* rest.resource[=].profile = Canonical( Procedure )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Composition
* rest.resource[=].profile = Canonical( CompositionRL )
* rest.resource[=].interaction[0].code = #read
* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].profile = Canonical( DiagnosticReportRL )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Encounter
* rest.resource[=].profile = Canonical( EncounterRL )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Observation
* rest.resource[=].profile = Canonical( ObservationRL )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #ServiceRequest
* rest.resource[=].profile = Canonical( ServiceRequestRL )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Specimen
* rest.resource[=].profile = Canonical( SpecimenRL )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical( PractitionerRoleRL )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Device
* rest.resource[=].profile = Canonical( Device )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Media
* rest.resource[=].profile = Canonical( Media )
* rest.resource[=].interaction[0].code = #read

* rest.resource[+].type = #Procedure
* rest.resource[=].profile = Canonical( Procedure )
* rest.resource[=].interaction[0].code = #read