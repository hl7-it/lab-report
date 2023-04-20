Instance: DocumentEncounterPeriod
InstanceOf: SearchParameter
Usage: #definition
Title: "Ecounter: periodo"
* status = #active
* name = "document-encounter-period"
* url = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentEncounterPeriod"
* code = #document-encounter-period
* base = #Bundle
* type = #date
* expression = "Bundle.entry.resource.as(Encounter).period"
* description = "Permette di RIcercare il Bundle in base alla data dell'incontro."