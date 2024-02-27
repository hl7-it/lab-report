Instance: Observation-Lab-Esempio-Elettroforesi
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di albumina da elettroforesi."

* id = "a7d1b3b0-9aee-4bc7-b0f2-46d441ba6246"
* category[laboratory] = $observation-category#laboratory

* status = #final



* code = $loinc#2862-1 "Albumin [Mass/volume] in Serum or Plasma by Electrophoresis"
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* valueQuantity.unit = "g/dL"
* valueQuantity.code = #g/dL
* valueQuantity.system = $ucum
* valueQuantity.value = 5

* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* derivedFrom = Reference(urn:uuid:059927b1-7e17-409e-ae60-68cc3c0b3aea)