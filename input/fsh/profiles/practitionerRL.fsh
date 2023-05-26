Profile:  PractitionerRefertoLabIt
Parent:   Practitioner
Id:       practitioner-it-lab
Title:    "Practitioner - Lab Report"
Description: "Profilo del Practitioner nel nel dominio di Lab Report."
//-------------------------------------------------------------------------------------------
* identifier MS // add a slice for the fiscal code
* identifier ^short = "Identificativo dell'operatore sanitario" //
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier pattern"
* identifier contains codiceFiscale  0..1
* identifier[codiceFiscale] MS
* identifier[codiceFiscale] ^short = "Codice fiscale dell'operatore sanitario."
* identifier[codiceFiscale] ^patternIdentifier.system = "http://hl7.it/sid/codiceFiscale" // pattern
* name MS
* name ^short = "Nome dell'operatore sanitario: include le informazioni minime per descrivere un operatore sanitario"