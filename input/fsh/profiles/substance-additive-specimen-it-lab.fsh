Profile: SpecimenAdditiveSubstanceRefertoLabIt
Parent: $Substance-additive-specimen-it-lab // Substance
Id: substance-additive-specimen-it-lab
Title: "Substance (specimen additive) - Lab Report"
Description: "Descrizione dell'additivo usato sul campione tramite il profilo della risorsa Substance per il referto di laboratorio."
* insert SetFmmandStatusRule ( 1, trial-use)
* . ^short = "Substance Referto di Laboratorio"
* code ^short = "Sostanza additiva."
* code from additivo-campione-it (preferred)