Instance: DiagnosticReport-Lab-Esempio
InstanceOf: diagnosticreport-it-lab
Usage: #example
Description: "Esempio di un report diagnostico: report prodotto durante l'incontro."

* id = "56f19992-e73e-45b5-bbdd-6d9aeb60b15a"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:2ae95a5c-9094-41a3-a437-ce6d34c55a54)
* identifier.use = #official
* identifier.value = "urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3"
* basedOn = Reference(urn:uuid:463ae6fe-60d4-4b38-84b3-1008e0925678)
* status = #final
// * category = $diagnosticreport-category#HM "Hematology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
* result[+] = Reference(urn:uuid:7e2f354b-de83-4472-bd07-1571cdb50fde)
//* result[+] = Reference(urn:uuid:5ea6e05a-e271-4ef9-bcc1-0bd10e55c90c)
* effectivePeriod.start = "2023-02-25T11:45:00+01:00"
* effectivePeriod.end = "2023-02-25T12:45:00+01:00"
* issued = "2023-02-25T12:45:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* specimen = Reference(urn:uuid:168d4960-0a0b-43af-8025-180f0965f325)
* conclusionCode = $sct#166921001 "Blood glucose normal"