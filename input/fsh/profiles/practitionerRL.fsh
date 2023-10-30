Profile:  PractitionerRefertoLabIt
Parent:   Practitioner
Id:       practitioner-it-lab
Title:    "Practitioner - Lab Report"
Description: "Descrive la risorsa Practitioner per il dominio di Lab Report."
* . ^short = "Practitioner Referto di Laboratorio"
* insert SetFmmandStatusRule ( 1, draft )
* insert ImposeProfile($Practitioner-eu-lab)
//-------------------------------------------------------------------------------------------
* identifier 
* identifier ^short = "Identificativo dell'operatore sanitario" 
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier pattern"
* identifier contains codiceFiscale  0..1
* identifier[codiceFiscale]
* identifier[codiceFiscale] ^short = "Codice fiscale dell'operatore sanitario."
* identifier[codiceFiscale] ^patternIdentifier.system = "http://hl7.it/sid/codiceFiscale" 
* name 1..*
* name ^short = "Nome dell'operatore sanitario: include le informazioni minime per descrivere un operatore sanitario"