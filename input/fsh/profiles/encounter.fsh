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

* subject 1..1
* subject only Reference(PatientRL) 
* status ^short = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +\r\r\n\nStato attuale dell'incontro."
* status from http://hl7.org/fhir/encounter-status (required)
* class ^short = "Classificazione dell'incontro con il paziente."
* class from http://terminology.hl7.org/CodeSystem/v3-ActCode (extensible)
* basedOn only Reference(ServiceRequestRL)
* basedOn ^short = "Reference alla ServiceRequest che ha avviato l'incontro."
* participant MS
* participant.individual only Reference(PractitionerRoleRL or Practitioner or RelatedPerson)
* period MS
* location.location only Reference(LocationRL)