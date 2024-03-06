Profile: DiagnosticReportRefertoLabIt
Parent: $DiagnosticReport-eu-lab 
Id: diagnosticreport-it-lab
Title: "DiagnosticReport - Lab Report"
Description: "Descrizione delle informazioni cliniche tramite il profilo della risorsa DiagnosticReport per il referto di laboratorio."

* insert SetFmmandStatusRule (1, trial-use)

* . ^short = "DiagnosticReport Referto di Laboratorio"
* . ^definition = "Laboratory Report DiagnosticReport"

* extension[DiagnosticReportCompositionR5] ^short = "Estensione di FHIR R5 per legare la DiagnosticReport a Composition."
* extension[DiagnosticReportCompositionR5].value[x] ^short = "Reference a Composition."
* extension[DiagnosticReportCompositionR5].value[x] only Reference(composition-it-lab)

* insert ReportIdentifierRule 

* basedOn only Reference (ServiceRequestRefertoLabIt)
* basedOn ^short = "Reference a una o più prestazioni richieste associate al referto."

* insert ReportCategoryRule 
* insert ReportSubjectRule


* status ^short = "Descrizione attributo: Stato del report clinico. Possibili valori: registered | partial | preliminary | modified | final | amended | corrected | appended | cancelled | entered-in-error | unknown"
* status from $diagn-status (required)

* insert ReportStatusRule
* encounter only Reference (EncounterRefertoLabIt) 
* encounter ^short = "Evento sanitario a cui si riferisce il Referto di Laboratorio (es. al momento della prescrizione)."

* specimen only Reference (SpecimenRefertoLabIt)
* specimen ^short = "Reference ai campioni su cui si basa la DiagnosticReport."
* performer only Reference(PractitionerRefertoLabIt or PractitionerRoleRefertoLabIt or OrganizationRefertoLabIt or CareTeam)
  * insert ReportAuthorRule
* performer ^short = "Persona o Organizzazione che partecipa all'evento clinico descritto."
* performer ^definition = "Organizzazione o Persona che è responsabile del report; non è necessariamente l'autore dei dati atomici o l'entità che ha interpretato i risultati. "
* code ^short = "Nome/codice della diagnostic report."
* code.coding ^short = "Codice definito da un sistema terminologico."
* code = $loinc#11502-2 "Laboratory report"
* insert ReportTypeRule ( code )
* result only Reference (ObservationRefertoLabIt) 
* result ^short = "Osservazioni cliniche." 
* imagingStudy 0..0 
* media ^short = "Contenuto multimediale associate al DiagnosticReport."
* media.comment ^short = "Commento sull'immagine."
* media.link only Reference(media-it-lab)
* media.link ^short = "Riferimento al contenuto multimediale."
* presentedForm ^short = "Rappresentazione testuale del Referto di Laboratorio così come emesso."

* insert ReportEncounterRule
  
* resultsInterpreter
  * insert ReportAuthorRule
