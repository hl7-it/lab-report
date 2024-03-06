Instance: Composition-Lab-Esempio
InstanceOf: composition-it-lab
Usage: #example
Description: "Esempio di Composition: esempio di referto di laboratorio."
* id = "2ae95a5c-9094-41a3-a437-ce6d34c55a54"
* extension[dataEnterer].extension[dataEnterer].valueReference = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803d)
* extension[dataEnterer].extension[tempoCompilazione].valueDateTime = "2023-02-25T10:45:00+01:00"
* language = #it-IT
* identifier.use = #official
* identifier.value = "urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3"
* identifier.assigner.display = "Regione Lazio"
* status = #final
* category[studyType] = $loinc#18723-7 "Hematology studies (set)"
* type = http://loinc.org#11502-2 "Laboratory report"
* type.text = "Referto di laboratorio"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
* date = "2022-03-30T11:24:26+01:00"
* author[+] = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* title = "Referto di Laboratorio"
* confidentiality = #N
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2023-02-25T12:45:00+01:00"
* attester[legalAuthenticator].party = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* custodian = Reference(urn:uuid:5fd3f1a6-b2c8-44cb-8237-0b5f0a81f2a8)
* section[lab-subsections].code = $loinc#26436-6  "Laboratory studies (set)"
* section[lab-subsections].title = "Laboratory studies (set)"
* section[lab-subsections].section[+].title = "Esame del sangue"
* section[lab-subsections].section[=].code = $loinc#18723-7 "Hematology studies (set)"
* section[lab-subsections].section[=].text.status = #generated
* section[lab-subsections].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><table id=\"nota1\"><thead><tr><th>Esame</th><th>Metodo utilizzato per l'esame</th><th>Materiale utilizzato per l'esame</th><th>Risultato dell'esame</th><th>Commenti e note</th><th>Unità di Misura</th><th>Range di Riferimento</th><th>Criteri per il range di riferimento</th><th>Interpretazione</th><th>Allegati multimediali</th></tr></thead><tbody><tr><td>Microalbumina massa/volume in urine</td><td/><td>Urine</td><td>20</td><td/><td>mg/L</td><td> 0 - 20 </td><td/><td>N</td><td/></tr></tbody></table></li></ul></div>"
* section[lab-subsections].section[=].entry = Reference(urn:uuid:7e2f354b-de83-4472-bd07-1571cdb50fde)