Profile: SpecimenRefertoLabIt
Parent: Specimen
Id: specimen-it-lab
Title: "Specimen - Lab Report"
Description: "Descrive la risorsa Specimen per il campione nel dominio del Lab Report."
* ^status = #draft
* . ^short = "Campione Referto di Laboratorio"
* . ^definition = "Campione Referto di Laboratorio"
* type from tipo-campione-lab-it (preferred)
* type 1..1
* type ^short = "Tipo di campione."
* identifier ^short = "Identificativo esterno del campione (identificativo locale al LIS)"
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* collection.bodySite ^short = "Sito anatomico di prelievo del campione."
* processing.additive only Reference(specimen-additive-substance-it-lab)
* processing.additive ^short = "Additivo."
* container.type from campione-container-lab-it (preferred)
* container.type ^short = "Tipo di dispositivo utilizzato per il contenere il campione."

// * subject 1..
* subject ^short = "Soggetto da cui è stato prelevato il campione."
* subject only Reference(patient-it-lab)
