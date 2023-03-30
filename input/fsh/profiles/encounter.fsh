Profile: EncounterRL
Parent: Encounter
Id: Encounter-RL
Title: "Encounter - Referto di Laboratorio"
Description: "Descrizione della risorsa Encounter utile a descrivere nel referto di laboratorio  i dati dell'incontro."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-09T16:43:56.519+01:00"
* ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia"
* . ^short = "Encounter Referto di Laboratorio"

* subject 1..1
* subject only Reference(PatientRL) 
* status ^short = "Stato attuale dell'incontro."
* class ^short = "Classificazione dell'incontro con il paziente."
* basedOn only Reference(ServiceRequestRL)
* basedOn ^short = "Reference alla ServiceRequest che ha avviato l'incontro."
* participant MS
* participant.individual only Reference(PractitionerRoleRL or PractitionerRL or RelatedPerson)
* period MS
* location.location only Reference(LocationRL)