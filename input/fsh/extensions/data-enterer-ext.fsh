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
* extension[dataEnterer] obeys practitioner-person-device-rule
* extension[dataEnterer].valueReference ^short = "Compilatore dei dati presenti in Composition."
* extension[tempoCompilazione] ^short = "Data e ora di compilazione dei dati."
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Invariant: practitioner-person-device-rule
Description: "Practitioner-Person-Device rule in DataEnter"
Severity: #error
Expression: "(valueReference.type='Practitioner' and valueReference.reference.exists().not()) or (valueReference.type.exists().not() and (valueReference.reference.contains('PractitionerRole') or valueReference.reference.contains('Device')))"