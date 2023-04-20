Instance: DocumentObservationCode
InstanceOf: SearchParameter
Usage: #definition
Title: "Observation: codice dell'osservazione"
* status = #active
* name = "document-observation-code"
* url = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentObservationCode"
* code = #document-observation-code
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.as(Observation).code"
* description = "Permette di ricercare il Bundle in base al codice associato all'osservazione clinica."