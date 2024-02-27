Profile: BundleRefertoLabIt
Parent: $Bundle-eu-lab //   Bundle 
Id: bundle-it-lab
Title:    "Bundle - Lab Report"
Description: "Descrizione della risorsa Bundle per il contesto italiano del Lab Report."
* . ^definition = "La creazione di un FHIR Document prevede la costruzione di una Bundle con le seguenti caratteristiche:\n - ′type′=document\n - identifier obbligatorio\n - prima risorsa referenziata ′Composition′ di cui ′identifier′ opzionale e ′date′ obbligatorio\n - ′timestamp′ obbligatorio\n"
* . ^short = "Bundle Referto di Laboratorio"
* insert SetFmmandStatusRule ( 1, trial-use)
//* type = #document 
* type ^short = "Indica cosa rappresenta e l'obiettivo del Bundle."
* identifier 1.. 
* identifier ^short = "Identificativo del FHIR Document."
* identifier.system 1..
* identifier.system ^short = "Valueset che contiene il codice identificativo."
* identifier.value 1..
* identifier.value ^short = "Valore univoco di identificazione della bundle all'interno del valueset."
* identifier ^definition = "L'identificativo è dipendente dalla versione della Bundle, e per soddisfare i requisiti di persistenza deve essere unico."
* timestamp 1..
* total 0..0
* link 0..0
* timestamp ^short = "Quando la Bundle è stata assemblata."
/* * entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry.link 0..0
* entry.fullUrl 1..1
* entry.resource 1..1
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0 */
* entry ^short = "Risorse contenute nel documento FHIR."

* entry contains
   media 0..* and
   substance 0.. 
   // device 0..


* entry[composition].resource only CompositionRefertoLabIt
* entry[practitionerRole].resource only PractitionerRoleRefertoLabIt
* entry[practitioner].resource only PractitionerRefertoLabIt
* entry[organization].resource only OrganizationRefertoLabIt
* entry[patient].resource only PatientRefertoLabIt
* entry[patient] 1..1
* entry[encounter].resource only EncounterRefertoLabIt
* entry[location].resource only location-it-lab
* entry[serviceRequest].resource only ServiceRequestRefertoLabIt
* entry[diagnosticReport].resource only DiagnosticReportRefertoLabIt
* entry[observation].resource only ObservationDocRefertoLabIt  
* entry[specimen].resource only SpecimenRefertoLabIt
* entry[media].resource only media-it-lab
* entry[substance].resource only substance-additive-specimen-it-lab
* entry[location].resource only location-it-lab
// * entry[device].resource only device-it-lab

* signature ^short = "Firma digitale del documento."
