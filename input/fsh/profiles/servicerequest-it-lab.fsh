Profile: ServiceRequestRefertoLabIt 
Parent: ServiceRequest 
Id: servicerequest-it-lab
Title: "ServiceRequest - Lab Report"
Description: "Descrizione delle informazioni della prescrizione tramite il profilo della risorsa ServiceRequest per il referto di laboratorio."
* . ^short = "ServiceRequest Referto di Laboratorio"

* insert SetFmmandStatusRule ( 1, trial-use)
* code 1..
* code from LabOrderCodes (preferred)
* extension contains $laboratory-accredited named accreditedLab 0..1
* extension[accreditedLab] ^short = "Indica se il laboratorio è accreditato o meno."

* identifier ^short = "Identificativo assegnato all'ordine."
* identifier 1..*  
* basedOn only Reference(CarePlan or ServiceRequestRefertoLabIt or MedicationRequest)
* replaces only Reference(ServiceRequestRefertoLabIt)

* priority ^short = "Descrizione attributo: Priorità della richiesta. Possibili valori: routine | urgent | asap | stat"
* priority from http://hl7.org/fhir/ValueSet/request-priority (required) //mettere il nostro DEMA

* subject 1..
* subject ^short = "Soggetto di riferimento della richiesta."
* subject only Reference(PatientItcore or Group or DeviceRefertoLabIt or Location)
* requester only Reference(PractitionerItcore or PractitionerRoleItcore or DeviceRefertoLabIt ) 
* performer only Reference(PractitionerItcore or PractitionerRoleItcore or OrganizationItCore or CareTeam or HealthcareService or PatientItcore or DeviceRefertoLabIt or RelatedPerson)

* requisition ^short = "Identificativo comune a più ServiceRequest autorizzate simultaneamente. Rappresenta l'identificativo univoco della richiesta."
* quantity[x] ^short = "Molteplicità della prestazione."
* encounter only Reference(EncounterRefertoLabIt)
* authoredOn ^short = "Data di invio della richiesta."
* reasonCode ^short = "Quesito diagnostico associato alla richiesta."
* reasonReference ^short = "Riferimento a risorse che rappresentano il quesito diagnostico associato alla richiesta."
* reasonReference only Reference(Condition or ObservationRefertoLabIt or DiagnosticReportRefertoLabIt or DocumentReference)
* specimen ^short = "Reference usata solo se il campione cui punta la richiesta è già stato prelevato ed esiste."
* specimen only Reference(SpecimenRefertoLabIt)

* intent ^short = "Descrizione attributo: Indica lo scopo associato ad una richiesta. Possibili valori: proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option"
* intent from  $intent-code