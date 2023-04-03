Instance: Composition-Lab-Esempio
InstanceOf: CompositionRL
Usage: #example
Description: "Esempio di una Composition: descrizione header e struttra body del referto."
* language = #it
* identifier.use = #official
* identifier.value = "urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3"

* status = #final

* type.coding.system = "http://loinc.org" 
* type.coding.code = #11502-2
* type.coding.display = "Referto di laboratorio" 

//* category.coding.system =  "http://hl7.org/fhir/ValueSet/document-classcodes"
//* category.coding.code = 

* subject = Reference(Paziente-SSN)

* encounter = Reference(Encounter-Lab-Esempio)

* date =  "2023-03-28"

* author = Reference(PractitionerRole-Lab-Esempio)

* title = "Referto di Laboratorio"

* confidentiality = #N

* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2023-02-25T12:45:00+01:00"
* attester[legalAuthenticator].party = Reference(PractitionerRole-Lab-Esempio)

* custodian = Reference(Organization-Lab-Esempio)

* section.code.coding.system = $LOINC
* section.code.coding.code = #26436-6
* section.code.coding.display = "Esami di laboratorio"
* section.title = "Esami di laboratorio"

* section.section.title = "Esame del sangue"
* section.section.code.coding.system = $LOINC
* section.section.code.coding.code = #10450-5
* section.section.code.coding.display = "Glucosio [massa / volume] nel siero o nel plasma - 10 ore di digiuno"
* section.section.entry = Reference(DiagnosticReport-Lab-Esempio)