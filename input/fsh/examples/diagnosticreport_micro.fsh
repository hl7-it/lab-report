
Instance: ec1447fb-7c90-4065-bfa0-3da11de3364a
InstanceOf: DiagnosticReport
Usage: #example
Description: "Esempio di un report diagnostico: report di un esame del sangue che mette in evidenza i risultati di microbiologia, con i collegamenti tra risultato - germe - antibiotico."
Title: "DiagnosticReport - Esempio Laboratorio"
* status = #final
* category = $v2-0074#LAB
* code.text = "Coltura e suscettibilità batterica aerobica e anaerobica"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference(Specimen-Lab-Esempio)
* result[0] = Reference(Observation/40278a69-87aa-470f-a38f-bff1e8aee175)
* result[+] = Reference(Observation/297c84f2-28d6-41b5-a270-6f563ef0fdfc)
* result[+] = Reference(Observation/e271a348-4f54-4667-86ed-d9ecfb7430f6)