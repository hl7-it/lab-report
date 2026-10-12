Profile: RangeLab
Parent: Range
Id: Range-it-lab
Title: "Range - Lab Report"
Description: "Descrizione del intervallo di misura con unità codificate in UCUM tramite il profilo del datatype Range includendo l'incertezza legata alla sua distribuzione di probabilità"
* ^purpose = "This profile of the Range data type imposes the usage of the UCUM as the code system for units and allows expressing uncertainty of measurement"
* . ^short = "A measured range using UCUM"
* . ^definition = "A measured range (or a range that can potentially be measured) and uncertainty of the measurement. This profile imposes that the code system for units be UCUM."
* extension contains $iso21090-uncertainty named uncertainty 0..1
* extension contains $iso21090-uncertaintyType named uncertaintyType 0..1
* low
  * system = "http://unitsofmeasure.org"
  * system 0..1
  * code 1..1
* high
  * system = "http://unitsofmeasure.org"
  * system 0..1
  * code 1..1