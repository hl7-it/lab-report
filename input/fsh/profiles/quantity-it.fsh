Profile: QuantityLab
Parent: $Quantity-eu-lab // Quantity
Id: quantity-it-lab
Title: "Quantity - Lab Report"
Description: "Descrizione del valore ottenuto da una misurazione."
// * unit 1..1 
* insert SetFmmandStatusRule ( 1, draft )
* unit ^short = "Descrizione testuale dell'unità di misura."
* code 1..
* code from $ucum-valueset (required) 
* code ^short = "Descrizione codificata dell'unità di misura secondo UCUM."
* system = "http://unitsofmeasure.org" (exactly)
* value ^short = "Valore della misurazione."
