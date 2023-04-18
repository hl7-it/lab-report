Instance: Composition-Lab-Esempio
InstanceOf: CompositionRL
Usage: #inline
Description: "Esempio di una Composition: descrizione header e struttura body del referto."

* id = "2ae95a5c-9094-41a3-a437-ce6d34c55a54"
* extension[dataEnterer].extension[dataEnterer].valueReference = Reference(PractitionerRole-Lab-Esempio)
* extension[dataEnterer].extension[tempoCompilazione].valueDateTime = "2023-02-25T10:45:00+01:00"

* language = #it
* identifier.use = #official
* identifier.value = "urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3"

* status = #final

* type.coding.system = "http://loinc.org" 
* type.coding.code = #11502-2
* type.coding.display = "Referto di medicina di laboratorio" 

* subject.type = "Patient"
* subject.identifier.system = "http://hl7.it/sid/codiceFiscale"
* subject.identifier.value = "RSSMRA71E01F205E"

* encounter = Reference(Encounter-Lab-Esempio)

* date =  "2023-03-28"

* author = Reference(PractitionerRole-Lab-Esempio)

* title = "Referto di Laboratorio"

* confidentiality = #N

* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2023-02-25T12:45:00+01:00"
* attester[legalAuthenticator].party = Reference(PractitionerRole-Lab-Esempio)

* custodian.type = "Organization"
* custodian.identifier.value = "120201"
* custodian.identifier.system = "http://hl7.it/sid/fls"

* section.code.coding.system = $LOINC
* section.code.coding.code = #26436-6
* section.code.coding.display = "Esami di laboratorio"
* section.title = "Esami di laboratorio"

* section.section.title = "Esame del sangue"
* section.section.code.coding.system = $LOINC
* section.section.code.coding.code = #10450-5
* section.section.code.coding.display = "Glucosio [massa / volume] nel siero o nel plasma - 10 ore di digiuno"
* section.section.entry = Reference(DiagnosticReport-Lab-Esempio)