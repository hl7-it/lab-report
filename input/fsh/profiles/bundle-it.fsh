Profile: BundleRL
Parent: Bundle
Id: BundleRL
Title:    "Bundle - Referto di Laboratorio"
Description: "Descrizione della risorsa Bundle per il contesto italiano del referto di laboratorio."
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

* entry[composition].resource only CompositionRL
* entry[patient].resource only PatientRL
* entry[practitioner].resource only Practitioner
* entry[organization].resource only Organization
* entry[practitionerRole].resource only PractitionerRoleRL
* entry[person].resource only Person
* entry[device].resource only Device
* entry[encounter].resource only EncounterRL
* entry[location].resource only LocationRL
* entry[serviceRequest].resource only ServiceRequestRL
* entry[diagnosticReport].resource only DiagnosticReportRL
* entry[observation].resource only ObservationRL
* entry[specimen].resource only SpecimenRL
* entry[procedure].resource only Procedure
* entry[media].resource only Media