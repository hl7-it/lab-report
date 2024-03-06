Instance: Bundle-Lab-Esempio-2
InstanceOf: Bundle
Title: "Microbiologia - DiagnosticReport - Observation - Specimen"
Description: "Esempio di un Report diagnostico per esame del sangue che mette in evidenza i risultati di microbiologia."
Usage: #example

* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-3de9d419d27e"
* type = #transaction
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:82c40e48-8ed5-43bd-a990-ae9b16d2f641" 
* entry[=].resource = DiagnosticReport-Lab-Esempio2
* entry[=].request.method = #POST
* entry[=].request.url = "/DiagnosticReport"
* entry[+].fullUrl = "urn:uuid:20e0ab9e-2ce4-431a-adfb-6a727bd49355"
* entry[=].resource = Inline-Observation-org-id2-susc-2
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:25c5aa73-387d-4b80-9245-8e1adfa470f5"
* entry[=].resource = Inline-Observation-gs-org2
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:297c84f2-28d6-41b5-a270-6f563ef0fdfc"
* entry[=].resource = Inline-Observation-aerobic-culture
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl =  "urn:uuid:2b209d21-dc7b-4267-a089-d3b61667945a"
* entry[=].resource = Inline-Observation-wbc
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl =  "urn:uuid:333b62b2-47b0-43b5-9745-abec1f0c4656"
* entry[=].resource = Inline-Observation-gram-stain
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl =  "urn:uuid:31747c3c-0a07-4937-9529-378140609e96"
* entry[=].resource = Inline-Observation-org-id1-susc-panel
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:424aba49-cc38-4207-b9a0-c484062ecb26"
* entry[=].resource = Inline-Observation-org-id2
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl =  "urn:uuid:4bc004e5-e77b-46c7-b0d5-3dfa127b48b4"
* entry[=].resource = Inline-Observation-org-id2-susc-panel
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:4edf70e9-b332-4804-a3bf-5d1c14e9f892"
* entry[=].resource = Inline-Observation-org-id2-susc-1
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl =  "urn:uuid:516884c4-8a1f-4e5b-8492-a7dd190f1fb0"
* entry[=].resource = Inline-Observation-gs-org1
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:60f23552-dfb9-4142-95a2-911a41180c78"
* entry[=].resource = Inline-Observation-org-id1-susc-3
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:652d16a5-91d9-40fb-9c5c-3950683e5d9f"
* entry[=].resource = Inline-Observation-org-id1-susc-1
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:6b103ad8-1870-45bb-884a-86675ad404f1"
* entry[=].resource = Inline-Observation-org-id1
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:848e01c5-1565-4708-92c3-304418a43a40"
* entry[=].resource = Inline-Observation-org-id1-susc-4
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:9018b020-6e21-4afa-9131-5832132092c1"
* entry[=].resource = Inline-Observation-gs-org1-quant
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:a99f7742-c77d-4650-918b-1e9a6e28cefd"
* entry[=].resource = Inline-Observation-org-id1-growth
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:f2831756-1436-11ee-be56-0242ac120002"
* entry[=].resource = Inline-Observation-org-id2-susc-4
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:ccf32a29-d9f5-435a-9c67-e59d7104adff"
* entry[=].resource = Inline-Observation-org-id1-susc-2
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:e271a348-4f54-4667-86ed-d9ecfb7430f6"
* entry[=].resource = Inline-Observation-anaerobic-culture
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:ed8a917b-2e94-4aa9-b824-5dceee2deb90"
* entry[=].resource = Inline-Observation-org-id2-growth
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:f2e48d96-a153-46b3-a15b-58b5aa761853"
* entry[=].resource = Inline-Observation-gs-org2-quant
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:20e0ab9e-2ce4-431b-adfb-6a727bd49355"
* entry[=].resource = Inline-Observation-org-id2-susc-3
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:2ae95a5c-9094-41a3-a437-ce6d34c55a54" 
* entry[=].resource = Composition-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Composition"
* entry[+].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5" 
* entry[=].resource = Paziente-SSN
* entry[=].request.method = #POST
* entry[=].request.url = "/Patient"
* entry[+].fullUrl = "urn:uuid:168d4960-0a0b-43af-8025-180f0965f324" 
* entry[=].resource = Device-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Device"
* entry[+].fullUrl = "urn:uuid:134a0bb1-aa0a-46b9-aa1e-a5d0e379e77c" 
* entry[=].resource = Infermiere-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Practitioner"
* entry[+].fullUrl = "urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6" 
* entry[=].resource = Encounter-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Encounter"
* entry[+].fullUrl = "urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c" 
* entry[=].resource = PractitionerRole-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/PractitionerRole"
* entry[+].fullUrl = "urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803d" 
* entry[=].resource = Practitioner-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Practitioner"
* entry[+].fullUrl = "urn:uuid:463ae6fe-60d4-4b38-84b3-1008e0925678" 
* entry[=].resource = ServiceRequest-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/ServiceRequest"
* entry[+].fullUrl = "urn:uuid:5fd3f1a6-b2c8-44cb-8237-0b5f0a81f2a8" 
* entry[=].resource = Organization-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Organization"
* entry[+].fullUrl = "urn:uuid:7e2f354b-de83-4472-bd07-1571cdb50fde" 
* entry[=].resource = Observation-Lab-Esempio-Glucosio
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:ae0365ea-d8a1-45e0-a39d-f14fac4ccfe8" 
* entry[=].resource = OrganizationOperatore-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Organization"
* entry[+].fullUrl = "urn:uuid:f148e54a-2046-4534-b9e9-54e7e9632224" 
* entry[=].resource = Location-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Location"
* entry[+].fullUrl = "urn:uuid:168d4960-0a0b-43af-8025-180f0965f325" 
* entry[=].resource = Specimen-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Specimen"
* entry[+].fullUrl = "urn:uuid:168d4960-0a0b-43af-8025-180f0965f326" 
* entry[=].resource = Specimen-Additive-Substance-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Specimen"
// * entry[+].fullUrl = "urn:uuid:a8a27a81-4543-45a9-8859-fa17053d963e" 
// * entry[=].resource = Observation-TimedTest-T3-Lab-Esempio
// * entry[=].request.method = #POST
// * entry[=].request.url = "/Observation"

// * entry[+].fullUrl = "urn:uuid:9474efca-8c8a-436d-a1a4-5706a1dd057a" 
// * entry[=].resource = Observation-TimedTest-T2-Lab-Esempio
// * entry[=].request.method = #POST
// * entry[=].request.url = "/Observation"

* entry[+].fullUrl = "urn:uuid:a7d1b3b0-9aee-4bc7-b0f2-46d441ba6246" 
* entry[=].resource = Observation-Lab-Esempio-Elettroforesi
* entry[=].request.method = #POST
* entry[=].request.url = "/Observation"
* entry[+].fullUrl = "urn:uuid:059927b1-7e17-409e-ae60-68cc3c0b3aea" 
* entry[=].resource = Media-Lab-Esempio
* entry[=].request.method = #POST
* entry[=].request.url = "/Media"


Instance: DiagnosticReport-Lab-Esempio2
InstanceOf: diagnosticreport-it-lab
Usage: #inline
Description: "Esempio di un report diagnostico: report di un esame del sangue che mette in evidenza i risultati di microbiologia, con i collegamenti tra risultato - germe - antibiotico."
Title: "DiagnosticReport - Esempio Laboratorio"
* id = "82c40e48-8ed5-43bd-a990-ae9b16d2f641"
* status = #final
// * category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* category = $loinc#26436-6	"Laboratory studies (set)"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:2ae95a5c-9094-41a3-a437-ce6d34c55a54)
* identifier.use = #official
* identifier.value = "urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3"
* code.text = "Coltura e suscettibilità batterica aerobica e anaerobica"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* specimen = Reference(urn:uuid:168d4960-0a0b-43af-8025-180f0965f325)
* result[0] = Reference(Inline-Observation-gram-stain)
* result[+] = Reference(Inline-Observation-aerobic-culture)
* result[+] = Reference(Inline-Observation-anaerobic-culture)

Instance: Inline-Observation-gram-stain
InstanceOf: ObservationGroupingRefertoLabIt
Usage: #inline
Description: "Esempio di Observation: rilevazione della colorazione di gram su campione di sangue."
* id = "333b62b2-47b0-43b5-9745-abec1f0c4656"
* status = #final
* category[laboratory] = $observation-category#laboratory
// * code = $loinc#664-3 
// * code.text = "Gram Stain"
* code = $loinc#26436-6
* code.text = "Esami di laboratorio"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer  = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* hasMember[+] = Reference(Inline-Observation-wbc) 
* hasMember[+] = Reference(Inline-Observation-gs-org1) 
* hasMember[+] = Reference(Inline-Observation-gs-org2) 
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-wbc
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "2b209d21-dc7b-4267-a089-d3b61667945a"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#72163-9 
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = "Non osservati."
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-gs-org1
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "516884c4-8a1f-4e5b-8492-a7dd190f1fb0"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#664-3 
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
// * valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters"
* valueCodeableConcept = $sct#8745002 "Gram-positive bacterium"
* hasMember[+] = Reference(Inline-Observation-gs-org1-quant) 
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-gs-org1-quant
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "9018b020-6e21-4afa-9131-5832132092c1"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Quantità osservata"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueCodeableConcept = $sct#441614007 "Present + out of +++"
* valueCodeableConcept.text = "+"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-gs-org2
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "25c5aa73-387d-4b80-9245-8e1adfa470f5"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#664-3 
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueCodeableConcept = $sct#87172008 "Gram-negative rods"

* hasMember[+] = Reference(Inline-Observation-gs-org2-quant) // Inline-Observation-gs-org2-quant
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-gs-org2-quant
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "f2e48d96-a153-46b3-a15b-58b5aa761853"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code.text = "Quantità osservata"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-aerobic-culture
InstanceOf: ObservationGroupingRefertoLabIt
Usage: #inline
Description: "Esempio di Observation: rilevazione coltura aerobica da campione di sangue."
* id = "297c84f2-28d6-41b5-a270-6f563ef0fdfc"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#18718-7
 //"Coltura Aerobica"
* code.text = "Studi di marcatori cellulari"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* hasMember[+] = Reference(urn:uuid:6b103ad8-1870-45bb-884a-86675ad404f1) // Inline-Observation-org-id1
* hasMember[+] = Reference(urn:uuid:424aba49-cc38-4207-b9a0-c484062ecb26) // Inline-Observation-org-id2
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id1
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "6b103ad8-1870-45bb-884a-86675ad404f1"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#634-6 //"Coltura aerobi Microbiologia Presenza o Identità (episodio)"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* hasMember[+] = Reference(urn:uuid:a99f7742-c77d-4650-918b-1e9a6e28cefd) // Inline-Observation-org-id1-growth
* hasMember[+] = Reference(urn:uuid:31747c3c-0a07-4937-9529-378140609e96) // Inline-Observation-org-id1-susc-panel
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id1-growth
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "a99f7742-c77d-4650-918b-1e9a6e28cefd"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code.text = "Crescita di microrganismi"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id1-susc-panel
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "31747c3c-0a07-4937-9529-378140609e96"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#29576-6 //"Suscettibilità batterica, panel"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* hasMember[+] = Reference(urn:uuid:652d16a5-91d9-40fb-9c5c-3950683e5d9f)
* hasMember[+] = Reference(urn:uuid:ccf32a29-d9f5-435a-9c67-e59d7104adff)
* hasMember[+] = Reference(urn:uuid:60f23552-dfb9-4142-95a2-911a41180c78)
* hasMember[+] = Reference(urn:uuid:848e01c5-1565-4708-92c3-304418a43a40)

* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id1-susc-1
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "652d16a5-91d9-40fb-9c5c-3950683e5d9f"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#18900-1 //"Cefalotina [Suscettibilità agli antibiotici]"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #ug/mL
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id1-susc-2
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "ccf32a29-d9f5-435a-9c67-e59d7104adff"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#20629-2 //"Levofloxacina [Suscettibilità agli antibiotici]"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #ug/mL
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id1-susc-3
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "60f23552-dfb9-4142-95a2-911a41180c78"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#18961-3 //"Oxacillina [Suscettibilità agli antibiotici]"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.value = 0.5
* valueQuantity.code = #ug/mL
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id1-susc-4
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "848e01c5-1565-4708-92c3-304418a43a40"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#19000-9 //"Vancomicina [Suscettibilità agli antibiotici]"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #ug/mL
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id2
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "424aba49-cc38-4207-b9a0-c484062ecb26"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#634-6 //"Coltura aerobi Microbiologia Presenza o Identità (episodio)"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueCodeableConcept = $sct#40886007 "Klebsiella oxytoca"
* hasMember[+] = Reference(urn:uuid:ed8a917b-2e94-4aa9-b824-5dceee2deb90) // Inline-Observation-org-id2-growth
* hasMember[+] = Reference(urn:uuid:4bc004e5-e77b-46c7-b0d5-3dfa127b48b4) // Inline-Observation-org-id2-susc-panel
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id2-growth
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "ed8a917b-2e94-4aa9-b824-5dceee2deb90"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code.text = "Crescita di microrganismi"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueCodeableConcept = $sct#263866000 "Scanty growth"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id2-susc-panel
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "4bc004e5-e77b-46c7-b0d5-3dfa127b48b4"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#29576-6 //"Suscettibilità batterica, panel"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* hasMember[+] = Reference(urn:uuid:4edf70e9-b332-4804-a3bf-5d1c14e9f892)
* hasMember[+] = Reference(urn:uuid:20e0ab9e-2ce4-431a-adfb-6a727bd49355)
* hasMember[+] = Reference(urn:uuid:20e0ab9e-2ce4-431b-adfb-6a727bd49355)
* hasMember[+] = Reference(urn:uuid:f2831756-1436-11ee-be56-0242ac120002)
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id2-susc-1
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "4edf70e9-b332-4804-a3bf-5d1c14e9f892"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#18864-9 //"Ampicillina [Suscettibilità agli antibiotici]"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.value = 16
* valueQuantity.comparator = #>
* valueQuantity.code = #ug/mL
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id2-susc-2
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "20e0ab9e-2ce4-431a-adfb-6a727bd49355"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#18906-8 //"Ciprofloxacina [Suscettibilità agli antibiotici]"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.value = 0.5
* valueQuantity.comparator = #<=
* valueQuantity.code = #ug/mL
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id2-susc-3
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "20e0ab9e-2ce4-431b-adfb-6a727bd49355"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#18928-2 //"Gentamicina [Suscettibilità agli antibiotici]"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.value = 8
* valueQuantity.comparator = #>
* valueQuantity.code = #ug/mL
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-org-id2-susc-4
InstanceOf: ObservationRefertoLabIt
Usage: #inline
* id = "f2831756-1436-11ee-be56-0242ac120002"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#18932-4 //"Imipenem [Suscettibilità agli antibiotici]"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #ug/mL
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)

Instance: Inline-Observation-anaerobic-culture
InstanceOf: ObservationRefertoLabIt
Usage: #inline
Description: "Esempio di Observation: rilevazione coltura anaerobi da campione di sangue."
* id = "e271a348-4f54-4667-86ed-d9ecfb7430f6"
* status = #final
* category[laboratory] = $observation-category#laboratory

* code = $loinc#635-3 //"Batteri , identificato: Coltura anaerobica"
* code.text = "Coltura Anaerobi"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueCodeableConcept = $sct#264868006 "No growth"
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
