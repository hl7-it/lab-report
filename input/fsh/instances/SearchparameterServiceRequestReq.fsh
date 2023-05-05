Instance: DocumentServiceRequisition
InstanceOf: SearchParameter
Usage: #definition
Title: "Bundle-ServiceRequest: identificativo comune (es.NRE)"
* status = #active
* name = "document-servicerequest-requisition"
* url = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentServiceRequisition"
* code = #document-servicerequest-requisition
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.as(ServiceRequest).requisition"
* description = "Permette di ricercare il Bundle in all'NRE o altri identificativi comuni a più richieste di prestazione."