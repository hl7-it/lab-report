Profile: CompositionRefertoLabIt
Parent: $Composition-eu-lab //$clinical-document 
Id: composition-it-lab
Title: "Composition - Lab Report"
Description: "Descrizione in tramite la risorsa Composition di header e body del Lab Report."

* insert SetFmmandStatusRule ( 1, trial-use)
* . ^short = "Composition Referto di Laboratorio"

* language = #it-IT
* language 1..1  
* language ^short = "Metadato che indica la lingua utilizzata per descrivere la risorsa."
* extension contains   composition-dataenterer-it named dataEnterer 0..*

* extension[dataEnterer] ^short = "Persona o dispositivo che trasforma un testo dettato nel documento FHIR."
* extension[information-recipient] ^short = "Professionisti sanitari che ricevono una copia del documento (es. MMG/PLS)."

* insert ReportIdentifierRule

* insert ReportTypeRule ( type )
/* * type from http://hl7.eu/fhir/laboratory/ValueSet/lab-reportType-eu-lab (preferred) */

* status ^short = "Stato di completezza della risorsa Composition. Lo stato della risorsa rappresenta anche lo stato del documento."
* status ^definition = "Lo stato della Composition si sviluppa generalmente solo attraverso questo elenco: passa da preliminary a final e poi può passare a amended (ovvero modificato). "

* insert ReportSubjectRule

* insert ReportStatusRule

/* * category from $diagnosticreport-category-valueset (example) */
* insert ReportCategoryRule 

* insert ReportEncounterRule

* date ^short = "Data di modifica della risorsa Composition."
* confidentiality from $conf
* confidentiality ^short = "Codice di confidenzialità della Composition."
* author only Reference(PractitionerRefertoLabIt or PractitionerRoleRefertoLabIt or PatientRefertoLabIt or OrganizationRefertoLabIt)

* author 1..
  * ^short = "Who and/or what authored the Laboratory Report"
  * ^definition = "Identifies who is responsible for the information in the Laboratory Report, not necessarily who typed it in."
  * insert ReportAuthorRule

* title ^short = "Titolo o nome human-readable della Composition."
* title = "Referto di Laboratorio" 
* attester 1..*
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester ^slicing.description = "Professionisti che attestano la validità del documento."
* attester ^short = "Professionisti che attestano la validità del documento. Se la risorsa è creata a fine documentale uno degli attester dovrebbe essere il firmatario, ovvero chi allega la firma digitale al documento."
* attester ^slicing.ordered = false
* attester contains
    legalAuthenticator 0..1 and
    authenticator 0..1 
* attester[legalAuthenticator] ^short = "Firmatario del documento FHIR."
* attester[legalAuthenticator].mode 1..1
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].party only Reference(PractitionerRefertoLabIt or PractitionerRoleRefertoLabIt)
* attester[legalAuthenticator].time 1..1
* attester[legalAuthenticator].time ^short = "Riferimento temporale della firma."
* attester[legalAuthenticator].party ^short = "Riferimento al firmatario."

* attester[authenticator] ^short = "Validatore del documento FHIR."
* attester[authenticator].mode 1..1
* attester[authenticator].mode = #professional
* attester[authenticator].party only Reference(PractitionerRefertoLabIt or PractitionerRoleRefertoLabIt)
* attester[authenticator].party ^short = "Riferimento al validatore."

* custodian 0..1
* custodian only Reference(OrganizationRefertoLabIt)
* custodian ^short = "Organizzazione che si occupa della conservazione del documento FHIR."

/* * relatesTo ^short = "Ulteriori risorse Composition correlate al documento."
* relatesTo.target[x] ^short = "Riferimento alla risorsa Composition correlata."
* relatesTo.target[x] only Reference  */

* section.title 1..
* section.title ^short = "Titolo della sezione."
* section.code 1..
* insert ReportTypeRule ( type )
* section.code ^short = "Codice della sezione."

* section[lab-no-subsections] ^short = "Variante 1: questa sezione presenta solo entry senza sottosezioni."
* section[lab-no-subsections].text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."

* section[lab-no-subsections].code from $sezione-referto-laboratorio (preferred)
* section[lab-no-subsections].entry only Reference (ObservationRefertoLabIt or ObservationGroupingRefertoLabIt or ObservationDocRefertoLabIt) // Aligned with the DR Reference (ObservationRefertoLabIt)

* section[lab-subsections].code from $sezione-referto-laboratorio (preferred)
* section[lab-subsections].section ^short = "Sottosezione strutturata della sezione principale."

* text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."

* section[lab-subsections].entry only Reference (ObservationRefertoLabIt or ObservationGroupingRefertoLabIt or ObservationDocRefertoLabIt) // Aligned with the DR Reference (ObservationRefertoLabIt)
* section[lab-subsections] ^short = "Variante 2: questa sezione presenta sottosezioni senza entry"

* section[annotations] ^short = "Commenti testuali"
* section[annotations] ^definition = """Rappresentazione testuale dei commenti che accompagnano il referto, come suggerimenti per la valutazione, note tecniche del laboratorio, ecc."""
* section[annotations].text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."






