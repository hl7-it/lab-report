Instance: Composition-Lab-Esempio
InstanceOf: composition-it-lab
Usage: #example
Description: "Esempio di Composition: esempio di referto di laboratorio."
* id = "2ae95a5c-9094-41a3-a437-ce6d34c55a54"
* extension[dataEnterer].extension[dataEnterer].valueReference = Reference(urn:uuid:134a0bb1-aa0a-46b9-aa1e-a5d0e379e77c)
* extension[dataEnterer].extension[tempoCompilazione].valueDateTime = "2023-02-25T10:45:00+01:00"
* language = #it-IT
* identifier.use = #official
* identifier.value = "urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3"
* identifier.assigner.display = "Regione Lazio"
* status = #final

* category[studyType] = $loinc#18723-7 "Hematology studies (set)"

* type = $loinc#11502-2 "Laboratory report"
* type.text = "Referto di laboratorio"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b6)
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
* date = "2022-03-30T11:24:26+01:00"
* author[+] = Reference(urn:uuid:134a0bb1-aa0a-46b9-aa1e-a5d0e379e77c)
* title = "Referto di Laboratorio"
* confidentiality = #N
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2023-02-25T12:45:00+01:00"
* attester[legalAuthenticator].party = Reference(urn:uuid:134a0bb1-aa0a-46b9-aa1e-a5d0e379e77c)
* custodian = Reference(urn:uuid:606860f9-cd4e-494d-b550-85e7856d6746)

* section[annotations].code = $loinc#48767-8 "Annotation comment [Interpretation] Narrative"
* section[annotations].title = "Annotation comment [Interpretation] Narrative."
* section[annotations].title = "Note e commenti"
* section[annotations].text.status = #generated
* section[annotations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Il referto di laboratorio è stato emesso in data 25/02/2026 alle ore 12:45. Il referto è stato firmato digitalmente dal medico responsabile del laboratorio.</div>"

