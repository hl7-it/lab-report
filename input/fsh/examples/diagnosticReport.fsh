Instance: DiagnosticReport-Lab-Esempio
InstanceOf: DiagnosticReportRL
Usage: #example
Description: "Esempio di un report diagnostico: report prodotto durante l'incontro."

* basedOn = Reference(ServiceRequest-Lab-Esempio)
* status = #final
* category = $diagnosticreport-category#HM "Hematology"
* code = $LOINC#10450-5 "Glucosio post 10h digiuno"
* subject = Reference(Paziente-SSN)
* encounter = Reference(Encounter-Lab-Esempio)
* result = Reference(Observation-Lab-Esempio)

* effectivePeriod.start = "2023-02-25T11:45:00+01:00"
* effectivePeriod.end = "2023-02-25T12:45:00+01:00"

* issued = "2023-02-25T12:45:00+01:00"
* performer = Reference(Practitioner-Lab-Esempio)
* specimen = Reference(Specimen-Lab-Esempio)
* conclusionCode = $sct#166921001 "Blood glucose normal"