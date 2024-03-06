Profile: ObservationGroupingRefertoLabIt
Parent: ObservationRefertoLabIt
Id: observation-grouping-it-lab
Title: "Observation battery - Lab Report"
Description: "Descrizione di un inseme di esami tramite il profilo della risorsa Observation per il referto di laboratorio."
* insert SetFmmandStatusRule ( 1, trial-use)
* . ^short = "Observation battery Referto di Laboratorio"
* valueQuantity 0..0
* valueCodeableConcept 0..0
* valueRatio 0..0
* valueRange 0..0
* valueString 0..0
* valueTime 0..0
* valueDateTime 0..0
* valuePeriod 0..0
* value[x] 0..0 // this rule generate a sushi warning 
* interpretation 0..0
* referenceRange 0..0
* component 0..0

/* * code.coding.code ^short = "Codice che identifica la tipologia dell'insieme di esami."
* code.coding.code from $sezione-referto-laboratorio (preferred) */

* code from $sezione-referto-laboratorio (preferred)
* code ^short = "Codice che identifica la tipologia dell'insieme di esami."

* hasMember ^short = "Osservazioni contenenti i risultati degli esami svolti."
* hasMember 1..
/* * hasMember only Reference(ObservationRefertoLabIt) */
/* * derivedFrom ^short = "Reference dell'osservazione da cui deriva questo valore di osservazione."
* derivedFrom only Reference(ObservationRefertoLabIt) */