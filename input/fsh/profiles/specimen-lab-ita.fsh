Profile: Campione
Parent: Specimen
Id: Campione
Title: "Specimen - Referto di Laboratorio"
Description: "Descrive come rappresentare in FHIR la risorsa Specimen utile a descrivere il campione nel referto di laboratorio."
* ^status = #draft
* . ^short = "Campione Referto di Laboratorio"
* . ^definition = "Campione Referto di Laboratorio"
* type from $entityCode (preferred)
* type 1..1 MS
* type ^short = "Tipo di campione."
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* processing.additive only Reference(Substance)
* processing.additive ^short = "Additivo."
* container.type from ContainerCampioneLaboratorio (preferred)
* container.type ^short = "Tipo di dispositivo utilizzato per il contenere il campione."
* subject 1..1
* subject only Reference(Patient-it-RL)
* subject ^short = "Soggetto da cui è stato prelevato il campione."
