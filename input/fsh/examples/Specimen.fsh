Instance: Specimen-Lab-Esempio
InstanceOf: SpecimenRefertoLabIt
Usage: #example
Title: "EsempioCampione"
Description: "Esempio di campione: sangue prelevato dall'avambraccio del paziente."

* id = "168d4960-0a0b-43af-8025-180f0965f325"
//* type = $v3-SpecimenType#BLD "Whole blood"
* type.coding.system = $v3-SpecimenType
* type.coding.code = #BLD
* type.coding.display = "Whole blood"

* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)

* collection.bodySite = $sct#7311008 "Anterior surface of arm"
* container.type = $sct#706052002 "Evacuated blood collection tube"
//* container.additiveReference = Reference(urn:uuid:168d4960-0a0b-43af-8025-180f0965f326)