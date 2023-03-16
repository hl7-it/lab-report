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

* subject 1..
* subject only Reference (Patient-it-RL)
* encounter only Reference (Encounter-RL) 
* specimen only Reference (Campione)

* result only Reference (Observation-referto-laboratorio)
* result ^short = "Osservazioni cliniche del referto" 
* imagingStudy 0..0