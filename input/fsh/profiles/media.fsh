Profile: MediaRefertoLabIt
Parent: Media
Id: media-it-lab
Title: "Media - Lab Report"
Description: "Descrizione della risorsa Media per la descrizione dei contenuti multimediali allegati al DiagnosticReport del Lab Report."
* . ^short = "Media Referto di Laboratorio"

* insert SetFmmandStatusRule ( 1, draft )
* ^purpose = "Questa risorsa viene utilizzata per illustrare i contenuti multimediali legati al Referto di Laboratorio."

* status ^short = "Stato del valore del risultato."
* subject 1..
* subject only Reference(patient-it-lab)
* subject.reference ^short = "Reference Literal, Relative, URL interno o assoluto."
* subject.reference 1..
* subject ^short = "Reference al soggetto del  file multimediali."
* device ^short = "Dispositivo utilizzato per raccogliere i file multimediali."
* device only Reference(device-it-lab)
* content ^short = "Contenuto multimediale."
* operator only Reference(practitioner-it-lab or practitionerrole-it-lab or organization-it-lab or CareTeam or patient-it-lab or device-it-lab or RelatedPerson)
* operator ^short = "Operatore che ha generato il contenuto multimediale."
* type ^short = "Descrizione attributo: Tipo di contenuto multimediale. Possibili valori: image | video | audio"
* type from $MediaType