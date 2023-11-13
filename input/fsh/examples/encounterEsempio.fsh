Instance: Encounter-Lab-Esempio
InstanceOf: EncounterRefertoLabIt
Description: "Esempio di incontro: informazioni di base per descrivere un incontro ambulatoriale pianificato."
Usage: #example

* id = "7b06368c-7089-4f66-acc8-29e1fcbd31f6"
* status = #finished

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "ambulatory"
* subject = Reference(Paziente-SSN)




* period.start = "2023-02-25T11:45:00+01:00"
* period.end = "2023-02-25T12:45:00+01:00"




* location.location = Reference(Location-Lab-Esempio)

* basedOn = Reference(ServiceRequest-Lab-Esempio)

* participant.individual = Reference(Infermiere-Lab-Esempio)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF "Secondary performer"
