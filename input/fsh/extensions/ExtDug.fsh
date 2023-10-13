Extension: ExtDug
Id: address-dug
Title: "DUG (Denominazione Urbanistica Generica)"
Description: "Denominazione Urbanistica Ufficiale."
* ^version = "0.0.1"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Address.line"
* ^url = "http://hl7.it/fhir/StructureDefinition/address-dug"
* value[x] only CodeableConcept
* value[x] from istat-dug (extensible)
