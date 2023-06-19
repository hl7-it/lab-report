Instance: Bundle-Lab-Esempio-2
InstanceOf: Bundle
Title: "DiagnosticReport - Observation - Specimen"
Description: "Esempio di un Report diagnostico per esame del sangue che mette in evidenza i risultati di microbiologia."
Usage: #example

* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-3de9d419d27e"
* type = #transaction
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[+].fullUrl = "/DiagnosticReport" //urn:uuid:56f19992-e73e-45b5-bbdd-6d9aeb60b15a
* entry[=].resource = DiagnosticReport-Lab-Esempio2
* entry[+].fullUrl = "/Observazion/1"
* entry[=].resource = Inline-Observation-org-id2-susc-2
* entry[+].fullUrl = "/Observazion/2"
* entry[=].resource = Inline-Observation-gs-org2
* entry[+].fullUrl = "/Observazion/3"
* entry[=].resource = Inline-Observation-aerobic-culture
* entry[+].fullUrl =  "/Observazion/4"
* entry[=].resource = Inline-Observation-wbc
* entry[+].fullUrl =  "/Observazion/5"
* entry[=].resource = Inline-Observation-gram-stain
* entry[+].fullUrl =  "/Observazion/6"
* entry[=].resource = Inline-Observation-org-id1-susc-panel
* entry[+].fullUrl = "/Observazion/7"
* entry[=].resource = Inline-Observation-org-id2
* entry[+].fullUrl =  "/Observazion/8"
* entry[=].resource = Inline-Observation-org-id2-susc-panel
* entry[+].fullUrl = "/Observazion/9"
* entry[=].resource = Inline-Observation-org-id2-susc-1
* entry[+].fullUrl =  "/Observazion/10"
* entry[=].resource = Inline-Observation-gs-org1
* entry[+].fullUrl = "/Observazion/11"
* entry[=].resource = Inline-Observation-org-id1-susc-3
* entry[+].fullUrl = "/Observazion/12"
* entry[=].resource = Inline-Observation-org-id1-susc-1
* entry[+].fullUrl = "/Observazion/13"
* entry[=].resource = Inline-Observation-org-id1
* entry[+].fullUrl = "/Observazion/14"
* entry[=].resource = Inline-Observation-org-id1-susc-4
* entry[+].fullUrl = "/Observazion/15"
* entry[=].resource = Inline-Observation-gs-org1-quant
* entry[+].fullUrl = "/Observazion/16"
* entry[=].resource = Inline-Observation-org-id1-growth
* entry[+].fullUrl = "/Observazion/17"
* entry[=].resource = Inline-Observation-org-id2-susc-4
* entry[+].fullUrl = "/Observazion/18"
* entry[=].resource = Inline-Observation-org-id1-susc-2
* entry[+].fullUrl = "/Observazion/19"
* entry[=].resource = Inline-Observation-anaerobic-culture
* entry[+].fullUrl = "/Observazion/20"
* entry[=].resource = Inline-Observation-org-id2-growth
* entry[+].fullUrl = "/Observazion/21"
* entry[=].resource = Inline-Observation-gs-org2-quant

Instance: DiagnosticReport-Lab-Esempio2
InstanceOf: diagnosticreport-it-lab
Usage: #inline
Description: "Esempio di un report diagnostico: report di un esame del sangue che mette in evidenza i risultati di microbiologia, con i collegamenti tra risultato - germe - antibiotico."
Title: "DiagnosticReport - Esempio Laboratorio"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code.text = "Coltura e suscettibilità batterica aerobica e anaerobica"
* subject = Reference(Paziente-SSN1)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* specimen = Reference(Specimen-Lab-Esempio)
* result[0] = Reference(Inline-Observation-gram-stain)
* result[+] = Reference(Inline-Observation-aerobic-culture)
* result[+] = Reference(Inline-Observation-anaerobic-culture)

Instance: Inline-Observation-gram-stain
InstanceOf: observation-grouping-it-lab
Usage: #inline
Description: "Esempio di Observation: rilevazione della colorazione di gram su campione di sangue."

* id = "333b62b2-47b0-43b5-9745-abec1f0c4656"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#664-3 "Colorazione di Gram Microbiologia Presenza o Identità Punto nel tempo (episodio)"
* code.text = "Gram Stain"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer  = Reference(PractitionerRole-Lab-Esempio)
// * hasMember[+] = Reference(Observation/2b209d21-dc7b-4267-a089-d3b61667945a) // Inline-Observation-wbc
// * hasMember[+] = Reference(Observation/516884c4-8a1f-4e5b-8492-a7dd190f1fb0) // Inline-Observation-gs-org1
// * hasMember[+] = Reference(Observation/25c5aa73-387d-4b80-9245-8e1adfa470f5) // Inline-Observation-gs-org2
* hasMember[+] = Reference(Inline-Observation-wbc) // Inline-Observation-wbc
* hasMember[+] = Reference(Inline-Observation-gs-org1) // Inline-Observation-gs-org1
* hasMember[+] = Reference(Inline-Observation-gs-org2) // Inline-Observation-gs-org2
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-wbc
InstanceOf: observation-it-lab
Usage: #inline
* id = "2b209d21-dc7b-4267-a089-d3b61667945a"
* status = #final
* category[+] = $observation-category#laboratory
* code = $LOINC#72163-9 "Colorazione di Gram Ematologia (coagulazione) conta differenziale Presenza o Soglia Punto nel tempo (episodio)"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = "Non osservati."
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-gs-org1
InstanceOf: observation-it-lab
Usage: #inline
* id = "516884c4-8a1f-4e5b-8492-a7dd190f1fb0"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#664-3 "Colorazione di Gram Microbiologia Presenza o Identità Punto nel tempo (episodio)"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters"
//* hasMember[+] = Reference(Observation/9018b020-6e21-4afa-9131-5832132092c1) // Inline-Observation-gs-org1-quant
* hasMember[+] = Reference(Inline-Observation-gs-org1-quant) // Inline-Observation-gs-org1-quant
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-gs-org1-quant
InstanceOf: observation-it-lab
Usage: #inline
* id = "9018b020-6e21-4afa-9131-5832132092c1"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Quantità osservata"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#441614007 "Present + out of +++"
* valueCodeableConcept.text = "+"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-gs-org2
InstanceOf: observation-it-lab
Usage: #inline
* id = "25c5aa73-387d-4b80-9245-8e1adfa470f5"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#664-3 "Colorazione di Gram Microbiologia Presenza o Identità Punto nel tempo (episodio)"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#87172008 "Gram-negative rods"
//* hasMember[+] = Reference(Observation/f2e48d96-a153-46b3-a15b-58b5aa761853) // Inline-Observation-gs-org2-quant
* hasMember[+] = Reference(Inline-Observation-gs-org2-quant) // Inline-Observation-gs-org2-quant
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-gs-org2-quant
InstanceOf: observation-it-lab
Usage: #inline
* id = "f2e48d96-a153-46b3-a15b-58b5aa761853"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Quantità osservata"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-aerobic-culture
InstanceOf: observation-grouping-it-lab
Usage: #inline
Description: "Esempio di Observation: rilevazione coltura aerobica da campione di sangue."
* id = "297c84f2-28d6-41b5-a270-6f563ef0fdfc"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#LP6103-8 "Coltura Aerobica"
* code.text = "Coltura Aerobica"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* hasMember[+] = Reference(Observation/6b103ad8-1870-45bb-884a-86675ad404f1) // Inline-Observation-org-id1
* hasMember[+] = Reference(Observation/424aba49-cc38-4207-b9a0-c484062ecb26) // Inline-Observation-org-id2
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id1
InstanceOf: observation-it-lab
Usage: #inline
* id = "6b103ad8-1870-45bb-884a-86675ad404f1"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#634-6 "Coltura aerobi Microbiologia Presenza o Identità (episodio)"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* hasMember[+] = Reference(Observation/a99f7742-c77d-4650-918b-1e9a6e28cefd) // Inline-Observation-org-id1-growth
* hasMember[+] = Reference(Observation/31747c3c-0a07-4937-9529-378140609e96) // Inline-Observation-org-id1-susc-panel
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id1-growth
InstanceOf: observation-it-lab
Usage: #inline
* id = "a99f7742-c77d-4650-918b-1e9a6e28cefd"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Crescita di microrganismi"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id1-susc-panel
InstanceOf: observation-it-lab
Usage: #inline
* id = "31747c3c-0a07-4937-9529-378140609e96"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#29576-6 "Suscettibilità batterica, panel"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* hasMember[+] = Reference(Observation/652d16a5-91d9-40fb-9c5c-3950683e5d9f)
* hasMember[+] = Reference(Observation/ccf32a29-d9f5-435a-9c67-e59d7104adff)
* hasMember[+] = Reference(Observation/60f23552-dfb9-4142-95a2-911a41180c78)
* hasMember[+] = Reference(Observation/848e01c5-1565-4708-92c3-304418a43a40)

* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id1-susc-1
InstanceOf: observation-it-lab
Usage: #inline
* id = "652d16a5-91d9-40fb-9c5c-3950683e5d9f"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#18900-1 "Cefalotina [Suscettibilità agli antibiotici]"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #ug/mL
* valueQuantity.system = "http://unitsofmeasure.org"
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id1-susc-2
InstanceOf: observation-it-lab
Usage: #inline
* id = "ccf32a29-d9f5-435a-9c67-e59d7104adff"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#20629-2 "Levofloxacina [Suscettibilità agli antibiotici]"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #ug/mL
* valueQuantity.system = "http://unitsofmeasure.org"
* interpretation = $obs-interpretation#R "Resistant"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id1-susc-3
InstanceOf: observation-it-lab
Usage: #inline
* id = "60f23552-dfb9-4142-95a2-911a41180c78"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#18961-3 "Oxacillina [Suscettibilità agli antibiotici]"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.value = 0.5
* valueQuantity.code = #ug/mL
* valueQuantity.system = "http://unitsofmeasure.org"
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id1-susc-4
InstanceOf: observation-it-lab
Usage: #inline
* id = "848e01c5-1565-4708-92c3-304418a43a40"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#19000-9 "Vancomicina [Suscettibilità agli antibiotici]"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #ug/mL
* valueQuantity.system = "http://unitsofmeasure.org"
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id2
InstanceOf: observation-it-lab
Usage: #inline
* id = "424aba49-cc38-4207-b9a0-c484062ecb26"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#634-6 "Coltura aerobi Microbiologia Presenza o Identità (episodio)"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#40886007 "Klebsiella oxytoca"
* hasMember[+] = Reference(Observation/ed8a917b-2e94-4aa9-b824-5dceee2deb90) // Inline-Observation-org-id2-growth
* hasMember[+] = Reference(Observation/4bc004e5-e77b-46c7-b0d5-3dfa127b48b4) // Inline-Observation-org-id2-susc-panel
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id2-growth
InstanceOf: observation-it-lab
Usage: #inline
* id = "ed8a917b-2e94-4aa9-b824-5dceee2deb90"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Crescita di microrganismi"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#263866000 "Scanty growth"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id2-susc-panel
InstanceOf: observation-it-lab
Usage: #inline
* id = "4bc004e5-e77b-46c7-b0d5-3dfa127b48b4"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#29576-6 "Suscettibilità batterica, panel"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)

* hasMember[+] = Reference(Observation/4edf70e9-b332-4804-a3bf-5d1c14e9f892)
* hasMember[+] = Reference(Observation/20e0ab9e-2ce4-431a-adfb-6a727bd49355)
* hasMember[+] = Reference(Observation/33db08be-9853-4027-ba51-ce646bea8a76)
* hasMember[+] = Reference(Observation/b4502905-747f-4f96-bfe0-05cc958e6510)

* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id2-susc-1
InstanceOf: observation-it-lab
Usage: #inline
* id = "4edf70e9-b332-4804-a3bf-5d1c14e9f892"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#18864-9 "Ampicillina [Suscettibilità agli antibiotici]"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.value = 16
* valueQuantity.comparator = #>
* valueQuantity.code = #ug/mL
* valueQuantity.system = "http://unitsofmeasure.org"
* interpretation = $obs-interpretation#R "Resistant"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id2-susc-2
InstanceOf: observation-it-lab
Usage: #inline
* id = "20e0ab9e-2ce4-431a-adfb-6a727bd49355"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#18906-8 "Ciprofloxacina [Suscettibilità agli antibiotici]"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.value = 0.5
* valueQuantity.comparator = #<=
* valueQuantity.code = #ug/mL
* valueQuantity.system = "http://unitsofmeasure.org"
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id2-susc-3
InstanceOf: observation-it-lab
Usage: #inline
* id = "33db08be-9853-4027-ba51-ce646bea8a76"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#18928-2 "Gentamicina [Suscettibilità agli antibiotici]"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.value = 8
* valueQuantity.comparator = #>
* valueQuantity.code = #ug/mL
* valueQuantity.system = "http://unitsofmeasure.org"
* interpretation = $obs-interpretation#R "Resistant"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-org-id2-susc-4
InstanceOf: observation-it-lab
Usage: #inline
* id = "b4502905-747f-4f96-bfe0-05cc958e6510"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#18932-4 "Imipenem [Suscettibilità agli antibiotici]"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #ug/mL
* valueQuantity.system = "http://unitsofmeasure.org"
* interpretation = $obs-interpretation#S "Susceptible"
* encounter = Reference(Encounter-Lab-Esempio)

Instance: Inline-Observation-anaerobic-culture
InstanceOf: observation-it-lab
Usage: #inline
Description: "Esempio di Observation: rilevazione coltura anaerobi da campione di sangue."
* id = "e271a348-4f54-4667-86ed-d9ecfb7430f6"
* status = #final
* category[esame-laboratorio] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $LOINC#635-3 "Batteri , identificato: Coltura anaerobica"
* code.text = "Coltura Anaerobi"
* subject = Reference(Paziente-SSN)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueCodeableConcept = $sct#264868006 "No growth"
* encounter = Reference(Encounter-Lab-Esempio)
