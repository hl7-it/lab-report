Alias: $cs-observation-code = http://hl7.org/fhir/observation-status
ValueSet:      ObservationStatusCodeLabReport
Id:	       valueset-status-obs-it
Title:	       "Observation status code"
Description:   "Valueset contenente i codici di di stato per la risorsa Observation Document - Lab Report."

* include codes from system $cs-observation-code 
* exclude $cs-observation-code#registered
* exclude $cs-observation-code#cancelled
* exclude $cs-observation-code#unknown
* exclude $cs-observation-code#entered-in-error
