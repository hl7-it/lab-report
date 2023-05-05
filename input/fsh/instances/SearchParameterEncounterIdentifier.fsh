Instance: DocumentEncounterIdentifier
InstanceOf: SearchParameter
Usage: #definition
Title: "Bundle-Ecounter: identificativo"
* status = #active
* name = "document-encounter-identifier"
* url = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentEncounterIdentifier"
* code = #document-encounter-identifier
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.as(Encounter).identifier"
* description = "Permette di ricercare il Bundle in base all'identificativo dell'incontro."