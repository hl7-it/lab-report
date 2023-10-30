Extension:   ExtDataEntererTIME
Id:          dataEnterer-time
Title:       "TempoCompilazione"
Description: "Riferimento temporale."
//------------------------------------------------------------------------------------------- 
* ^url = "http://hl7.it/fhir/StructureDefinition/dataEnterer-time"
* ^context.type = #element
* ^context.expression = "Composition.extension"
* value[x] only dateTime 
* valueDateTime ^short = "Data e ora di compilazione."