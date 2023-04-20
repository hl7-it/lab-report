Instance: DocumentSpecimenType
InstanceOf: SearchParameter
Usage: #definition
Title: "Specimen: tipo di campione"
* status = #active
* name = "document-specimen"
* url = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentSpecimenType"
* code = #document-specimen
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.as(Specimen).type"
* description = "Permette di ricercare il Bundle in base al tipo di campione."