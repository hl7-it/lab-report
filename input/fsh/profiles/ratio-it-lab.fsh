Profile: RatioLab
Parent: Ratio
Id: Ratio-it-lab
Title: "Ratio - Lab Report"
Description: "Descrizione del rapporto di misura con unità codificate in UCUM tramite il profilo del datatype Ratio includendo l'incertezza legata alla sua distribuzione di probabilità"
* ^purpose = "This profile of the Ratio data type imposes the usage of the UCUM as the code system for units and allows expressing uncertainty of measurement"
* . ^short = "A measured ratio using UCUM"
* . ^definition = "A measured ratio (or a ratio that can potentially be measured) and uncertainty of the measurement. This profile imposes that the code system for units be UCUM."
* extension contains $iso21090-uncertainty named uncertainty 0..1
* extension contains $iso21090-uncertaintyType named uncertaintyType 0..1
* numerator
  * system = "http://unitsofmeasure.org"
  * system 0..1
  * code 1..1
* denominator
  * system = "http://unitsofmeasure.org"
  * system 0..1
  * code 1..1