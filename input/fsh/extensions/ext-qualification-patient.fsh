Alias: $istat-titoloStudio = http://terminology.hl7.it/ValueSet/istat-titoloStudio

Extension: ExtTitoloStudioPaziente
Id: patient-qualification-it
Title: "Titolo di Studio del paziente"
Description: "Estensione per gestire il Titolo di studio del paziente come CodeableConcept."
* ^version = "0.1.1"
* ^publisher = "HL7 Italia"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.it"
* ^jurisdiction = urn:iso:std:iso:3166#IT
* . ^short = "Titolo di Studio del paziente"
* . ^definition = "Estensione per gestire il Titolo di studio del paziente come CodeableConcept."
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from $istat-titoloStudio (example)