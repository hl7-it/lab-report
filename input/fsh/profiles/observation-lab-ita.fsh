Profile: OsservazioneRefertoLaboratorio
Parent: Observation
Id: Observation-referto-laboratorio
Title:    "Observation - Referto di Laboratorio"
Description: """Profilo che descrive come rappresentare in FHIR la risorsa Observation per le rilevazioni cliniche del referto di laboratorio per il contesto Italiano."""

* obeys ita-lab-1
* code from risultato-osservazione (preferred)
* status = #final
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "Codice che classifica il tipo di osservazione (laboratory)."
* category contains esame-laboratorio 1..1 MS
* category[esame-laboratorio] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* subject only Reference(Patient-it-RL)
* encounter only Reference(Encounter-RL)
* subject 1..1
* encounter 1..1

* performer 1.. MS
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