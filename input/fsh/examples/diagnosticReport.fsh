Instance: DiagnosticReport-Lab-Esempio
InstanceOf: DiagnosticReportRL
Usage: #inline
Description: "Esempio di un report diagnostico: report prodotto durante l'incontro."

* id = "56f19992-e73e-45b5-bbdd-6d9aeb60b15a"
* basedOn = Reference(ServiceRequest-Lab-Esempio)
* status = #final
* category = $diagnosticreport-category#HM "Hematology"
* code = $LOINC#11502-2 "Referto di medicina di laboratorio"

* subject.type = "Patient"
* subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
* subject.identifier.value = "RSSMRA71E01F205E"

* encounter = Reference(Encounter-Lab-Esempio)
* result = Reference(Observation-Lab-Esempio)

* effectivePeriod.start = "2023-02-25T11:45:00+01:00"
* effectivePeriod.end = "2023-02-25T12:45:00+01:00"

* issued = "2023-02-25T12:45:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
//* performer.type = "Organization"
* specimen = Reference(Specimen-Lab-Esempio)
* conclusionCode = $sct#166921001 "Blood glucose normal"