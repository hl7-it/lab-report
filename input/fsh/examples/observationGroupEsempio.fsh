Instance: Observation-Lab-Esempio-Group
InstanceOf: ObservationGroupingRefertoLabIt
Usage: #example
Description: "Esempio di contenitore per Battery Test: rilevazione di glucosio nel sangue."


* category[laboratory] = $observation-category#laboratory

* status = #final
* code = $loinc#18723-7

* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

* hasMember[+] = Reference(urn:uuid:7e2f354b-de83-4472-bd07-1571cdb50fde)
//* hasMember[+] = Reference(urn:uuid:5ea6e05a-e271-4ef9-bcc1-0bd10e55c90c)

* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* specimen = Reference (urn:uuid:168d4960-0a0b-43af-8025-180f0965f325)
* derivedFrom = Reference(urn:uuid:059927b1-7e17-409e-ae60-68cc3c0b3aea)