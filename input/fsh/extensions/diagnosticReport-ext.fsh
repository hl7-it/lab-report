Extension: DiagnosticReportReference
Id:   composition-DiagnosticReportReference
Title:  "Document DiagnosticReport Reference"
Description: "Riferimento all'istanza DiagnosticReport associata al documento."

* ^context[+].type = #element
* ^context[=].expression = "Composition"
* value[x] only Reference (composition-it-lab)
* url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"