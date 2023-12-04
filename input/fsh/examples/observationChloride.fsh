Instance: Observation-Lab-Esempio-Cloruro
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di cloruro nel sangue."


* category[laboratory] = $observation-category#laboratory
* id = "5ea6e05a-e271-4ef9-bcc1-0bd10e55c90c"
* status = #final

* code = $loinc#100745-9 "Chimica Concentrazione di Sostanza Punto nel tempo (episodio) Sangue venoso misto"
* effectiveDateTime = "2023-05-01"
* valueQuantity.unit = "meq/L"
* valueQuantity.code = #meq/L
* valueQuantity.system = $ucum
* valueQuantity.value = 100

* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* specimen = Reference (urn:uuid:168d4960-0a0b-43af-8025-180f0965f325)




