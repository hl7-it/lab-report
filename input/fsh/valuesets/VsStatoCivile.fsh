ValueSet: VsStatoCivile
Id: statoCivile
Title: "Stato Civile"
Description: "Questo value set definisce una serie di codici per rappresentare lo stato civile di una persona. Specializza ed estende il value set http://hl7.org/fhir/ValueSet/marital-status"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Italia"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.it/fhir"
* $v3-MaritalStatus#D "Divorziato/a"
* $v3-MaritalStatus#M "Coniugato/a"
* $v3-MaritalStatus#S "Celibe/nubile"
* $v3-MaritalStatus#W "Vedovo/a"
* $v3-MaritalStatus#L "Separato/a Legalmente"
* $v3-MaritalStatus#A "Annullato"
* $v3-NullFlavor#UNK "Sconosciuto"
* CsIstatStatoCivile#6 "Unito civilmente"
* CsIstatStatoCivile#7 "Stato libero a seguito di decesso della parte unita civilmente"
* CsIstatStatoCivile#8 "Stato libero a seguito di scioglimento dell'unione"