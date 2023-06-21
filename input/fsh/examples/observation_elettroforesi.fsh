Instance: Observation-Lab-Esempio-Elettroforesi
InstanceOf: observation-it-lab
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di albumina da elettroforesi."


* category[+][esame-laboratorio].coding.code = #laboratory
* category[=][esame-laboratorio].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][esame-laboratorio].coding.display = "Laboratory"

* category[+][specialita-esame-laboratorio].coding.code = #26436-6	
* category[=][specialita-esame-laboratorio].coding.system = "http://loinc.org"
* category[=][specialita-esame-laboratorio].coding.display = "Esami di laboratorio"

* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #2862-1 	
* code.coding.display = "Chimica Concentrazione di Massa Plasma Punto nel tempo (episodio) Siero Siero o Plasma"

* valueQuantity.unit = "g/dL"
* valueQuantity.code = #g/dL
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value = 5

* subject = Reference(Paziente-SSN)
* performer = Reference(PractitionerRole-Lab-Esempio)
* derivedFrom = Reference(Media-Lab-Esempio)