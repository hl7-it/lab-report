Profile: SpecimenRefertoLabIt
Parent: $Specimen-eu-lab
Id: specimen-it-lab
Title: "Specimen - Lab Report"
Description: "Descrizione delle informazioni del campione tramite il profilo della risorsa Specimen per il referto di laboratorio."

* insert SetFmmandStatusRule ( 1, trial-use)
* . ^short = "Campione Referto di Laboratorio"
* . ^definition = "Campione Referto di Laboratorio"
* type from VsTipoCampione (preferred)
* type 1..1
* type ^short = "Tipo di campione."
* identifier ^short = "Identificativo esterno del campione (identificativo locale al LIS)"
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* collection.bodySite ^short = "Sito anatomico di prelievo del campione."
* processing.additive only Reference(SpecimenAdditiveSubstanceRefertoLabIt)
* processing.additive ^short = "Additivo."
* container.type from $campione-container-lab-it (preferred)
* container.type ^short = "Tipo di dispositivo utilizzato per il contenere il campione."


* subject ^short = "Soggetto da cui è stato prelevato il campione."
* subject only Reference(PatientRefertoLabIt)
