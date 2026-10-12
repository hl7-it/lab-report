Profile: QuantityLab
Parent: Quantity
Id: quantity-it-lab
Title: "Quantity - Lab Report"
Description: "Descrizione del valore ottenuto da una misurazione."

* insert SetFmmandStatusRule ( 1, trial-use)
* unit ^short = "Descrizione testuale dell'unità di misura."
* code 1..
* code from $ucum-valueset (required) 
* code ^short = "Descrizione codificata dell'unità di misura secondo UCUM."
* system = $ucum (exactly)
* value ^short = "Valore della misurazione."
* extension contains $iso21090-uncertainty named uncertainty 0..1
* extension contains $iso21090-uncertaintyType named uncertaintyType 0..1

