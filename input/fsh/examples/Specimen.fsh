Instance: Specimen-Lab-Esempio
InstanceOf: SpecimenRL
Usage: #example
Title: "EsempioCampione"
Description: "Esempio di campione: sangue prelevato dall'avambraccio del paziente."

* id = "168d4960-0a0b-43af-8025-180f0965f324"
* type.coding.code = #BLD
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-SpecimenType"
* type.coding.display = "Whole blood"

* subject = Reference(Paziente-SSN)

* collection.bodySite.coding.code = #7311008
* collection.bodySite.coding.system = $sct
* collection.bodySite.coding.display = "Anterior surface of arm"
* container.type.coding.code = #706052002
* container.type.coding.system = "http://www.snomed.org/"
* container.type.coding.display = "Evacuated blood collection tube"