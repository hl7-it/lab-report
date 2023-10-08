Profile: DiagnosticReportRefertoLabIt
Parent: $DiagnosticReport-eu-lab // DiagnosticReport
Id: diagnosticreport-it-lab
Title: "DiagnosticReport - Lab Report"
Description: "Descrizione della risorsa DiagnosticReport per la descrizione delle informazioni cliniche del dominio di Lab Report."

* insert SetFmmandStatusRule ( 1, draft )

/* * ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia" */
* . ^short = "DiagnosticReport Referto di Laboratorio"
* . ^definition = "Laboratory Report DiagnosticReport"
// * extension contains DiagnosticReportReference named DiagnosticReportCompositionR5 1..1

/* * extension contains $diagnostic-report-composition-r5 named DiagnosticReportCompositionR5 0..1 */
* extension[DiagnosticReportCompositionR5] ^short = "Estensione di FHIR R5 per legare la DiagnosticReport a Composition."
/* * extension[DiagnosticReportCompositionR5].value[x] ^short = "Reference a Composition."
* extension[DiagnosticReportCompositionR5].value[x] 1..1 */
* extension[DiagnosticReportCompositionR5].value[x] only Reference(composition-it-lab)

* basedOn only Reference (servicerequest-it-lab)
* basedOn ^short = "Reference a una o più prestazioni richieste associate al referto."
* category 1.. 
* category ^short = "Categoria del servizio."
* category ^definition = "Un codice che classifica la disciplina clinica, il reparto o il servizio diagnostico che ha creato il referto (es. cardiologia, biochimica, ematologia)."
//* category from $diagnosticreport-category (example)
* category ^constraint.source = Canonical(DiagnosticReportRefertoLabIt)
* category from $diagnosticreport-category-valueset (example)

* subject 1..
* subject ^short = "Soggetto del referto."
* subject ^constraint.source = Canonical(DiagnosticReportRefertoLabIt)
* subject only Reference(patient-it-lab)

* identifier ^constraint.source = Canonical(DiagnosticReportRefertoLabIt)
* status ^short = "Descrizione attributo: Stato del report clinico. Possibili valori: registered | partial | preliminary | modified | final | amended | corrected | appended | cancelled | entered-in-error | unknown"
* status from $diagn-status (required)
* status ^constraint.source = Canonical(DiagnosticReportRefertoLabIt)
* insert ReportStatusRule
* encounter only Reference (encounter-it-lab) 
* encounter ^short = "Evento sanitario a cui si riferisce il Referto di Laboratorio (es. al momento della prescrizione)."
* encounter ^constraint.source = Canonical(DiagnosticReportRefertoLabIt)
* specimen only Reference (specimen-it-lab)
* specimen ^short = "Reference ai campioni su cui si basa DiagnosticReport."
* performer only Reference(practitioner-it-lab or practitionerrole-it-lab or organization-it-lab or CareTeam)
  * insert ReportAuthorRule
* performer ^constraint.source = Canonical(DiagnosticReportRefertoLabIt)
* performer ^short = "Persona o Organizzazione che partecipa all'evento clinico descritto."
* performer ^definition = "Organizzazione o Persona che è responsabile del report; non è necessariamente l'autore dei dati atomici o l'entità che ha interpretato i risultati. "
/* * code ^short = "Nome/codice della diagnostic report."
* code.coding ^short = "Codice definito da un sistema terminologico."
* code.coding.system = $loinc
* code.coding.system ^short = "Sistema terminologico."
* code.coding.code = #11502-2
* code.coding.code ^short = "Codice appartenente al sistema terminologico."
* code.coding.display = "Laboratory report"
* code.coding.display ^short = "Descrizione del codice." */
* insert ReportTypeRule ( code )
/* * code ^constraint.source = Canonical(DiagnosticReportRefertoLabIt) */
* result only Reference (observation-it-lab or observation-grouping-it-lab)
* result ^short = "Osservazioni cliniche." 
* imagingStudy 0..0 
* media ^short = "Contenuto multimediale associate al DiagnosticReport."
* media.comment ^short = "Commento sull'immagine."
* media.link only Reference(media-it-lab)
* media.link ^short = "Riferimento al contenuto multimediale."
* presentedForm ^short = "Rappresentazione testuale del Referto di Laboratorio così come emesso."

* insert ReportIdentifierRule
* insert ReportCategoryRule 

* insert ReportSubjectRule
* insert ReportEncounterRule

  
* resultsInterpreter
  * insert ReportAuthorRule
* resultsInterpreter ^constraint.source = Canonical(DiagnosticReportRefertoLabIt)