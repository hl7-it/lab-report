Profile: ObservationGroupingRefertoLabIt
Parent: ObservationRefertoLabIt
Id: observation-grouping-it-lab
Title: "Observation battery - Lab Report"
Description: "Descrive come rappresentare un insieme di esami nel contesto del Referto di Laboratorio."
* . ^short = "Observation battery Referto di Laboratorio"
* value[x] 0..0
* interpretation 0..0
* referenceRange 0..0
* component 0..0

* code.coding.code ^short = "Codice che identifica la tipologia dell'insieme di esami."
* code.coding.code from $sezione-referto-laboratorio (preferred)
* hasMember ^short = "Osservazioni contenenti i risultati degli esami svolti."
* hasMember 1..
* hasMember only Reference(observation-it-lab)
* derivedFrom ^short = "Reference dell'osservazione da cui deriva questo valore di osservazione."
* derivedFrom only Reference(observation-it-lab)