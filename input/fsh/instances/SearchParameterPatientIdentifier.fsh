Instance: DocumentPatientIdentifier
InstanceOf: SearchParameter
Usage: #definition
Title: "Patient: identificativo"
* status = #active
* name = "document-patient-identifier"
* url = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentPatientIdentifier"
* code = #document-patient-identifier
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.as(Composition).subject.identifier"
* description = "Permette di ricercare il Bundle in base al paziente."