Profile: PractitionerRoleRefertoLabIt
Parent: PractitionerRole
Id: practitionerrole-it-lab

Title: "PractitionerRole - Lab Report"

Description: "Profilo della risorsa PractitionerRole per la descrizione delle informazioni del dominio di Lab Report."

* . ^short = "PractitionerRole Referto di Laboratorio"

* insert SetFmmandStatusRule ( 1, trial-use)
* insert ImposeProfile($PractitionerRole-eu-lab)

* identifier ^short = "Identificativo dell'operatore (e.g. Codice Fiscale, ID Regionale)"
* period ^short = "Il periodo durante il quale il professionista è autorizzato a svolgere questi ruolo/i."


* practitioner ^short = "Professionista coinvolto nel processo di cura."
* practitioner only Reference(PractitionerRefertoLabIt)

* organization ^short = "Organizzazione cui il professionista fa parte."
* organization only Reference(OrganizationRefertoLabIt)
* code from $practitionerrole-code-lab-it (example)
* code ^short = "Ruolo/i del professionista."

Profile: PractitionerRoleMMGPLSRefertoLabIt
Parent: PractitionerRoleRefertoLabIt
Id: practitionerrole-MMGPLS-it-lab
Title: "PractitionerRole MMG/PLS - Lab Report"
Description: "Profilo della risorsa PractitionerRole per la descrizione delle informazioni del MMG/PLS."
* . ^short = "PractitionerRole MMG/PLS Referto di Laboratorio"
* code from $MMG-PLS-code-lab-it (required)
* code ^short = "Ruolo/i del professionista."
* organization only Reference(organizationOperatore-it-lab)