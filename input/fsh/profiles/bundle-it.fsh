Profile: BundleRL
Parent: Bundle
Id: BundleRL
Title:    "Bundle - Lab Report"
Description: "Descrizione della risorsa Bundle per il contesto italiano del Lab Report."
* . ^definition = "La creazione di un FHIR Document prevede la costruzione di una Bundle con le seguenti caratteristiche:\n - ′type′=document\n - identifier obbligatorio\n - prima risorsa referenziata ′Composition′ di cui ′identifier′ opzionale e ′date′ obbligatorio\n - ′timestamp′ obbligatorio\n"
* . ^short = "Bundle Referto di Laboratorio"
* type = #document 
* type ^short = "Indica cosa rappresenta e l'obiettivo del Bundle."
* identifier 1.. 
* identifier ^short = "Identificativo del FHIR Document."
* identifier.system 1..
* identifier.system ^short = "Valueset che contiene il codice identificativo."
* identifier.value 1..
* identifier.value ^short = "Valore univoco di identificazione della bundle all'interno del valueset."
* identifier ^definition = "L'identificativo è dipendente dalla versione della Bundle, e per soddisfare i requisiti di persistenza deve essere unico."
* timestamp 1..
* timestamp ^short = "Quando la Bundle è stata assemblata."
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
    encounter 1..* and
    location 0..* and
    serviceRequest 0..* and
    diagnosticReport 1..* and
    observation 0..* and
    specimen 0..* and
    media 0..* 

* entry[composition].resource only CompositionRL
* entry[practitionerRole].resource only PractitionerRoleRL
* entry[practitioner].resource only PractitionerRL
* entry[organization].resource only OrganizationRL
* entry[patient].resource only PatientRL
* entry[person].resource only Person
* entry[encounter].resource only EncounterRL
* entry[location].resource only LocationRL
* entry[serviceRequest].resource only ServiceRequestRL
* entry[diagnosticReport].resource only DiagnosticReportRL
* entry[observation].resource only ObservationRL
* entry[specimen].resource only SpecimenRL
* entry[media].resource only MediaRL

* signature ^short = "Firma digitale del documento."