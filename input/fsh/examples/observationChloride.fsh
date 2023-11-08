Instance: Observation-Lab-Esempio-Cloruro
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di cloruro nel sangue."


* category[laboratory] = $observation-category#laboratory

* status = #final

* code = $loinc#100745-9 "Chimica Concentrazione di Sostanza Punto nel tempo (episodio) Sangue venoso misto"
* effectiveDateTime = "2023-05-01"
* valueQuantity.unit = "meq/L"
* valueQuantity.code = #meq/L
* valueQuantity.system = $ucum
* valueQuantity.value = 100

* subject = Reference(Paziente-SSN)
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference (Specimen-Lab-Esempio)




