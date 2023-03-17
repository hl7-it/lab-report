Profile: ServiceRequestRL
Parent: ServiceRequest
Id: ServiceRequest-RL
Title: "ServiceRequest - Referto di Laboratorio"
Description: "Descrive come rappresentare in FHIR la risorsa ServiceRequest che genera l'incontro del referto di laboratorio per il contesto Italiano."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-09T16:43:56.519+01:00"
* ^publisher = "HL7 Italy"
* ^copyright = "HL7 Italy"

* identifier 1..*
* priority MS
* subject only Reference(Patient-it-RL)