Profile: EncounterRL
Parent: Encounter
Id: EncounterRL
Title: "Encounter - Lab Report"
Description: "Descrizione della risorsa Encounter utile a descrivere i dati dell'incontro nel dominio di Lab Report."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-09T16:43:56.519+01:00"
* ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia"
* . ^short = "Encounter Referto di Laboratorio"


* subject 1..
* subject ^short = "Soggetto dell'incontro."
* subject only Reference(PatientRL)

* status ^short = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +\r\r\n\n   Stato attuale dell'incontro."
* status from $encounter-status (required)
* class ^short = "Classificazione dell'incontro con il paziente."
* class from $encounter-class (extensible)
* basedOn only Reference(ServiceRequestRL)
* basedOn ^short = "Reference alla ServiceRequest che ha avviato l'incontro."
* participant ^short = "Partecipanti coinvolti durante l'incontro."

* participant.individual only Reference(PractitionerRL or PractitionerRoleRL or RelatedPerson)

* period ^short = "L'inizio e la fine dell'incontro."
* location ^short = "Dati relativi alle strutture in cui si svolge l'incontro."
* location.location only Reference(LocationRL)
* location.location ^short = "Struttura in cui si svolge l'incontro."
