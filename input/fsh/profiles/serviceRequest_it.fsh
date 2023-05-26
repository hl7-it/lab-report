Profile: ServiceRequestRefertoLabIt 
Parent: ServiceRequest
Id: servicerequest-it-lab
Title: "ServiceRequest - Lab Report"
Description: "Descrive la risorsa ServiceRequest che genera l'incontro del Lab Report."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-09T16:43:56.519+01:00"
* ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia"

* identifier 1..* 
* priority MS 
* priority ^short = "Descrizione attributo: Priorità della richiesta. Possibili valori: routine | urgent | asap | stat"
* priority from http://hl7.org/fhir/ValueSet/request-priority (required) //mettere il nostro DEMA

* subject 1..
* subject ^short = "Soggetto cui si riferisce la richiesta."
* subject only Reference(patient-it-lab)


* requisition ^short = "Idenificativo comune a più ServiceRequest autorizzate simultaneamente. Rappresenta l'identificativo univoco della richiesta."
* quantity[x] ^short = "Molteplicità della prestazione."
* authoredOn ^short = "Data di invio della richiesta."
* reasonCode ^short = "Quesito diagnostico associato alla richiesta."
* specimen ^short = "Reference usata solo se il campione cui punta la richiesta è già stato prelevato ed esiste."
* specimen only Reference(specimen-it-lab)
* intent ^short = "Descrizione attributo: Indica lo scopo associato ad una richiesta. Possibili valori: proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option "
* intent from  $intent-code