Profile: BundleRefertoLaboratorio
Parent: Bundle
Id: bundle-referto-laboratorio
Title:    "Bundle - Referto di Laboratorio"
Description: "Descrizione della risorsa Bundle per il contesto italiano del refero di laboratorio."
* . ^short = "Bundle Referto di Laboratorio"
* type = #document 
* type ^short = "Indica cosa rappresenta e l'obiettivo del Bundle."
* identifier MS
* identifier 1.. 

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Risorse contenute nel documento FHIR"

* entry 1..
* entry contains
    composition 1..* MS and
    patient 1..1 MS and
    practitioner 1..* MS and
    organization 1..* MS and
    practitionerRole 0..* MS and
    person 0..* MS and
    device 0..* MS and
    encounter 1..* MS and
    location 0..* MS and
    serviceRequest 0..* MS and
    diagnosticReport 1..* MS and
    observation 0..* MS and
    specimen 0..* MS and
    procedure 0..* MS and
    media 0..* MS

* entry[composition].resource only Composition-RL
* entry[patient].resource only Patient-it-RL
* entry[practitioner].resource only Practitioner-it-RL
* entry[organization].resource only Organization
* entry[practitionerRole].resource only PractitionerRole-RL
* entry[person].resource only Person
* entry[device].resource only Device
* entry[encounter].resource only Encounter-RL
* entry[location].resource only Location-it-RL
* entry[serviceRequest].resource only ServiceRequest-RL
* entry[diagnosticReport].resource only DiagnosticReportLIta
* entry[observation].resource only Observation-referto-laboratorio
* entry[specimen].resource only Campione
* entry[procedure].resource only Procedure
* entry[media].resource only Media