Profile: CompositionRL
Parent: Composition
Id: Composition-RL
Title: "Composition - Referto di Laboratorio"
Description: "Descrizione in FHIR di header e body nel contesto italiano del referto di laboratorio."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia"
* . ^short = "Composition Referto di Laboratorio"

* language from $common-language
* language 1..1  
* language ^short = "Metadato che indica la lingua utilizzata per descrivere la risorsa."
* extension contains
    composition-dataenterer-it named dataEnterer 0..*

* identifier 1..1
* type = $LOINC#11502-2 "Referto di laboratorio"
* status ^short = "Stato di completezza della risorsa Composition. Lo stato della risorsa rappresenta anche lo stato del documento."
* status = #final
* subject 1..1
* subject only Reference(Patient-it-RL)
* subject ^short = "Soggetto del documento."
* encounter 1..1
* encounter ^short = "Contesto in cui è stato generato il documento."
* encounter only Reference(Encounter-RL)
* date ^short = "Data di modifica della risorsa da parte del firmatario."
* confidentiality from $conf
* author ^short = "Autore del documento."
* author ^definition = "Chi o cosa ha contribuito alla definizione del contenuto del documento e ne è responsabile."
* title ^short = "Titolo o nome human-readable della Composition."
* title = "Referto di Laboratorio" 
* attester 1..*
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "$this"
* attester ^slicing.rules = #open
* attester ^slicing.description = "Professionisti che attestano la validità del documento"
* attester ^slicing.ordered = false
* attester contains
    legalAuthenticator 1..1 MS and
    authenticator 0..1 and
    informationRecipient 0..*
* attester[legalAuthenticator] ^short = "Firmatario del documento FHIR."
* attester[legalAuthenticator].mode 1..1
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].party only Reference(PractitionerRole-RL or Practitioner) 
* attester[legalAuthenticator].time 1..1
* attester[authenticator] ^short = "Validatore del documento FHIR."
* attester[authenticator].mode 1..1
* attester[authenticator].mode = #professional
* attester[authenticator].party only Reference(PractitionerRole-RL or Practitioner) 
* attester[informationRecipient].mode = #personal
* attester[informationRecipient].party only Reference(PractitionerRole-RL or Practitioner or Organization) 
* attester[informationRecipient] ^short = "Professionisti sanitari che ricevono una copia del documento (es. MMG/PLS)"

* custodian 1..1
* custodian ^short = "Organizzazione che si occupa della conservazione del documento FHIR."

* relatesTo ^short = "Ulteriori risorse Composition correlate al documento."
* relatesTo MS
* relatesTo.target[x] only Reference 
* relatesTo obeys it-composition-1

* section ^slicing.discriminator[0].type = #exists
* section ^slicing.discriminator[0].path = "$this.section"
* section ^slicing.discriminator[+].type = #type
* section ^slicing.discriminator[=].path = "$this.entry.resolve()"
* section ^slicing.discriminator[+].type = #pattern
* section ^slicing.discriminator[=].path = "$this.code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section.title 1..
* section.title ^short = "Titolo della sezione."
* section.code 1..
* section.code ^short = "Codice della sezione (es. LOINC)."

* section contains senza-sottosezione ..* 
* section[senza-sottosezione] ^short = "Variante 1: questa sezione presenta la entry è il text obbligatori"
* section[senza-sottosezione].text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."
* section[senza-sottosezione].text 1..1
* section[senza-sottosezione].section ..0
* section[senza-sottosezione].code 1..
* section[senza-sottosezione].code from sezione-referto-laboratorio (preferred)
* section[senza-sottosezione].entry only Reference (Observation-referto-laboratorio)


* section contains con-sottosezione ..* 
* section[con-sottosezione] ^short = "Variant 2: questa sezione presenta una sottosezione e non prevede gli attributi entry e text"
* section[con-sottosezione].code only CodeableConcept
* section[con-sottosezione].text 0..0
* section[con-sottosezione].entry 0..0
* section[con-sottosezione].code 1..
* section[con-sottosezione].code from sezione-referto-laboratorio (preferred)
* section[con-sottosezione].section ^short = "Sottosezione strutturata della sezione principale."
* section[con-sottosezione].section 1..
  * code 1..
  * code only CodeableConcept
  * code from sezione-referto-laboratorio (preferred)
  * text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."
  * entry 1..
  * entry only Reference (Observation-referto-laboratorio)
* section contains annotazioni ..*
* section[annotazioni]
  * ^short = "Commenti testuali"
  * ^definition = """Rappresentazione testuale dei commenti che accompagnano il referto, come suggerimenti per la valutazione, note tecniche del laboratorio, ecc."""
  * code = $LOINC#48767-8 (exactly) 
  * text 1.. 
  * text ^short = "Sintesi testuale della sezione, per l'interpretazione dell'utente."
  * section ..0 

Invariant: it-composition-1
Description: "relatesTo diventa obbligatorio per versioni della risorsa maggiori di 1"
Severity: #error
Expression: "version > 1"
