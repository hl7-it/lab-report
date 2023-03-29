Profile: OsservazioneRefertoLaboratorio
Parent: Observation
Id: Observation-referto-laboratorio
Title:    "Observation - Referto di Laboratorio"
Description: """Descrive come rappresentare in FHIR la risorsa Observation per le rilevazioni cliniche del referto di laboratorio per il contesto Italiano."""

* obeys ita-lab-1
* code from risultato-osservazione (preferred)
* code ^short = "Codice dell'osservazione."
* status = #final
* status ^short = "Stato dell'osservazione."
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "Codice che classifica il tipo di osservazione (laboratory)."
* category contains esame-laboratorio 1..1 MS
* category[esame-laboratorio] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* subject 1..1
* subject only Reference(Patient-it-RL)
* subject ^short = "Soggetto dell'osservazione."
* encounter 1..1
* encounter only Reference(Encounter-RL)
* encounter ^short = "Contesto in cui è stata prodotta l'osservazione."

* performer 1.. MS
* performer ^short = "Soggetto responsabile dell'osservazione."
* performer only Reference(Practitioner-it-RL or Patient-it-RL or PractitionerRole or Organization or RelatedPerson or CareTeam)
* value[x] MS
* value[x] ^short = "Risultato dell'osservaizone."
* valueQuantity only quantity-RL
* hasMember only Reference(OsservazioneRefertoLaboratorio)
* specimen ^short = "Reference al campione su cui si basa l'osservazione."
* specimen MS
* specimen only Reference(Campione)

Invariant: ita-lab-1
Description: "se  \"hasMember\" non è presente allora Observation deve avere un\" value\""
Severity: #error
Expression: "value.exists() or hasMember.exists()"