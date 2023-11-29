Instance: Encounter-Lab-Esempio
InstanceOf: EncounterRefertoLabIt
Description: "Esempio di incontro: informazioni di base per descrivere un incontro ambulatoriale pianificato."
Usage: #example

* id = "7b06368c-7089-4f66-acc8-29e1fcbd31f6"
* status = #finished

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "ambulatory"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)


* period.start = "2023-02-25T11:45:00+01:00"
* period.end = "2023-02-25T12:45:00+01:00"


* location.location = Reference(urn:uuid:f148e54a-2046-4534-b9e9-54e7e9632224)

* basedOn = Reference(urn:uuid:463ae6fe-60d4-4b38-84b3-1008e0925678)

* participant.individual = Reference(urn:uuid:134a0bb1-aa0a-46b9-aa1e-a5d0e379e77c)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF "Secondary performer"
