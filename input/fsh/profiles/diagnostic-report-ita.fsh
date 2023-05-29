//Alias: $extension-DiagnosticReport.composition = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition


Profile: DiagnosticReportRefertoLabIt
Parent: DiagnosticReport
Id: diagnosticreport-it-lab
Title: "DiagnosticReport - Lab Report"
Description: "Descrizione della risorsa DiagnosticReport per la descrizione delle informazioni cliniche del dominio di Lab Report."

* ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia"
* . ^short = "DiagnosticReport Referto di Laboratorio"
* . ^definition = "Laboratory Report DiagnosticReport"
// * extension contains DiagnosticReportReference named DiagnosticReportCompositionR5 1..1
// * extension[DiagnosticReportCompositionR5] ^short = "Reference a Composition del FHIR document."

// * extension contains $extension-DiagnosticReport.composition named DiagnosticReportCompositionR5 1..1
// * extension[DiagnosticReportCompositionR5].value[x] 1..
// * extension[DiagnosticReportCompositionR5]extension.url = "https://hl7.org/fhir/versions.html#extensions"
// * extension[DiagnosticReportCompositionR5].value[x] only Reference(CompositionRefertoLabIt)

* basedOn only Reference (servicerequest-it-lab)
* basedOn ^short = "Reference a una o più prestazioni richieste associate al referto."
* category 1.. 
* category ^short = "Categoria del servizio."
* category ^definition = "Un codice che classifica la disciplina clinica, il reparto o il servizio diagnostico che ha creato il referto (es. cardiologia, biochimica, ematologia)."
* category from $diagnosticreport-category (example)

* subject 1..
* subject ^short = "Soggetto del referto."
* subject only Reference(patient-it-lab)


* status ^short = "Descrizione attributo: Stato del report clinico. Possibili valori: registered | partial | preliminary | modified | final | amended | corrected | appended | cancelled | entered-in-error | unknown"
* status from $diagn-status (required)
* encounter only Reference (encounter-it-lab) 
* encounter ^short = "Contesto in cui è stato generato il DiagnosticReport."
* specimen only Reference (specimen-it-lab)
* specimen ^short = "Reference ai campioni su cui si basa DiagnosticReport."

* performer only Reference(practitioner-it-lab or practitionerrole-it-lab or organization-it-lab or CareTeam)
* performer ^short = "Responsabile del report clinico."
* performer ^definition = "Organizzazione o Persona che è responsabile del report; non è necessariamente l'autore dei dati atomici o l'entità che ha interpretato i risultati. "
* code ^short = "Nome/codice della diagnostic report."
* code = $LOINC#11502-2 "Referto di medicina di laboratorio"
* result only Reference (observation-it-lab or observation-grouping-it-lab)
* result ^short = "Osservazioni cliniche." 
* imagingStudy 0..0 
* media ^short = "Contenuto multimediale associate al DiagnosticReport."
* media.comment ^short = "Commento sull'immagine."
* media.link only Reference(media-it-lab)
* media.link ^short = "Riferimento al contenuto multimediale."