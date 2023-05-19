Extension: DiagnosticReportReference
Id:   composition-DiagnosticReportReference
Title:  "Document DiagnosticReport Reference"
Description: "Riferimento all'istanza DiagnosticReport associata al documento."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* value[x] only Reference (DiagnosticReportRL)