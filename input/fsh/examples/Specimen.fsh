Instance: Specimen-Lab-Esempio
InstanceOf: SpecimenRL
Usage: #example
Title: "EsempioCampione"
Description: "Esempio di campione: sangue prelevato dall'avambraccio del paziente."
* type.coding.code = #BLD
* type.coding.system = "http://terminology.hl7.org/ValueSet/v3-EntityCode"
* type.coding.display = "Whole blood"
* subject = Reference(Patient-SSN)
* collection.bodySite.coding.code = #7311008
* collection.bodySite.coding.system = "http://hl7.org/fhir/ValueSet/body-site"
* collection.bodySite.coding.display = "Anterior surface of arm"
* container.type.coding.code = #706052002
* container.type.coding.system = "http://hl7.it/fhir/lab-report/ValueSet/lab-specimenContainer-it"
* container.type.coding.display = "Evacuated blood collection tube"