Extension: OfficialAddress
Id: address-official
Title: "Official Address"
Description: "Definizione dell'indirizzo inteso come indirizzo 'ufficiale' di quella persona. Il significato di indirizzo 'ufficiale' dipende dal Paese. Questa estensione consente di specificare se questo indirizzo è o non è l'indirizzo ufficiale, oppure di indicare che si tratta dell'indirizzo ufficiale di quel Paese."
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Health Level Seven International"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fiwg"
* ^copyright = "CC0"
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "Official Address"
* . ^definition = "This extension allows to specify if this address is or it is not the official address, or to indicate that this is the official address for that country (true assumed)."
* url = "http://hl7.it/fhir/lab-report/StructureDefinition/address-official" (exactly)
* value[x] 1..1
* value[x] only boolean or CodeableConcept
* value[x] ^meaningWhenMissing = "Nothing can be inferred when this extension is missing. I.e. the absence of this extension shall not be interpreted as non-official address."