Profile: CompositionRefertoLabIt
Parent: $Composition-eu-lab // $clinical-document
Id: composition-it-lab
Title: "Composition - Lab Report"
Description: "Descrizione in tramite la risorsa Composition di header e body del Lab Report."
/* * ^version = "0.0.1" */
/* * ^status = #draft
* ^experimental = true */
/* * ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia" */
* insert SetFmmandStatusRule ( 1, draft )
* . ^short = "Composition Referto di Laboratorio"


* language = #IT-it
* language 1..1  
* language ^short = "Metadato che indica la lingua utilizzata per descrivere la risorsa."
* extension contains
    composition-dataenterer-it named dataEnterer 0..*

* extension[dataEnterer] ^short = "Persona o dispositivo che trasforma un testo dettato nel documento FHIR."

/* * extension contains InformationRecipient named information-recipient 0..* */
* extension[information-recipient] ^short = "Professionisti sanitari che ricevono una copia del documento (es. MMG/PLS)."
* category ^constraint.source = Canonical(CompositionRefertoLabIt)
* insert ReportIdentifierRule
/* * identifier 1..1
* identifier ^short = "Identificatore indipendente dalla versione." */
/* * identifier ^constraint.source = Canonical(CompositionRefertoLabIt) */
/* * type.coding.system = $loinc
* type.coding.code = #11502-2 
* type.coding.display = "Laboratory report" */
* insert ReportTypeRule ( type )
* type ^short = "Tipo di Composition."
* status ^short = "Stato di completezza della risorsa Composition. Lo stato della risorsa rappresenta anche lo stato del documento."
* status ^constraint.source = Canonical(CompositionRefertoLabIt)
* status ^definition = "Lo stato della Composition si sviluppa generalmente solo attraverso questo elenco: passa da preliminary a final e poi può passare a amended (ovvero modificato). "
* subject 1..1
* subject only Reference(patient-it-lab)
* subject ^constraint.source = Canonical(CompositionRefertoLabIt)

* subject ^short = "Soggetto del documento."
* encounter ^short = "Evento sanitario a cui si riferisce il Referto di Laboratorio (es. al momento della prescrizione)."
* encounter ^constraint.source = Canonical(CompositionRefertoLabIt)
* encounter only Reference(encounter-it-lab)
* date ^short = "Data di modifica della risorsa Composition."
* confidentiality from $conf
* confidentiality ^short = "Codice di confidenzialità della Composition."

* author only Reference(practitioner-it-lab or practitionerrole-it-lab or patient-it-lab or organization-it-lab)
* author ^short = "Autore della Composition."
* author ^constraint.source = Canonical(CompositionRefertoLabIt)
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
* attester[legalAuthenticator].party only Reference(practitioner-it-lab or practitionerrole-it-lab)
* attester[legalAuthenticator].time 1..1
* attester[legalAuthenticator].time ^short = "Riferimento temporale della firma."
* attester[legalAuthenticator].party ^short = "Riferimento al firmatario."

* attester[authenticator] ^short = "Validatore del documento FHIR."
* attester[authenticator].mode 1..1
* attester[authenticator].mode = #professional
* attester[authenticator].party only Reference(practitioner-it-lab or practitionerrole-it-lab)
* attester[authenticator].party ^short = "Riferimento al validatore."

* custodian 1..1
* custodian only Reference(organization-it-lab)
* custodian ^short = "Organizzazione che si occupa della conservazione del documento FHIR."

* relatesTo ^short = "Ulteriori risorse Composition correlate al documento."
* relatesTo.target[x] ^short = "Riferimento alla risorsa Composition correlata."
* relatesTo.target[x] only Reference 
//* relatesTo obeys it-composition-1

/* * section ^slicing.discriminator[0].type = #exists
* section ^slicing.discriminator[0].path = "$this.section"
* section ^slicing.discriminator[+].type = #type
* section ^slicing.discriminator[=].path = "$this.entry.resolve()"
* section ^slicing.discriminator[+].type = #pattern
* section ^slicing.discriminator[=].path = "$this.code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open */

* section.title 1..
* section.title ^short = "Titolo della sezione."
* section.code 1..

/* * type ^constraint.source = Canonical(CompositionRefertoLabIt) */
* section.code ^short = "Codice della sezione."

* section contains senza-sottosezione ..* 
* section[senza-sottosezione] ^short = "Variante 1: questa sezione presenta la entry e il text obbligatori."
* section[senza-sottosezione].text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."
* section[senza-sottosezione].text 1..1
* section[senza-sottosezione].section ..0
* section[senza-sottosezione].code 1..
* section[senza-sottosezione].code from $sezione-referto-laboratorio (preferred)
* section[senza-sottosezione].entry only Reference (observation-it-lab or observation-grouping-it-lab) // Aligned with the DR Reference (observation-it-lab)
* section[senza-sottosezione].entry 1..*


* section contains con-sottosezione ..* 
* section[con-sottosezione] ^short = "Variante 2: questa sezione presenta una sottosezione e non prevede gli attributi entry e text."
* section[con-sottosezione].code only $CodeableConcept-uv-ips // CodeableConcept
* section[con-sottosezione].text 0..0
* section[con-sottosezione].entry 0..0
* section[con-sottosezione].code 1..
* section[con-sottosezione].code from $sezione-referto-laboratorio (preferred)
* section[con-sottosezione].section ^short = "Sottosezione strutturata della sezione principale."
* section[con-sottosezione].section 1..
  * code 1..  
  * code only CodeableConcept
  * code from $sezione-referto-laboratorio (preferred)
  * text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."
  * entry 1..
  * entry only Reference (observation-it-lab or observation-grouping-it-lab) // Aligned with the DR Reference (observation-it-lab)
* section contains annotazioni ..*
* section[annotazioni]
  * ^short = "Commenti testuali"
  * ^definition = """Rappresentazione testuale dei commenti che accompagnano il referto, come suggerimenti per la valutazione, note tecniche del laboratorio, ecc."""
  * code = $loinc#48767-8 // (exactly) 
  * text 1.. 
  * text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."
  * section ..0 



* insert ReportStatusRule
// * category 1.. // add VS binding
* insert ReportCategoryRule 
// * type = $loinc#11502-2 // change to a VS binding

// * insert ReportTypeRule ( type )

  // slice the subject tp cover the three cases of human ; non-human and mixed
* insert ReportSubjectRule
* insert ReportEncounterRule
* author 1..
  * ^short = "Who and/or what authored the Laboratory Report"
  * ^definition = "Identifies who is responsible for the information in the Laboratory Report, not necessarily who typed it in."
  * insert ReportAuthorRule

// Invariant: it-composition-1
// Description: "relatesTo diventa obbligatorio per versioni della risorsa maggiori di 1"
// Severity: #error
// Expression: "version > 1"
