Profile: DiagnosticReportRL
Parent: DiagnosticReport
Id: DiagnosticReportRL
Title: "DiagnosticReport - Referto di Laboratorio"
Description: "Descrizione della risorsa Diagnostic Report nel contesto italiano del referto di laboratorio"

* ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia"
* . ^short = "DiagnosticReport Referto di Laboratorio"
* . ^definition = "Laboratory Report DiagnosticReport"

* basedOn only Reference (ServiceRequestRL)
* basedOn ^short = "Reference a una o più prestazioni richieste associate al referto."
* category 1.. 
* category ^short = "Categoria del servizio."
* category ^definition = "Un codice che classifica la disciplina clinica, il reparto o il servizio diagnostico che ha creato il referto (es. cardiologia, biochimica, ematologia)."

* subject 1..
* subject ^short = "Soggetto del referto."
* subject only Reference (PatientRL) 
* status ^short = "Stato del report clinico."
* encounter only Reference (EncounterRL) 
* encounter ^short = "Evento sanitario che ha portato alla creazione del DiagnosticReport"
* specimen only Reference (SpecimenRL)
* specimen ^short = "Reference ai campioni su cui si basa DiagnosticReport."
* performer only Reference(PractitionerRL or PractitionerRoleRL or Organization or CareTeam)
* performer ^short = "Responsabile del report clinico."
* performer ^definition = "Organizzazione o Persona che è responsabile del report; non è necessariamente l'autore dei dati atomici o l'entità che ha interpretato i risultati. "
* code from sezione-referto-laboratorio (required)
* result only Reference (ObservationRL)
* result ^short = "Osservazioni cliniche del referto." 
* imagingStudy 0..0 