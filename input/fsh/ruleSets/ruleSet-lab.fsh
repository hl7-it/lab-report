RuleSet: ReportAuthorRule
* ^constraint.key = "labRpt-author"
* ^constraint.severity = #warning
* ^constraint.human = "Se DiagnosticReport.resultsInterpreter esiste, anche Composition.author deve essere valorizzato. Altrimenti DiagnosticReport.performer dovrebbe essere un autore."


RuleSet: ReportStatusRule
* status ^short = "Stato del Referto" 
  * ^constraint.key = "labRpt-status"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.status e Composition.status devono essere allineati."
  
RuleSet: ReportEncounterRule
* encounter only Reference (encounter-it-lab)
  * ^constraint.key = "labRpt-enc"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.encounter e Composition.encounter devono essere allineati."  

RuleSet: ReportCategoryRule
* category 
  * ^constraint.key = "labRpt-category"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.category e Composition.category  devono essere allineati."

RuleSet: ReportSubjectRule
* subject 1..
* subject only Reference (patient-it-lab)
  * ^constraint.key = "labRpt-subject"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.subject e Composition.subject devono essere allineati."

RuleSet: ReportIdentifierRule
* identifier
  * ^constraint.key = "labRpt-id"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.identifier e Composition.identifier devono essere allineati."

  RuleSet: ReportTypeRule (element)
* {element} 
  * ^constraint.key = "labRpt-code"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.code e Composition.type devono essere allineati."