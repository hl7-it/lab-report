Profile: DiagnosticReportLIta
Parent: DiagnosticReport
Id: DiagnosticReportLIta
Title: "DiagnosticReport - Referto di Laboratorio"
Description: "Descrizione della risorsa Diagnostic Report nel contesto italiano del referto di laboratorio"

* ^publisher = "HL7 Italy"
* ^copyright = "HL7 Italy"
* . ^short = "DiagnosticReport - Laboratory Report"
* . ^definition = "Laboratory Report DiagnosticReport"

* basedOn only Reference (ServiceRequest-RL)
* category 1.. 
* category ^short = "Classificazione della categoria del servizio."
* category ^definition = "Un codice che classifica la disciplina clinica, il reparto o il servizio diagnostico che ha creato il referto (es. cardiologia, biochimica, ematologia)."

* subject 1..
* subject only Reference (Patient-it-RL) 
* encounter only Reference (Encounter-RL) 
* encounter ^short = "Evento sanitario che ha portato alla creazione del DiagnosticReport"
* specimen only Reference (Campione)
* specimen ^short = "Reference ai campioni su cui si basa DiagnosticReport."
* performer only Reference(Practitioner-it-RL or PractitionerRole or Organization or CareTeam)
* performer ^short = "Responsabile del report clinico."
* performer ^definition = "Organizzazione o Persona che è responsabile del report; non è necessariamente l'autore dei dati atomici o l'entità che ha interpretato i risultati. "
* code from sezione-referto-laboratorio (required)
* result only Reference (Observation-referto-laboratorio)
* result ^short = "Osservazioni cliniche del referto." 
* imagingStudy 0..0