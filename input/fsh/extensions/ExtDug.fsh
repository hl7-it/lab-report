Extension: ExtDug
Id: address-dug
Title: "DUG (Denominazione Urbanistica Generica)"
Description: "Denominazione Urbanistica Ufficiale"
* ^version = "0.0.1"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Address.line"
* value[x] only CodeableConcept
* value[x] from istat-dug (extensible)