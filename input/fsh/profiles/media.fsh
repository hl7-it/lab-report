Profile: MediaRL
Parent: Media
Id: MediaRL
Title: "Media - Lab Report"
Description: "Descrizione della risorsa Media per il contesto italiano del Lab Report."
* ^status = #active
* ^experimental = false
* ^purpose = "Questa risorsa viene utilizzata per illustrare i contenuti multimediali legati al Referto di Laboratorio."
* status = #completed (exactly)
* status ^short = "Stato del valore del risultato."
* subject 1..
* subject only Reference(PatientRL)
* subject.reference 1..
* subject ^short = "Reference al soggetto del  file multimediali."
* device ^short = "Dispositivo utilizzato per raccogliere i file multimediali."
* content ^short = "Contenuto multimediale."