Instance: Encounter-IT
InstanceOf: EncounterRL
Usage: #example
Title: "Encounter"
Description: "Descrizione di un incontro ambulatoriale."

* status = #planned
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject  = Reference(Patient-SSN)
* basedOn = Reference(ServiceRequest-Lab-Esempio)
* period.start = "2022-10-03T10:00:00+02:00"
* period.end = "2022-10-03T11:00:00+02:00"