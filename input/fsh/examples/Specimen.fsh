Instance: Specimen-Lab-Esempio
InstanceOf: SpecimenRefertoLabIt
Usage: #example
Title: "EsempioCampione"
Description: "Esempio di campione: sangue prelevato dall'avambraccio del paziente."

* id = "168d4960-0a0b-43af-8025-180f0965f324"
* type = $v3-SpecimenType#BLD "Whole blood"
* subject = Reference(Paziente-SSN)

* collection.bodySite = $sct#7311008 "Anterior surface of arm"
* container.type = $sct#706052002 "Evacuated blood collection tube"
* container.additiveReference = Reference(Specimen-Additive-Substance-Lab-Esempio)