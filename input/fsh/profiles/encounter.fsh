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
* basedOn only Reference(ServiceRequest-RL)
* participant MS
* participant.individual only Reference(PractitionerRole-RL or Practitioner-it-RL or RelatedPerson)
* participant.type MS
* participant.period MS
* period 1..1
* location MS
* location.location only Reference(Location-it-RL)