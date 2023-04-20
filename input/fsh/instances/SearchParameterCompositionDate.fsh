Instance: DocumentCompositionDate
InstanceOf: SearchParameter
Usage: #definition
Title: "Composition: Data di modifica"
* status = #active
* name = "document-composition-date"
* url = "http://hl7.it/fhir/lab-report/SearchParameter/DocumentCompositionDate"
* code = #document-composition-date
* base = #Bundle
* type = #date
* expression = "Bundle.entry.resource.as(Composition).date"
* description = "Permette di ricercare il Bundle in base all'ultima data di modifica del documento da parte del firmatario."