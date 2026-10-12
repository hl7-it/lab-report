ValueSet: VsMinisteroSaluteAsl
Id: minsan-asl
Title: "MDS - ASL"
Description: "MDS - ASL"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^status = #active
* include codes from system $cs-asl


ValueSet: VsTipoCampione
Id: tipo-campione
Title: "Tipo Campione"
Description: "Tipo Campione"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^status = #active
* include codes from system http://terminology.hl7.org/CodeSystem/v3-SpecimenType

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsCnd
Id: vs-cnd
Title: "CND - Classificazione Nazionale dei Dispositivi medici"
Description: "Sistema di codifica CND (Classificazione Nazionale dei Dispositivi Medici). Questo CodeSystem è dichiarato esclusivamente a fini di interoperabilità e non include i concetti. Per la classificazione ufficiale si rimanda alla fonte istituzionale del Ministero della Salute."
* ^experimental = false
* ^identifier.system = "urn:ietf:rfc:3986"
* include codes from system $cs-cnd