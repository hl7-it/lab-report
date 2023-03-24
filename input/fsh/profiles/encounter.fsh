Profile: EncounterRL
Parent: Encounter
Id: Encounter-RL
Title: "Encounter - Referto di Laboratorio"
Description: "Descrizione della risorsa Encounter utile a descrivere nel referto di laboratorio  i dati dell'incontro."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-09T16:43:56.519+01:00"
* ^publisher = "HL7 Italy"
* ^copyright = "HL7 Italy"

* subject 1..1
* subject only Reference(Patient-it-RL) 
* status ^short = "Stato attuale dell'incontro."
* class ^short = "Classificazione dell'incontro con il paziente."
* basedOn only Reference(ServiceRequest-RL)
* basedOn ^short = "Reference alla ServiceRequest che ha avviato l'incontro."
* participant MS
* participant.individual only Reference(PractitionerRole-RL or Practitioner-it-RL or RelatedPerson)
* period MS
* location.location only Reference(Location-it-RL)