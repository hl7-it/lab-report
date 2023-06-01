Profile:  OrganizationRefertoLabIt
Parent:   Organization
Id:       organization-it-lab
Title:    "Organization - Lab Report"
Description: "Profilo della risorsa Organization che per la descrizione delle informazioni nel dominio di Lab Report."
* . ^short = "Organization Referto di Laboratorio"
//-------------------------------------------------------------------------------------------
* identifier MS // SI	0..*	Identifier	Identifies this organization across multiple systems
* identifier ^short = "Identificativo dell'organizzazione."
* active ^short = "Indica se la risorsa è attiva."
* active	MS
* type ^short = "Tipo di organizzazione."
* type	MS
* type from $tipo-org (example) 
* name ^short = "Nome human-readable dell'organizzazione."
* name	MS