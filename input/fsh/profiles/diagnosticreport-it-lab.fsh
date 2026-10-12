Profile: DiagnosticReportRefertoLabIt
Parent: DiagnosticReport
Id: diagnosticreport-it-lab
Title: "DiagnosticReport - Lab Report"
Description: "Descrizione delle informazioni cliniche tramite il profilo della risorsa DiagnosticReport per il referto di laboratorio."

* insert SetFmmandStatusRule (1, trial-use)

* . ^short = "DiagnosticReport Referto di Laboratorio"
* . ^definition = "Laboratory Report DiagnosticReport"

* extension contains $ext-composition named DiagnosticReportCompositionR5 1..1
* extension contains $ext-annotation named note 0..*
* extension[DiagnosticReportCompositionR5] ^short = "Estensione di FHIR R5 per legare la DiagnosticReport a Composition."
* extension[DiagnosticReportCompositionR5].value[x] ^short = "Reference a Composition."
* extension[DiagnosticReportCompositionR5].value[x] only Reference(composition-it-lab)
* extension[note].value[x].extension contains $ext-annotationnote named noteType 0..1
* extension[note].value[x].author[x] only string or Reference(PractitionerItcore or OrganizationItCore or PatientItcore or RelatedPerson)

* insert ReportIdentifierRule 

* basedOn only Reference(ServiceRequestRefertoLabIt)
* basedOn ^short = "Reference a una o più prestazioni richieste associate al referto."

* insert ReportCategoryRule 
* insert ReportSubjectRule

* status ^short = "Descrizione attributo: Stato del report clinico. Possibili valori: registered | partial | preliminary | modified | final | amended | corrected | appended | cancelled | entered-in-error | unknown"
* status from $diagn-status (required)

//----slicing category---------------------
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies this laboratory report. Two basic categories has been selected in this guide: laboratory specialty and Study type. Laboratory specialty is characteristic of the laboratory that produced the test result while Study type is an arbitrary classificion of the test type."
* category contains studyType 0..* and specialty 0..*
* category[studyType] from LabStudyTypesEuVs  //restringe ulteriormente LOINC
* category[studyType].coding.system = "http://loinc.org" //risolve la slice
* category[specialty] from LabSpecialtyEuVs  //restringe ulteriormente SNOMED CT
* category[specialty].coding.system = "http://snomed.info/sct" //risolve la slice

* code from $lab-type (preferred)
* code ^short = "Codice che identifica il referto di laboratorio; è preferibile utilizzare un codice LOINC."

* insert ReportStatusRule
* encounter only Reference(EncounterRefertoLabIt) 
* encounter ^short = "Evento sanitario a cui si riferisce il Referto di Laboratorio (es. al momento della prescrizione)."

* specimen only Reference(SpecimenRefertoLabIt)
* specimen ^short = "Reference ai campioni su cui si basa la DiagnosticReport."

* performer only Reference(PractitionerItcore or PractitionerRoleItcore or OrganizationItCore or CareTeam)
  * insert ReportAuthorRule
* performer ^short = "Persona o Organizzazione che partecipa all'evento clinico descritto."
* performer ^definition = "Organizzazione o Persona che è responsabile del report; non è necessariamente l'autore dei dati atomici o l'entità che ha interpretato i risultati. "

* insert ReportTypeRule ( code )

* resultsInterpreter only Reference(PractitionerItcore or PractitionerRoleItcore or OrganizationItCore or CareTeam)
* result only Reference(ObservationRefertoLabIt) 
* result ^short = "Osservazioni cliniche." 
* imagingStudy 0..0 

* media
  * ^short = "Dati aggiuntivi (come immagini, diagrammi o documenti) associati a questo referto"
  * comment
    * ^short = "Commento relativo all'immagine o al dato (ad es. una spiegazione)"  
  * link
    * ^short = "Reference to the image or data"
    * ^definition = "A reference to the image or data associated with this report."
    * extension contains $diagnosticReport-link-xver named link 0..1
    * extension[link]
      * ^short = "DocumentReference contenente ulteriori informazioni o dati aggiuntivi"
      * valueReference only Reference(DocumentReference) 

* media.link only Reference(MediaRefertoLabIt)
* insert ReportEncounterRule
* resultsInterpreter
  * insert ReportAuthorRule

* presentedForm ^short = "Rappresentazione testuale del Referto di Laboratorio così come emesso."

