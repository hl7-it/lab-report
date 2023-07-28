Profile: EncounterRefertoLabIt
Parent: Encounter
Id: encounter-it-lab
Title: "Encounter - Lab Report"
Description: "Profilo della risorsa Encounter utile a descrivere i dati dell'incontro per la richiesta specifica nel dominio di Referto di Laboratorio."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-09T16:43:56.519+01:00"
* ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia"
* . ^short = "Encounter Referto di Laboratorio"


* subject 1..
* subject ^short = "Soggetto dell'incontro."
* subject only Reference(patient-it-lab)

* status ^short = "Descrizione attributo: Stato attuale dell'incontro. Possibili valori: planned | arrived | triaged | in-progress | onleave | finished | cancelled"
* status from $encounter-status (required)
* class ^short = "Classificazione dell'incontro con il paziente."
* class from $encounter-class (extensible)
* basedOn only Reference(servicerequest-it-lab)
* basedOn ^short = "Reference alla ServiceRequest che ha avviato l'incontro."
* participant ^short = "Partecipanti coinvolti durante l'incontro."

* participant.individual ^short = "Persone coinvolte nell'incontro oltre il paziente."
* participant.individual only Reference(practitioner-it-lab or practitionerrole-it-lab or RelatedPerson)

* period ^short = "L'inizio e la fine dell'incontro."
* location ^short = "Dati relativi alle strutture in cui si svolge l'incontro."
* location.location only Reference(location-it-lab)
* location.location ^short = "Struttura in cui si svolge l'incontro."
