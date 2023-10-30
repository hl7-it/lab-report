Extension:   ExtDataEnterer
Id:          composition-dataenterer-it
Title:       "DataEnterer"
Description: "Persona o dispositivo che trasforma un testo dettato nel documento FHIR."
//-------------------------------------------------------------------------------------------
* ^url = "http://hl7.it/fhir/StructureDefinition/composition-dataenterer-it"
* ^context.type = #element
* ^context.expression = "Composition"
* extension contains
    dataEnterer 1..1 and
    $ext-dataEnterer-time named tempoCompilazione 0..1
* extension[dataEnterer] only Extension
* extension[dataEnterer] ^short = "Informazioni sulla persona e sull'organizzazione che ha inserito i dati."
* extension[dataEnterer].valueReference 1..
* extension[dataEnterer].valueReference only Reference(practitioner-it-lab or practitionerrole-it-lab or Device)
* extension[dataEnterer].valueReference ^short = "Compilatore dei dati presenti in Composition."
* extension[tempoCompilazione] ^short = "Data e ora di compilazione dei dati."
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
