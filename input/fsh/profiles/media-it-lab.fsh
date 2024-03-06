Profile: MediaRefertoLabIt
Parent: Media
Id: media-it-lab
Title: "Media - Lab Report"
Description: "Descrizione dei contenuti multimediali tramite il profilo della risorsa Media per il referto di laboratorio."
* . ^short = "Media Referto di Laboratorio"
* insert SetFmmandStatusRule ( 1, trial-use)
* ^purpose = "Questa risorsa viene utilizzata per illustrare i contenuti multimediali legati al Referto di Laboratorio."

* status ^short = "Stato del valore del risultato."
* subject 1..
* subject only Reference(PatientRefertoLabIt)
* subject.reference ^short = "Reference Literal, Relative, URL interno o assoluto."
* subject.reference 1..
* subject ^short = "Reference al soggetto del  file multimediali."
* device ^short = "Dispositivo utilizzato per raccogliere i file multimediali."
* device only Reference(DeviceRefertoLabIt)
* content ^short = "Contenuto multimediale."
* operator only Reference(PractitionerRefertoLabIt or PractitionerRoleRefertoLabIt or OrganizationRefertoLabIt or CareTeam or PatientRefertoLabIt or DeviceRefertoLabIt or RelatedPerson)
* operator ^short = "Operatore che ha generato il contenuto multimediale."
* type ^short = "Descrizione attributo: Tipo di contenuto multimediale. Possibili valori: image | video | audio"
* type from $MediaType