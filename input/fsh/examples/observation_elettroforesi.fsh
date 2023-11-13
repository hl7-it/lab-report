Instance: Observation-Lab-Esempio-Elettroforesi
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di albumina da elettroforesi."


* category[laboratory] = $observation-category#laboratory

* status = #final

* code = $loinc#2862-1 "Chimica Concentrazione di Massa Plasma Punto nel tempo (episodio) Siero Siero o Plasma"
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* valueQuantity.unit = "g/dL"
* valueQuantity.code = #g/dL
* valueQuantity.system = $ucum
* valueQuantity.value = 5

* subject = Reference(Paziente-SSN)
* performer = Reference(PractitionerRole-Lab-Esempio)
* derivedFrom = Reference(Media-Lab-Esempio)