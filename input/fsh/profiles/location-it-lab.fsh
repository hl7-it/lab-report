Profile: LocationRefertoLabIt
Parent: Location
Id: location-it-lab
Title: "Location - Lab Report"
Description: "Profilo della risorsa Location utile alla descrizione delle informazioni relative alle strutture fisiche."
* . ^short = "Location Referto di Laboratorio."

* insert SetFmmandStatusRule ( 1, trial-use)

* identifier 1..
* identifier ^short = "Identificativo della struttura (luogo)."
* name ^short = "Nome della struttura (luogo)."

* type ^short = "Tipo di struttura sulla base dei servizi offerti."
* type from $location-type (extensible)
* address ^short = "Indirizzo fisico della struttura (luogo)."
* managingOrganization ^short = "Organizzazione responsabile della gestione della struttura (provisioning e manutenzione)."
* managingOrganization only Reference(OrganizationRefertoLabIt)