Extension:   ExtDataEnterer
Id:          composition-dataenterer-it
Title:       "DataEnterer"
Description: "Persona o dispositivo che trasforma un testo dettato nel documento FHIR."
//-------------------------------------------------------------------------------------------

* extension contains
    dataEnterer 1..1 and
    $ext-dataEnterer-time named tempoCompilazione 0..1
* extension[dataEnterer] only Extension
* extension[dataEnterer] ^short = "Informazioni sulla persona e sull'organizzazione che ha inserito i dati."
* extension[dataEnterer].valueReference 1..
* extension[dataEnterer].valueReference only Reference(PractitionerRoleRL or Person or Practitioner or Device)
* extension[dataEnterer].valueReference ^short = "Compilatore dei dati presenti in Composition."
* extension[tempoCompilazione] MS
* extension[tempoCompilazione] ^short = "Data e ora di compilazione dei dati."
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++