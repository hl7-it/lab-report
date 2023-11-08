Instance: DiagnosticReport-Lab-Esempio
InstanceOf: diagnosticreport-it-lab
Usage: #example
Description: "Esempio di un report diagnostico: report prodotto durante l'incontro."

* id = "56f19992-e73e-45b5-bbdd-6d9aeb60b15a"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/2ae95a5c-9094-41a3-a437-ce6d34c55a54)
* identifier.use = #official
* identifier.value = "urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3"
* basedOn = Reference(ServiceRequest-Lab-Esempio)
* status = #final
// * category = $diagnosticreport-category#HM "Hematology"
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Paziente-SSN)
* encounter = Reference(Encounter-Lab-Esempio)
* result[+] = Reference(Observation-Lab-Esempio-Glucosio)
* result[+] = Reference(Observation-Lab-Esempio-Cloruro)
* effectivePeriod.start = "2023-02-25T11:45:00+01:00"
* effectivePeriod.end = "2023-02-25T12:45:00+01:00"
* issued = "2023-02-25T12:45:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference(Specimen-Lab-Esempio)
* conclusionCode = $sct#166921001 "Blood glucose normal"