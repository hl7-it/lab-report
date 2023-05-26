Profile:  OrganizationRefertoLabIt
Parent:   Organization
Id:       organization-it-lab
Title:    "Organization - Lab Report"
Description: "Descrizione della risorsa Organization nel dominio di Lab Report."
//-------------------------------------------------------------------------------------------
* identifier MS // SI	0..*	Identifier	Identifies this organization across multiple systems
* identifier ^short = "Identificativo dell'organizzazione."
* active ^short = "Indica se la risorsa è attiva."
* active	MS
* type ^short = "Tipo di organizzazione."
* type	MS
* type from http://terminology.hl7.it/ValueSet/tipoOrganizzazione (example) 
* name ^short = "Nome human-readable dell'organizzazione."
* name	MS