Profile: LocationRL
Parent: Location
Id: LocationRL
Title: "Location - Lab Report"
Description: "Profilo per Location utile alla descrizione delle informazioni relative alle strutture fisiche."
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-14T16:43:56.519+01:00"

* identifier 1..
* identifier ^short = "Identificativo della struttura (luogo)"
* name ^short = "Nome della struttura (luogo)"

* type ^short = "Tipo di struttura sulla base dei servizi offerti."
* type from $location-type (extensible)
* address ^short = "Indirizzo fisico della struttura (luogo)"
* managingOrganization ^short = "Organizzazione responsabile della gestione della struttura (provisioning e manutenzione)"
* managingOrganization only Reference(OrganizationRL)