Profile: ServiceRequestRefertoLabIt 
Parent: $ServiceRequest-eu-lab  
Id: servicerequest-it-lab
Title: "ServiceRequest - Lab Report"
Description: "Descrive la risorsa ServiceRequest che genera l'incontro del Lab Report."
* . ^short = "ServiceRequest Referto di Laboratorio"

* insert SetFmmandStatusRule ( 1, trial-use)
* code 1..
* code from LabOrderCodes (preferred)

* identifier ^short = "Identificativo assegnato all'ordine."
* identifier 1..*  
* priority ^short = "Descrizione attributo: Priorità della richiesta. Possibili valori: routine | urgent | asap | stat"
* priority from http://hl7.org/fhir/ValueSet/request-priority (required) //mettere il nostro DEMA

* subject 1..
* subject ^short = "Soggetto cui si riferisce la richiesta."
* subject only Reference(PatientRefertoLabIt)


* requisition ^short = "Idenificativo comune a più ServiceRequest autorizzate simultaneamente. Rappresenta l'identificativo univoco della richiesta."
* quantity[x] ^short = "Molteplicità della prestazione."
* authoredOn ^short = "Data di invio della richiesta."
* reasonCode ^short = "Quesito diagnostico associato alla richiesta."
* specimen ^short = "Reference usata solo se il campione cui punta la richiesta è già stato prelevato ed esiste."
* specimen only Reference(specimen-it-lab)
* intent ^short = "Descrizione attributo: Indica lo scopo associato ad una richiesta. Possibili valori: proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option"
* intent from  $intent-code