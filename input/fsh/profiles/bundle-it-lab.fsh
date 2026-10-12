Profile: BundleRefertoLabIt
Parent: Bundle //   Bundle 
Id: bundle-it-lab
Title:    "Bundle - Lab Report"
Description: "Descrizione del contenuto informativo del report tramite il profilo della risorsa Bundle per il referto di laboratorio."
* . ^definition = "La creazione di un FHIR Document prevede la costruzione di una Bundle con le seguenti caratteristiche:\n - ′type′=document\n - identifier obbligatorio\n - prima risorsa referenziata ′Composition′ di cui ′identifier′ opzionale e ′date′ obbligatorio\n - ′timestamp′ obbligatorio\n"
* . ^short = "Bundle Referto di Laboratorio"
* insert SetFmmandStatusRule ( 1, trial-use)
//* type = #document 
* type ^short = "Tipologia di Bundle."
* identifier 1.. 
* identifier ^short = "Identificativo del FHIR Document."
* identifier.system 1..
* identifier.system ^short = "Sistema di codifica che contiene il codice identificativo."
* identifier.value 1..
* identifier.value ^short = "Valore univoco di identificazione della bundle."
* identifier ^definition = "L'identificativo è dipendente dalla versione della Bundle, e per soddisfare i requisiti di persistenza deve essere unico."
* timestamp 1..
* total 0..0
* link 0..0
* timestamp ^short = "Quando la Bundle è stata creata."

* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0

* entry ^short = "Risorse contenute nel documento FHIR."
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains
   composition 1..1 and
   diagnosticReport 1..1 and
   patient 1..1 and
   observation 0..* and
   specimen 0..* and
   serviceRequest 0..* and
   organization 0..* and
   practitioner 0..* and
   practitionerRole 0..* and
   bodyStructure 0..* and
   encounter 0..* and
   location 0..* and
   media 0..* and
   substance 0..* and
   provenance 0..* and
   coverage 0..* and
   device 0..* and
   condition 0..* and
   procedure 0..* and
   medication 0..* and
   medicationStatement 0..* and
   medicationAdministration 0..*

* entry[composition].resource only composition-it-lab 
* entry[practitionerRole].resource only PractitionerRoleItcore
* entry[practitioner].resource only PractitionerItcore
* entry[organization].resource only OrganizationItCore
* entry[patient].resource only PatientItcore
* entry[patient] 1..1
* entry[bodyStructure].resource only BodyStructure
* entry[encounter].resource only EncounterRefertoLabIt
* entry[location].resource only location-it-lab
* entry[serviceRequest].resource only ServiceRequestRefertoLabIt
* entry[diagnosticReport].resource only DiagnosticReportRefertoLabIt
* entry[observation].resource only ObservationDocRefertoLabIt  
* entry[specimen].resource only SpecimenRefertoLabIt
* entry[media].resource only media-it-lab
* entry[substance].resource only substance-additive-specimen-it-lab
* entry[location].resource only location-it-lab
* entry[device].resource only device-it-lab
// Allineamento EU
* entry[coverage].resource only Coverage
* entry[provenance].resource only Provenance
* entry[condition].resource only Condition
* entry[procedure].resource only ProcedureItCore
* entry[medication].resource only MedicationItCore
* entry[medicationStatement].resource only MedicationStatement
* entry[medicationAdministration].resource only MedicationAdministration

* signature ^short = "Firma digitale del documento."

//----short delle entry----------------------------
* entry[composition] ^short = "Entry del Bundle che contiene la Composition del referto di laboratorio."
* entry[diagnosticReport] ^short = "Entry del Bundle che contiene il DiagnosticReport del referto di laboratorio."
* entry[patient] ^short = "Entry del Bundle che contiene il soggetto del referto."
* entry[observation] ^short = "Entry del Bundle che contiene le Observation correlate al referto di laboratorio."
* entry[specimen] ^short = "Entry del Bundle che contiene i campioni biologici correlati al referto di laboratorio."
* entry[serviceRequest] ^short = "Entry del Bundle che contiene le richieste di prestazioni correlate al referto di laboratorio."
* entry[organization] ^short = "Entry del Bundle che contiene le organizzazioni coinvolte nel contesto del referto di laboratorio."
* entry[practitioner] ^short = "Entry del Bundle che contiene i professionisti sanitari coinvolti nel contesto del referto di laboratorio."
* entry[practitionerRole] ^short = "Entry del Bundle che contiene i ruoli dei professionisti sanitari coinvolti nel contesto del referto di laboratorio."
* entry[bodyStructure] ^short = "Entry del Bundle che contiene le strutture anatomiche correlate al referto di laboratorio."
* entry[encounter] ^short = "Entry del Bundle che contiene gli eventi assistenziali correlati al referto di laboratorio."
* entry[location] ^short = "Entry del Bundle che contiene le sedi correlate al referto di laboratorio."
* entry[media] ^short = "Entry del Bundle che contiene contenuti multimediali correlati al referto di laboratorio."
* entry[substance] ^short = "Entry del Bundle che contiene le sostanze correlate al referto di laboratorio."
* entry[provenance] ^short = "Entry del Bundle che contiene le informazioni di provenienza e tracciabilità delle risorse del Bundle."
* entry[coverage] ^short = "Entry del Bundle che contiene le informazioni di copertura assistenziale del soggetto del referto."
* entry[device] ^short = "Entry del Bundle che contiene i dispositivi correlati al referto di laboratorio."
* entry[condition] ^short = "Entry del Bundle che contiene le condizioni cliniche correlate al referto di laboratorio."
* entry[procedure] ^short = "Entry del Bundle che contiene le procedure correlate al referto di laboratorio."
* entry[medication] ^short = "Entry del Bundle che contiene i medicinali correlati al contesto clinico del referto."
* entry[medicationStatement] ^short = "Entry del Bundle che contiene le informazioni sull'utilizzo dei farmaci correlate al contesto clinico del referto."
* entry[medicationAdministration] ^short = "Entry del Bundle che contiene le somministrazioni di farmaci correlate al contesto clinico del referto."