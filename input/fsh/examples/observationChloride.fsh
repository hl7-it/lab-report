Instance: Observation-Lab-Esempio-Cloruro
InstanceOf: observation-it-lab
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di cloruro nel sangue."


* category[+][laboratory].coding.code = #laboratory
* category[=][laboratory].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][laboratory].coding.display = "Laboratory"





* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #100745-9
* code.coding.display = "Chimica Concentrazione di Sostanza Punto nel tempo (episodio) Sangue venoso misto"
* effectiveDateTime = "2023-05-01"
* valueQuantity.unit = "meq/L"
* valueQuantity.code = #meq/L
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value = 100




* subject = Reference(Paziente-SSN)

* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference (Specimen-Lab-Esempio)




