Extension: OfficialAddress
Id: address-official
Title: "Official Address"
Description: "Definizione dell'indirizzo inteso come indirizzo 'ufficiale' di quella persona. Il significato di indirizzo 'ufficiale' dipende dal Paese. Questa estensione consente di specificare se questo indirizzo è o non è l'indirizzo ufficiale, oppure di indicare che si tratta dell'indirizzo ufficiale di quel Paese."
//------------------------------------------------------------------------------------------- 
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Health Level Seven International"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fiwg"
* ^copyright = "CC0"
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "Indirizzo Ufficiale"
* url = "http://hl7.it/fhir/lab-report/StructureDefinition/address-official" (exactly)
* value[x] 1..1
* value[x] only boolean or CodeableConcept
* value[x] ^meaningWhenMissing = "Attenzione: la presenza dell'estensione garantisce l'ufficialità dell'indirizzo; l'assenza comunque non deve implica che l'indirizzo non sia ufficiale."