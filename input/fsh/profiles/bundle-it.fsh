Profile: BundleRL
Parent: Bundle
Id: BundleRL
Title:    "Bundle - Referto di Laboratorio"
Description: "Descrizione della risorsa Bundle per il contesto italiano del referto di laboratorio."
* . ^definition = "La creazione di un FHIR Document prevede la costruzione di una Bundle con le seguenti caratteristiche:\n - ′type′=document\n - identifier obbligatorio\n - prima risorsa referenziata ′Composition′ di cui ′identifier′ opzionale e ′date′ obbligatorio\n - ′timestamp′ obbligatorio\n"
* . ^short = "Bundle Referto di Laboratorio"
* type = #document 
* type ^short = "Indica cosa rappresenta e l'obiettivo del Bundle."
* identifier 1.. 
* identifier ^short = "Identificativo del FHIR Document."
* identifier ^definition = "L'identificativo è dipendente dalla versione della Bundle, e per soddisfare i requisiti di persistenza deve essere unico."

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Risorse contenute nel documento FHIR."

* entry 1..
* entry contains
    composition 1..* and
    practitionerRole 0..* and
    practitioner 0..* and
    organization 0..* and
    patient 1..1 and
    person 0..* and
    device 0..* and
    encounter 1..* and
    location 0..* and
    serviceRequest 0..* and
    diagnosticReport 1..* and
    observation 0..* and
    specimen 0..* and
    procedure 0..* and
    media 0..* 

* entry[composition].resource only CompositionRL
* entry[practitionerRole].resource only PractitionerRoleRL
* entry[practitioner].resource only Practitioner
* entry[organization].resource only Organization
* entry[patient].resource only PatientRL
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

* signature ^short = "Firma digitale del documento."