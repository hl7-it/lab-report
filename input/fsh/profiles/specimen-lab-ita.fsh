Profile: Campione
Parent: Specimen
Id: Campione
Title: "Specimen - Referto di Laboratorio"
Description: "Descrive come rappresentare in FHIR la risorsa Specimen utile a descrivere il campione nel referto di laboratorio."
* ^status = #draft
* ^publisher = "ita"
* ^copyright = "ita"
* . ^short = "Campione Referto di Laboratorio"
* . ^definition = "Campione Referto di Laboratorio"
* type from http://terminology.hl7.org/ValueSet/v3-EntityCode (preferred)
* type 1..1 MS
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* processing.additive only Reference(Substance)
* container.type from ContainerCampioneLaboratorio (preferred)
* subject 1..1
* subject only Reference(Patient-it-RL)
// ----------------------------------------
