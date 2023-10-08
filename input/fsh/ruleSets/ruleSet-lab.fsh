RuleSet: ImposeProfile ( profile )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile].valueCanonical = {profile}


RuleSet: SetFmmandStatusRule ( fmm, status )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}


RuleSet: ReportTypeRule (element)
// constraints have to be defined in sushi as "Invariant"
// no more needed here, moved to the build
/* * {element} 
  * ^constraint.key = "labRpt-code"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.code e Composition.type devono essere allineati." */

* {element} = $loinc#11502-2 
* {element} 1..
  * ^short = "Referto di Laboratorio"
  * ^definition = "Specifica che il documento è un Referto di Laboratorio"
  * ^comment = "DiagnosticReport.code e Composition.type devono essere allineati."

RuleSet: ReportCategoryRule
* category 
/*   * ^constraint.key = "labRpt-category"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.category e Composition.category  devono essere allineati." */
  * ^short = "Report Category"
  * ^definition = "Specifies the Report Category: usually Laboratory"
  * ^comment = "DiagnosticReport.category e Composition.category  devono essere allineati."

RuleSet: ReportAuthorRule
/* * ^constraint.key = "labRpt-author"
* ^constraint.severity = #warning
* ^constraint.human = "Se DiagnosticReport.resultsInterpreter esiste, anche Composition.author deve essere valorizzato. Altrimenti DiagnosticReport.performer dovrebbe essere un autore."
 */
* ^comment = "Se DiagnosticReport.resultsInterpreter esiste, anche Composition.author deve essere valorizzato. Altrimenti DiagnosticReport.performer dovrebbe essere un autore."

RuleSet: ReportStatusRule
* status 
  * ^short = "Stato del Referto" 
  * ^comment = "DiagnosticReport.status e Composition.status devono essere coerenti, vedi http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus per il mapping."
  /* 
  * ^constraint.key = "labRpt-status"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.status e Composition.status devono essere allineati." */

RuleSet: ReportEncounterRule
* encounter only Reference (encounter-it-lab)
/*   * ^constraint.key = "labRpt-enc"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.encounter e Composition.encounter devono essere allineati."  */  

  * ^short = "The healthcare event which this Laboratory Report is about (when test ordered)."
  * ^definition = """The healthcare event (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about."""
  * ^comment = """This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests).
  
  DiagnosticReport e Composition devono referenziare lo stesso encounter.
  """
  
RuleSet: ReportSubjectRule
* subject 1..
* subject only Reference (patient-it-lab)
/*   * ^constraint.key = "labRpt-subject"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.subject e Composition.subject devono essere allineati." */
  * ^short = "Who and/or what this report is about"
  * ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
  * ^comment = "DiagnosticReport e Composition devono avere lo stesso subject"
  
RuleSet: ReportIdentifierRule
* identifier 1..1
  * ^short = "Identificatore indipendente dalla versione."
/*   * ^constraint.key = "labRpt-id"
  * ^constraint.severity = #warning
  * ^constraint.human = "DiagnosticReport.identifier e Composition.identifier devono essere allineati."
 */  

  * ^definition = "Identifiers assigned to this Laboratory Report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier DEVE essere uguale ad uno dei DiagnosticReport.identifier, se ne esiste almeno uno."