RuleSet: ImposeProfile ( profile )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile].valueCanonical = {profile}


RuleSet: SetFmmandStatusRule ( fmm, status )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}

RuleSet: ReportTypeRule (element)
* {element} 1..
  * ^short = "Referto di Laboratorio"
  * ^definition = "Specifica che il documento è un Referto di Laboratorio"
  * ^comment = "DiagnosticReport.code e Composition.type devono essere allineati."

RuleSet: ReportCategoryRule
* category 
  * ^short = "Report Category"
  * ^definition = "Specifies the Report Category: usually Laboratory"
  * ^comment = "DiagnosticReport.category e Composition.category  devono essere allineati."
* category[studyType]
* category[specialty]


RuleSet: ReportAuthorRule
* ^short = "Who and/or what authored the Laboratory Report"
* ^definition = "Identifies who is responsible for the information in the Laboratory Report, not necessarily who typed it in."
* ^comment = "Se DiagnosticReport.resultsInterpreter esiste, anche Composition.author deve essere valorizzato. Altrimenti DiagnosticReport.performer dovrebbe essere un autore."

RuleSet: ReportStatusRule
* status 
  * ^short = "Stato del Referto" 
  * ^comment = "DiagnosticReport.status e Composition.status devono essere coerenti, vedi http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus per il mapping."


RuleSet: ReportEncounterRule
* encounter only Reference (EncounterRefertoLabIt) 
  * ^short = "Evento sanitario a cui si riferisce il Referto di Laboratorio (es. al momento della prescrizione)."
  * ^definition = """Evento sanitario a cui si riferisce il Referto di Laboratorio (es. al momento della prescrizione)."""
  * ^comment = """This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests).
  DiagnosticReport e Composition devono referenziare lo stesso encounter.
  """ 
  
RuleSet: ReportSubjectRule
* subject 1..
* subject only Reference (PatientRefertoLabIt)
  * ^short = "Who and/or what this report is about"
  * ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
  * ^comment = "DiagnosticReport e Composition devono avere lo stesso subject"
  
RuleSet: ReportIdentifierRule
* identifier 1..1
  * ^short = "Identificatore indipendente dalla versione." 
  * ^definition = "Identifiers assigned to this Laboratory Report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier DEVE essere uguale ad uno dei DiagnosticReport.identifier, se ne esiste almeno uno."


RuleSet: LOINCCopyrightForVS
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false