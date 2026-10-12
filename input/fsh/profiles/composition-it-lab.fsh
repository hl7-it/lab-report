Profile: CompositionRefertoLabIt
Parent: Composition //$clinical-document 
Id: composition-it-lab
Title: "Composition - Lab Report"
Description: "Descrizione del referto di laboratorio tramite il profilo della risorsa Composition per il referto di laboratorio."

* insert SetFmmandStatusRule ( 1, trial-use)
* . ^short = "Composition Referto di Laboratorio"

* language = #it-IT
* language 1..1  
* language ^short = "Metadato che indica la lingua utilizzata per descrivere la risorsa."
* extension contains $ext-versionNumber named versionNumber 0..1
* extension[versionNumber].value[x] only string
* extension contains $informationRecipient named information-recipient 0..*
* extension contains $basedOnOrder named basedOn-order-or-requisition 0..* //extension mantenuta da IG Lab IT precedente, assente in EU Lab
* extension contains $ext-DiagnReportReference named diagnosticReportReference 0..1
* extension[diagnosticReportReference].valueReference 1..1
* extension[diagnosticReportReference].valueReference.reference 1..
* extension contains composition-dataenterer-it named dataEnterer 0..* //extension mantenuta da IG Lab IT precedente, assente in EU Lab
* extension[dataEnterer] ^short = "Persona o dispositivo che trasforma un testo dettato nel documento FHIR."
* extension[information-recipient] ^short = "Professionisti sanitari che ricevono una copia del documento (es. MMG/PLS)."
* extension[information-recipient].valueReference only Reference(PractitionerItcore or DeviceRefertoLabIt or PatientItcore or RelatedPerson or PractitionerRoleItcore or OrganizationItCore or CareTeam or Group)

* insert ReportIdentifierRule
* insert ReportTypeRule ( type )

* status ^short = "Stato di completezza della risorsa Composition. Lo stato della risorsa rappresenta anche lo stato del documento."
* status ^definition = "Lo stato della Composition si sviluppa generalmente solo attraverso questo elenco: passa da preliminary a final e poi può passare a amended (ovvero modificato). "
* type from $lab-type (preferred)
* type ^short = "Tipo di Referto di laboratorio"

* insert ReportSubjectRule
* insert ReportStatusRule

/* * category from $diagnosticreport-category-valueset (example) */
* insert ReportCategoryRule 
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies this laboratory report. Two basic categories has been selected in this guide: laboratory specialty and Study type. Laboratory specialty is characteristic of the laboratory that produced the test result while Study type is an arbitrary classificion of the test type."
* category contains studyType 0..* and specialty 0..*
* category[studyType] from LabStudyTypesEuVs  //restringe ulteriormente LOINC
* category[studyType].coding.system = "http://loinc.org" //risolve la slice
* category[specialty] from LabSpecialtyEuVs  //restringe ulteriormente SNOMED CT
* category[specialty].coding.system = "http://snomed.info/sct" //risolve la slice

* insert ReportEncounterRule

* date ^short = "Data di modifica della risorsa Composition."
* confidentiality 1..1 
* confidentiality from $conf
* confidentiality ^short = "Codice di confidenzialità della Composition."
* subject only Reference(PatientItcore)
  * ^short = "Chi e/o cosa è il soggetto del referto di laboratorio"

* author only Reference(PractitionerItcore or PractitionerRoleItcore or PatientItcore or OrganizationItCore)
* author 1..
  * ^short = "Chi e/o cosa è l'autore del referto di laboratorio."
  * ^definition = """Identifica il soggetto responsabile delle informazioni presenti nel referto di laboratorio, non necessariamente colui che le ha materialmente inserite."""
  * insert ReportAuthorRule

* title ^short = "Titolo o nome human-readable della Composition."
* title = "Referto di Laboratorio" 

* attester 1..*
* attester.party only Reference(
    PatientItcore or
    RelatedPerson or
    PractitionerItcore or
    PractitionerRoleItcore or
    OrganizationItCore
)
//----slicing attester -------------------------------------
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester ^slicing.description = "Professionisti che attestano la validità del documento."
* attester ^short = "Professionisti che attestano la validità del documento. Se la risorsa è creata a fine documentale uno degli attester dovrebbe essere il firmatario, ovvero chi allega la firma digitale al documento."
* attester ^slicing.ordered = false
* attester contains
    legalAuthenticator 0..1 and
    authenticator 0..1 
//----attester.legalAuthenticator -------------------------------------
* attester[legalAuthenticator] ^short = "Firmatario del documento FHIR."
* attester[legalAuthenticator].mode 1..1
* attester[legalAuthenticator].mode = #legal
//* attester[legalAuthenticator].party only Reference(PractitionerItcore or PractitionerRoleItcore)
* attester[legalAuthenticator].time 1..1
* attester[legalAuthenticator].time ^short = "Riferimento temporale della firma."
* attester[legalAuthenticator].party ^short = "Riferimento al firmatario."
//----attester.authenticator -------------------------------------
* attester[authenticator] ^short = "Validatore del documento FHIR."
* attester[authenticator].mode 1..1
* attester[authenticator].mode = #professional
//* attester[authenticator].party only Reference(PractitionerItcore or PractitionerRoleItcore)
* attester[authenticator].party ^short = "Riferimento al validatore."

* custodian 1..1
* custodian only Reference(OrganizationItCore)
* custodian ^short = "Organizzazione che si occupa della conservazione del documento FHIR."

* relatesTo ^short = "Ulteriori risorse Composition correlate al documento."
* relatesTo.target[x] ^short = "Riferimento alla risorsa Composition correlata."
* relatesTo.target[x] only Reference(CompositionRefertoLabIt)

* section.title 1..
* section.title ^short = "Titolo della sezione."
* section.code 1..
* insert ReportTypeRule ( type )
* section.code ^short = "Codice della sezione."
* section.author only Reference(
    PractitionerItcore or
    PractitionerRoleItcore or
    DeviceRefertoLabIt or
    PatientItcore or
    RelatedPerson or
    OrganizationItCore
)
* section 1..
  * ^slicing.discriminator[+].type = #pattern
  * ^slicing.discriminator[=].path = "$this.code"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^definition = """The \"body\" of the report is organized as a tree of up to two levels of sections: top level sections represent laboratory specialties. A top level section SHALL contain either one text block carrying all the text results produced for this specialty along with Laboratory Data Entries or a set of Laboratory Report Item Sections. In the first case the specialty section happens to also be a leaf section. In the latter case, each (second level) leaf section contained in the (top level) specialty section represents a Report Item: i.e., a battery, a specimen study (especially in microbiology), or an individual test. In addition, any leaf section SHALL contain a Laboratory Data Entries containing the observations of that section in a machine-readable format."""
* section contains
  annotations 0..* and
  attachment 0..*

// * section[lab-no-subsections] ^short = "Variante 1: questa sezione presenta solo entry senza sottosezioni."
// * section[lab-no-subsections].text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."
// * section[lab-no-subsections].code from $sezione-referto-laboratorio (preferred)
// * section[lab-no-subsections].entry only Reference (ObservationRefertoLabIt or ObservationGroupingRefertoLabIt or ObservationDocRefertoLabIt) // Aligned with the DR Reference (ObservationRefertoLabIt)
// * section[lab-subsections].code from $sezione-referto-laboratorio (preferred)
// * section[lab-subsections].section ^short = "Sottosezione strutturata della sezione principale."
// * text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."
// * section[lab-subsections].entry only Reference (ObservationRefertoLabIt or ObservationGroupingRefertoLabIt or ObservationDocRefertoLabIt) // Aligned with the DR Reference (ObservationRefertoLabIt)
// * section[lab-subsections] ^short = "Variante 2: questa sezione presenta sottosezioni senza entry"

//-----Sezione Annotations--------------
* section[annotations] 
  * ^short = "Commenti testuali"
  * ^definition = """Rappresentazione testuale dei commenti che accompagnano il referto, come suggerimenti per la valutazione, note tecniche del laboratorio, ecc."""
  * code = $loinc#48767-8
  * extension contains  $note named note 0..* 
  * extension[note] ^short = "Note relative alla section"
  * extension[note] ^definition = """Campo relativo all'inserimento di eventuali note dedicate alle section"""
  * text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."

//-----Sezione Attachment--------------
* section[attachment]
  * ^short = "Rappresentazione dei dati aggiuntivi (ad esempio immagini, diagrammi) con lo scopo di completare le informazioni associate a questo referto"
  * ^definition = """Rappresentazione dei dati aggiuntivi (ad esempio immagini, diagrammi) con lo scopo di completare le informazioni associate a questo referto."""
  * extension contains  $note named note 0..* 
  * extension[note] ^short = "Note relative alla section"
  * extension[note] ^definition = """Campo relativo all'inserimento di eventuali note dedicate alle section"""
  * code = $loinc#77599-9
  * entry 1..
  * entry only Reference (Binary or DocumentReference)
  * section 0..0




