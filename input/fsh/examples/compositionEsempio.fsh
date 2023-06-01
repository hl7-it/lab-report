Instance: Composition-Lab-Esempio
InstanceOf: composition-it-lab
Usage: #example
Description: "Esempio di una Composition: descrizione header e struttura body del referto."
// *text.div = """<div xmlns="http://www.w3.org/1999/xhtml" xml:lang="IT-it" lang="IT-it"><p><b>Generated Narrative: Composition</b><a name="2ae95a5c-9094-41a3-a437-ce6d34c55a54"> </a></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource Composition &quot;2ae95a5c-9094-41a3-a437-ce6d34c55a54&quot;  (Language &quot;IT-it&quot;) </p><p style="margin-bottom: 0px">Profile: <a href="StructureDefinition-composition-it-lab.html">Composition - Lab Report</a></p></div><blockquote><p><b>subject</b>: <a href="#Patient_Paziente-SSN">See above (Patient/Paziente-SSN)</a></p><p><b>DataEnterer</b></p><blockquote><p><b>url</b></p><code>dataEnterer</code></blockquote><p><b>value</b>: <a href="#PractitionerRole_dc5842a1-83b6-43c7-b063-75ae989b803c">See above (PractitionerRole/dc5842a1-83b6-43c7-b063-75ae989b803c)</a></p><blockquote><p><b>url</b></p><a href="StructureDefinition-dataEnterer-time.html">TempoCompilazione</a></blockquote><p><b>value</b>: 2023-02-25 10:45:00+0100</p></blockquote><p><b>identifier</b>: id: urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3 (use: OFFICIAL)</p><p><b>status</b>: final</p><p><b>type</b>: Referto di laboratorio <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (<a href="https://loinc.org/">LOINC</a>#11502-2)</span></p><p><b>encounter</b>: <a href="#Encounter_7b06368c-7089-4f66-acc8-29e1fcbd31f6">See above (Encounter/7b06368c-7089-4f66-acc8-29e1fcbd31f6)</a></p><p><b>date</b>: 2023-03-28</p><p><b>author</b>: <a href="#PractitionerRole_dc5842a1-83b6-43c7-b063-75ae989b803c">See above (PractitionerRole/dc5842a1-83b6-43c7-b063-75ae989b803c)</a></p><p><b>title</b>: Referto di Laboratorio</p><p><b>confidentiality</b>: N</p><h3>Attesters</h3><table class="grid"><tr><td>-</td><td><b>Mode</b></td><td><b>Time</b></td><td><b>Party</b></td></tr><tr><td>*</td><td>legal</td><td>2023-02-25 12:45:00+0100</td><td><a href="#PractitionerRole_dc5842a1-83b6-43c7-b063-75ae989b803c">See above (PractitionerRole/dc5842a1-83b6-43c7-b063-75ae989b803c)</a></td></tr></table><p><b>custodian</b>: <a href="#Organization_Organization-Lab-Esempio">See above (Organization/Organization-Lab-Esempio)</a></p></div>"""
* id = "2ae95a5c-9094-41a3-a437-ce6d34c55a54"
* extension[dataEnterer].extension[dataEnterer].valueReference = Reference(PractitionerRole-Lab-Esempio)
* extension[dataEnterer].extension[tempoCompilazione].valueDateTime = "2023-02-25T10:45:00+01:00"

* language = #IT-it
* identifier.use = #official
* identifier.value = "urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3"

* status = #final

* type.coding.system = "http://loinc.org" 
* type.coding.code = #11502-2
* type.coding.display = "Referto di laboratorio" 

* subject = Reference(Paziente-SSN)
//"Patient/1"

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
* section.section.entry = Reference(Observation-Lab-Esempio)
