Profile: SpecimenRL
Parent: Specimen
Id: SpecimenRL
Title: "Specimen - Referto di Laboratorio"
Description: "Descrive la risorsa Specimen per il campione nel referto di laboratorio."

* ^status = #draft
* . ^short = "Campione Referto di Laboratorio"
* . ^definition = "Campione Referto di Laboratorio"
* type from $entityCode (preferred)
* type 1..1 MS
* type ^short = "Tipo di campione."
* identifier ^short = "Identificativo esterno del campione (identificativo locale al LIS)"
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* collection.bodySite ^short = "Sito anatomico di prelievo del campione."
* processing.additive only Reference(Substance)
* processing.additive ^short = "Additivo."
* container.type from ContainerCampioneLaboratorio (preferred)
* container.type ^short = "Tipo di dispositivo utilizzato per il contenere il campione."
* subject 1..1
* subject only Reference(PatientRL)
* subject ^short = "Soggetto da cui è stato prelevato il campione."
