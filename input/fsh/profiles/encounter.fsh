Profile: EncounterRL
Parent: Encounter
Id: Encounter-RL
Title: "Encounter - Referto di Laboratorio"
Description: "Descrizione della risorsa Encounter utile a descrivere i dati dell'incontro."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-09T16:43:56.519+01:00"
* ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia"
* . ^short = "Encounter Referto di Laboratorio"


* subject 1..
* subject ^short = "Soggetto dell'incontro."
* subject.type 1..
* subject.identifier 1..
* subject.type = "Patient"
* subject.identifier ^short = "Identificativo univoco del soggetto."
* subject.reference 0..0

* status ^short = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +\r\r\n\n   Stato attuale dell'incontro."
* status from $encounter-status (required)
* class ^short = "Classificazione dell'incontro con il paziente."
* class from $encounter-class (extensible)
* basedOn only Reference(ServiceRequestRL)
* basedOn ^short = "Reference alla ServiceRequest che ha avviato l'incontro."
* participant ^short = "Partecipanti coinvolti durante l'incontro."
* participant obeys practitioner-relatedPerson-rule
* period ^short = "L'inizio e la fine dell'incontro."
* location ^short = "Dati relativi alle strutture in cui si svolge l'incontro."
* location obeys location-rule
* location.location ^short = "Struttura in cui si svolge l'incontro."

Invariant: practitioner-relatedPerson-rule
Description: "Practitioner-PractitionerRole-RelatedPerson gestione reference"
Severity: #error
Expression: "(individual.type='Practitioner' and individual.reference.exists().not()) or (individual.type.exists().not() and individual.reference.contains('PractitionerRole' or 'RelatedPerson'))"

Invariant: location-rule
Description: "Location gestione reference"
Severity: #error
Expression: "(location.type='Location'and location.identifier.exists() and location.reference.exists().not()) or (location.type.exists().not() and location.reference.contains('Location'))"
