//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsIcd9cm
Id: who-icd9cm
Title: "WHO ICD-9-CM"
Description: "WHO ICD-9-CM"
* ^experimental = false
//-------------------------------------------------------------------------------------------
* codes from system $icd-9-cm

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ValueSet: VsNotaAifa
// Id: aifa-nota
// Title: "AIFA Note"
// Description: "AIFA - Indicazioni terapeutiche per un determinato farmaco rimborsabile dal Servizio Sanitario Nazionale"
// //-------------------------------------------------------------------------------------------
// * ^experimental = false
// * codes from system $aifa-nota

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsAic
Id: aifa-aic
Title: "AIFA AIC"
Description: "AIFA - Codice identificativo dei medicinali ad uso umano"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* codes from system $aic

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ValueSet: VsAtc
// Id: who-atc
// Title: "WHO ATC"
// Description: "Sistema di classificazione anatomico, terapeutico e chimico per la classificazione sistematica dei farmaci"
// //-------------------------------------------------------------------------------------------
// * insert ATCCopyrightForVS
// * codes from system $atc

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ValueSet: VsGruppoEquivalenza
// Id: aifa-ge
// Title: "AIFA Gruppo di Equivalenza"
// Description: "AIFA Gruppo di Equivalenza"
// -------------------------------------------------------------------------------------------
// * ^experimental = false

// * codes from system $gruppo-equivalenza

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ValueSet: VsStrutturePubbliche
// Id: strutturePubbliche
// Title: "MDS - Codici strutture di ricovero pubbliche"
// Description: "MDS - Codici strutture di ricovero pubbliche"
// //-------------------------------------------------------------------------------------------
// * ^experimental = false
// * include codes from system $strutturePub where tipoStruttura = #0


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsEHICPersonalIdOid
Id: oid-ehicPersonalId
Title: "EHIC Personal ID (system IDs - oid)"
Description: "Sistema di identificazione delle persone fisiche"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $oid#2.16.840.1.113883.2.9.4.3.2 "Codice Fiscale Italiano"
* $oid#2.16.840.1.113883.2.9.4.3.7 "Numero di Tessera TEAM estera"
* $oid#2.16.840.1.113883.2.9.4.3.3 "Numero di identificazione personale TEAM"
* $oid#2.16.840.1.113883.2.9.4.3.18 "Europei Non Iscritti al SSN"
* $oid#2.16.840.1.113883.2.9.4.3.17 "Stranieri Temporaneamente Presenti"
* $oid#2.16.840.1.113883.2.9.4.3.15 "Codice Anagrafica Nazionale degli Assisti"



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsEHICCountryCodes
Id: iso-ehicCountryCode
Title: "ISO 3166 - EHIC Country Codes"
Description: "Codifica geografica standardizzata"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^copyright = "ISO Maintains the copyright on the country codes, and controls it's use carefully. For further details, see the ISO 3166 Home Page"
* $iso3166#AT "Austria"
* $iso3166#BE "Belgium"
* $iso3166#BG "Bulgaria"
* $iso3166#HR "Croatia"
* $iso3166#CY "Cyprus"
* $iso3166#CZ "Czech Republic"
* $iso3166#DK "Denmark"
* $iso3166#EE "Estonia"
* $iso3166#FI "Finland"
* $iso3166#FR "France"
* $iso3166#GR "Greece"
* $iso3166#DE "Germany"
* $iso3166#HU "Hungary"
* $iso3166#IE "Ireland"
* $iso3166#IT "Italy" 
* $iso3166#LV "Latvia"
* $iso3166#LT "Lithuania" 
* $iso3166#LU "Luxembourg" 
* $iso3166#MT "Malta" 
* $iso3166#NL "Netherlands"
* $iso3166#PL "Poland"
* $iso3166#PT "Portugal" 
* $iso3166#RO "Romania"
* $iso3166#SK "Slovakia" 
* $iso3166#SI "Slovenia"
* $iso3166#ES "Spain" 
* $iso3166#SE "Sweden"
* $iso3166#IS "Iceland"
* $iso3166#LI "Liechtenstein"
* $iso3166#NO "Norway"
* $iso3166#CH "Switzerland"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsMinsanregione
Id: minsan-regione
Title: "MDS - Codici Regionali"
Description: "MDS - Codici Regionali usati nei file FLS11. La regione Trentino Alto-Adige è rappresentata dalle province autonome di cui è composta."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* codes from system $MinSanRegioni



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsTipoCertificatore
Id: tipoCertificatore
Title: "Tipo certificatore"
Description: "Tipo di Entità (organizzazione o persona) che ha certificato un certo record"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $CS_tipoEntita#gov
* $CS_tipoEntita#mef
* $CS_tipoEntita#regione
* $CS_tipoEntita#comune
* $CS_tipoEntita#as
* $CS_tipoEntita#asl
* $CS_tipoEntita#ric-hsp
* $CS_tipoEntita#ao
* $CS_tipoEntita#dist-san
* $V3RoleCode#subject

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsTipoOrganizzazione
Id: tipoOrganizzazione
Title: "Tipo organizzazione (esempio)"
Description: "Tipo di organizzazione: value set di esempio"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* codes from system $CS_tipoEntita

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsTipoOrgSocioSanitaria
Id: tipoOrgSocioSanitaria
Title: "Tipo organizzazione socio-sanitaria"
Description: "Tipo di organizzazione socio-sanitaria"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $CS_tipoEntita#as
* $CS_tipoEntita#asl
* $CS_tipoEntita#ric-hsp
* $CS_tipoEntita#ao
* $CS_tipoEntita#aou
* $CS_tipoEntita#irccs
* $CS_tipoEntita#irccs-pub
* $CS_tipoEntita#irccs-priv
* $CS_tipoEntita#irccs-fond
* $CS_tipoEntita#ente-ric-hsp
* $CS_tipoEntita#osp-dir
* $CS_tipoEntita#pol-univ
* $CS_tipoEntita#cc-priv
* $CS_tipoEntita#cc-priv-a
* $CS_tipoEntita#cc-priv-na
* $CS_tipoEntita#dist-san

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsMmgPlsRoles
Id: mmgOrPls
Title: "Tipo medico di famiglia"
Description: "Tipo medico di famiglia: Medico Medicina Generale o Pediatra di Libera Scelta"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $it-V3RoleCode#MMG  "medico di medicina generale"
* $it-V3RoleCode#PLS  "pediatra di libera scelta"

//=========================
// ValueSet: VsUriIdAslRegione
// Id: uri-idAslRegione
// Title: "Identificativi regionali per ASL (3 char)"
// Description: "Identificativi regionali per ASL a 3 caratteri, come da file ministeriale"
// * $uri#http://hl7.it/sid/abruzzo/asl
// * $uri#http://hl7.it/sid/basilicata/asl
// * $uri#http://hl7.it/sid/calabria/asl
// * $uri#http://hl7.it/sid/campania/asl
// * $uri#http://hl7.it/sid/rer/asl
// * $uri#http://hl7.it/sid/fvg/asl
// * $uri#http://hl7.it/sid/lazio/asl
// * $uri#http://hl7.it/sid/liguria/asl
// * $uri#http://hl7.it/sid/lombardia/asl
// * $uri#http://hl7.it/sid/marche/asl
// * $uri#http://hl7.it/sid/molise/asl
// * $uri#http://hl7.it/sid/piemonte/asl
// * $uri#http://hl7.it/sid/puglia/asl
// * $uri#http://hl7.it/sid/sardegna/asl
// * $uri#http://hl7.it/sid/sicilia/asl
// * $uri#http://hl7.it/sid/toscana/asl
// * $uri#http://hl7.it/sid/taa/asl
// * $uri#http://hl7.it/sid/apb/asl
// * $uri#http://hl7.it/sid/pat/asl
// * $uri#http://hl7.it/sid/umbria/asl
// * $uri#http://hl7.it/sid/vda/asl
// * $uri#http://hl7.it/sid/veneto/asl

Alias: VsStatoEsenzione = http://hl7.it/fhir/ValueSet/statoEsenzione

/*============= begin
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsStatoEsenzione
Id: statoEsenzione
Title: "Stato Esenzioni"
Description: "Value Set basato sul vocabolario HL7 V3 ActStatus che descrive lo stato delle esenzioni. Questo value set è adottato da HL7 CDA R2 IG 'DOCUMENTO DI ESENZIONE'"
* ^experimental = false
//-------------------------------------------------------------------------------------------
* $V3ActStatus#active "attivo" // "Esenzione in corso di validità"
* $V3ActStatus#suspended  "sospeso" // "Esenzione momentaneamente sospesa (ad esempio in attesa del rinnovo di un’iscrizione temporanea)"
* $V3ActStatus#aborted  "abortito" // "Esenzione mai stata valida (ad esempio è stata assegnata per errore e il documento corrispondente era già stato prodotto in stato active)"
* $V3ActStatus#completed "completato" // "Esenzione non più in corso di validità"
* V3NullFlavor#UNK "sconosciuto"

============== END */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsIstatTitoloStudio
Id: istat-titoloStudio
Title: "ISTAT - Titolo Studio"
Description: "ISTAT - Titolo Studio"
* ^experimental = false

//-------------------------------------------------------------------------------------------
* codes from system $CS_TitoloStudioIstat

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsIstatProfessionePaziente
Id: istat-professione
Title: "ISTAT - Professioni"
Description: "ISTAT - Professioni"
* ^experimental = false

//-------------------------------------------------------------------------------------------
* codes from system $CS_ProfessioniIstat


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsIstatDug
Id: istat-dug
Title: "ISTAT - DUG"
Description: "ISTAT - Registro delle Denominazioni Urbanistiche Generiche (DUG)"
* ^experimental = false
* codes from system http://hl7.it/fhir/lab-report/CodeSystem/dug //http://registry.geodati.gov.it/dug

//=========================
ValueSet: VsUriIdAslRegione
Id: uri-idAslRegione
Title: "Identificativi regionali per ASL (3 char)"
Description: "Identificativi regionali per ASL a 3 caratteri, come da file ministeriale"
* ^experimental = false
* $uri#http://hl7.it/sid/abruzzo/asl
* $uri#http://hl7.it/sid/basilicata/asl
* $uri#http://hl7.it/sid/calabria/asl
* $uri#http://hl7.it/sid/campania/asl
* $uri#http://hl7.it/sid/rer/asl
* $uri#http://hl7.it/sid/fvg/asl
* $uri#http://hl7.it/sid/lazio/asl
* $uri#http://hl7.it/sid/liguria/asl
* $uri#http://hl7.it/sid/lombardia/asl
* $uri#http://hl7.it/sid/marche/asl
* $uri#http://hl7.it/sid/molise/asl
* $uri#http://hl7.it/sid/piemonte/asl
* $uri#http://hl7.it/sid/puglia/asl
* $uri#http://hl7.it/sid/sardegna/asl
* $uri#http://hl7.it/sid/sicilia/asl
* $uri#http://hl7.it/sid/toscana/asl
* $uri#http://hl7.it/sid/taa/asl
* $uri#http://hl7.it/sid/apb/asl
* $uri#http://hl7.it/sid/pat/asl
* $uri#http://hl7.it/sid/umbria/asl
* $uri#http://hl7.it/sid/vda/asl
* $uri#http://hl7.it/sid/veneto/asl

//=========================
// ValueSet: VsUriIdRegionali
// Id: uri-idRegionali
// Title: "Identificativi per anagrafi regionali"
// Description: "Identificativi per anagrafi regionali"
// * ^experimental = false
// * ^copyright = "Copyright (C) The Internet Society (2005)"
// * $uri#http://hl7.it/sid/lazio/asur  "Anagrafe Sanitaria Unica Regionale - Lazio"
// * $uri#http://hl7.it/sid/piemonte/aura  "Archivio Unico Regionale degli Assistiti - Piemonte"
// * $uri#urn:oid:2.16.840.1.113883.2.9.2.20.4.1 "MPI (angrafe unica aziendale) - Valle d'Aosta"
// * $uri#urn:oid:2.16.840.1.113883.2.9.2.50.4.1 "ANAGRAFE UNICA REGIONALE - Veneto"
// * $uri#urn:oid:2.16.840.1.113883.2.9.2.60.4.1 "Anagrafe Unica - Friuli-Venezia Giulia"
// * $uri#http://www.regione.toscana.it/sanita/cur "Centrale Unica Regionale - Toscana"
//=========================
// ValueSet: VsUriIdStp
// Id: uri-idStp
// Title: "Identificativi per codici STP regionali"
// Description: "Identificativi per codici STP regionali."
// * ^experimental = false
// * ^copyright = "Copyright (C) The Internet Society (2005)"
// * $uri#http://hl7.it/sid/stp "Codici STP"
// * $uri#http://hl7.it/sid/lazio/stp "Codici STP - Lazio"
// * $uri#http://hl7.it/sid/piemonte/stp  "Codici STP - Piemonte"
// * $uri#http://hl7.it/sid/vallee/stp "Codici STP - Valle d'Aosta"
// * $uri#urn:oid:2.16.840.1.113883.2.9.2.50.4.1.1 "Codici STP - Veneto"


//=========================
// ValueSet: UriIdEni
// Id: uri-idEni
// Title: "Identificativi per codici ENI regionali"
// Description: "Identificativi per codici ENI regionali."
// * ^experimental = false
// * ^copyright = "Copyright (C) The Internet Society (2005)"
// * $uri#http://hl7.it/sid/eni "Codici ENI"
// * $uri#http://hl7.it/sid/lazio/eni "Codici ENI - Lazio"
// * $uri#http://hl7.it/sid/piemonte/eni  "Codici ENI - Piemonte"
// * $uri#http://hl7.it/sid/vallee/eni "Codici ENI - Valle d'Aosta"
// * $uri#urn:oid:2.16.840.1.113883.2.9.2.50.4.1.4 "Codici ENI - Veneto"
//=========================


//----------------------------------------
ValueSet: VsMinisteroSaluteIdStrutture
Id: minsan-idStrutture
Title: "MDS - ID Strutture Ricovero"
Description: "MDS - Identificativi Strutture Ricovero (HSP11)"
* ^experimental = false
//----------------------------------------
* codes from system $UriHsp


//----------------------------------------
ValueSet: VsMinisteroSaluteIdAziendeOspedaliere
Id: minsan-idAziendeOspedaliere
Title: "MDS - ID Aziende Ospedaliere"
Description: "MDS - Aziende Ospedaliere (HSP11)"
* ^experimental = false
//----------------------------------------
* $UriHsp#010906 "AZ. OSPEDAL. S. CROCE E CARLE"
* $UriHsp#010907 "AZ. SS.ANTONIO E BIAGIO E C.ARRIGO"
* $UriHsp#010908 "OSPEDALE MAURIZIANO UMBERTO I - TORINO"
* $UriHsp#030701 "ASST GRANDE OSPEDALE METROPOLITANO NIGUA"
* $UriHsp#030702 "ASST SANTI PAOLO E CARLO"
* $UriHsp#030703 "ASST FATEBENEFRATELLI SACCO"
* $UriHsp#030704 "ASST SPEC.ORT.TRAUMATOLOGICO G.PINI/CTO"
* $UriHsp#030705 "ASST OVEST MILANESE"
* $UriHsp#030706 "ASST RHODENSE"
* $UriHsp#030707 "ASST NORD MILANO"
* $UriHsp#030708 "ASST MELEGNANO E DELLA MARTESANA"
* $UriHsp#030709 "ASST DI LODI"
* $UriHsp#030710 "ASST DEI SETTE LAGHI"
* $UriHsp#030711 "ASST DELLA VALLE OLONA"
* $UriHsp#030712 "ASST LARIANA"
* $UriHsp#030713 "ASST DELLA VALTELLINA E DELL'ALTO LARIO"
* $UriHsp#030714 "ASST DELLA VALCAMONICA"
* $UriHsp#030715 "ASST DI LECCO"
* $UriHsp#030717 "ASST DI VIMERCATE"
* $UriHsp#030718 "ASST PAPA GIOVANNI XXIII"
* $UriHsp#030719 "ASST DI BERGAMO OVEST"
* $UriHsp#030720 "ASST DI BERGAMO EST"
* $UriHsp#030721 "ASST DEGLI SPEDALI CIVILI DI BRESCIA"
* $UriHsp#030722 "ASST DELLA FRANCIACORTA"
* $UriHsp#030723 "ASST DEL GARDA"
* $UriHsp#030724 "ASST DI CREMONA"
* $UriHsp#030725 "ASST DI MANTOVA"
* $UriHsp#030726 "ASST DI CREMA"
* $UriHsp#030727 "ASST DI PAVIA"
* $UriHsp#050901 "AZIENDA OSPEDALIERA DI PADOVA"
* $UriHsp#100901 "AZIENDA OSPEDALIERA DI PERUGIA"
* $UriHsp#100902 "AZIENDA OSPEDALIERA 'S. MARIA' - TERNI"
* $UriHsp#110905 "A.O.U.OSPEDALI RIUNITI - ANCONA"
* $UriHsp#120901 "AZ.OSP.SAN CAMILLO-FORLANINI"
* $UriHsp#120902 "AZIENDA OSP. S.GIOVANNI/ADDOLORATA ROMA"
* $UriHsp#150901 "AZIENDA OSPEDALIERA 'A. CARDARELLI'"
* $UriHsp#150902 "A.O.SANTOBONO-PAUSILIPON"
* $UriHsp#150903 "A.zienda Ospedaliera dei Colli"
* $UriHsp#150905 "AZIENDA OSPEDALIERA S.G. MOSCATI"
* $UriHsp#150906 "AZIENDA OSPEDALE `G.RUMMO`"
* $UriHsp#150907 "A.O. SANT'ANNA E SAN SEBASTIANO  CASERTA"
* $UriHsp#170901 "AZIENDA OSPEDALIERA REGIONALE 'S. CARLO'"
* $UriHsp#180912 "AZIENDA OSPEDALIERA DI COSENZA"
* $UriHsp#180913 "Azienda Ospedaliera Pugliese De Lellis"
* $UriHsp#180914 "A.O. MATER DOMINI CATANZARO"
* $UriHsp#180915 "Azienda Osp.  Bianchi-Melacrino-Morelli"
* $UriHsp#190921 "A.O. per l'Emergenza Cannizzaro"
* $UriHsp#190922 "ARNAS GARIBALDI"
* $UriHsp#190924 "aorpapardopiemonte"
* $UriHsp#190926 "A.O.R Villa Sofia Cervello"
* $UriHsp#190927 "Azienda Ospedaliera 'Civico-Di Cristina-"
* $UriHsp#200904 "AZIENDA OSPEDALIERA G.BROTZU"


//----------------------------------------
// ValueSet: VsMinisteroSaluteIdAOU
// Id: minsan-idAou
// Title: "MDS - ID Aziende Ospedaliere Universitarie"
// Description: "MDS - Azienda Ospedaliera integrata con l'Università (HSP11)"
// //----------------------------------------
// // * codes from system $UriHsp where type = "2.2"
// * ^experimental = false
// * $UriHsp#010904 "AZIENDA OSPEDALIERO UNIVERSITARIA S.LUIG"
// * $UriHsp#010905 "AZIENDA OSPED. NOVARA E GALLIATE"
// * $UriHsp#010909 "AOU CITTA' DELLA SALUTE E DELLA SCIENZA"
// * $UriHsp#050912 "AZ.OSP.UNIVERSITARIA INTEGRATA VERONA"
// * $UriHsp#080902 "AZIENDA OSPEDALIERO-UNIVERSITARIA DI PAR"
// * $UriHsp#080904 "AZIENDA OSPEDALIERO-UNIVERSITARIA DI MOD"
// * $UriHsp#080908 "AZIENDA OSPEDALIERO-UNIVERSITARIA DI BOL"
// * $UriHsp#080909 "AZIENDA OSPEDALIERO-UNIVERSITARIA DI FER"
// * $UriHsp#090901 "AZIENDA OSPEDALIERO-UNIVERSITARIA PISANA"
// * $UriHsp#090902 "AZIENDA OSPEDALIERA UNIVERSITARIA SENESE"
// * $UriHsp#090903 "AZ. OSPEDALIERO - UNIVERSITARIA CAREGGI"
// * $UriHsp#090904 "AZIENDA OSPEDALIERA MEYER"
// * $UriHsp#120919 "AZIENDA OSPEDALIERA SANT`ANDREA"
// * $UriHsp#120920 "AZ. OSP. UNIV. POLICLINICO TOR VERGATA"
// * $UriHsp#150904 "A.O.OO.RR.S.GIOVANNI DI DIO E RUGGI D`AR"
// * $UriHsp#160910 "AO UNIV. 'OO RR FOGGIA'"


ValueSet: VsIstatStatoCivile
Id: istat-statoCivile-vs
Title: "ISTAT - Stato Civile"
Description: "ISTAT - Stato Civile"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^status = #active
* include codes from  system $statoCivile


//----------------------------------------
ValueSet: VsMinisteroSaluteIdStruttureInterne
Id: minsan-idStruttureInterne
Title: "MDS - ID Strutture Interne di Ricovero"
Description: "MDS - Identificativi Strutture Interne di Ricovero"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^status = #active

* $cs_strttureInterne#010030.01 "OSPEDALE CIVILE E.AGNELLI"
* $cs_strttureInterne#010030.03 "OSPEDALE DI POMARETTO"
* $cs_strttureInterne#010079.01 "OSPEDALE DEGLI INFERMI"
* $cs_strttureInterne#010079.02 "OSPEDALE CIVILE DI GIAVENO"
* $cs_strttureInterne#010079.04 "OSPEDALE CIVILE DI SUSA"
* $cs_strttureInterne#010079.05 "OSPEDALE DI VENARIA"
* $cs_strttureInterne#010079.06 "UNITA' AUTONOMA DI DAY SURGERY DI AVIGLI"
* $cs_strttureInterne#010019.01 "PRESIDIO OSPED. RIUNITO SEDE DI CIRIE'"
* $cs_strttureInterne#010019.03 "PRESIDIO OSPED. RIUNITO SEDE DI LANZO"
* $cs_strttureInterne#010023.01 "OSPEDALE CIVILE DI IVREA"
* $cs_strttureInterne#010023.02 "OSPEDALE CIVILE DI CUORGNE'"
* $cs_strttureInterne#010023.04 "SAAPA S.P.A."
* $cs_strttureInterne#010004.01 "OSPEDALE MAGGIORE"
* $cs_strttureInterne#010004.02 "OSPEDALE SANTA CROCE"
* $cs_strttureInterne#010004.03 "OSPEDALE SAN LORENZO"
* $cs_strttureInterne#010004.04 "DAY SURGERY DEL DISTRETTO DI NICHELINO"
* $cs_strttureInterne#010009.01 "OSPEDALE SANT'ANDREA"
* $cs_strttureInterne#010009.02 "OSPEDALE SS.PIETRO E PAOLO"
* $cs_strttureInterne#010005.01 "OSPEDALE SAN BIAGIO"
* $cs_strttureInterne#010005.02 "STABILIMENTO OSPEDALIERO CASTELLI"
* $cs_strttureInterne#010005.03 "C.O.Q. OSPEDALE MADONNA DEL POPOLO"
* $cs_strttureInterne#010124.01 "OSPEDALE DI MONDOVI' CN1"
* $cs_strttureInterne#010124.02 "NUOVO OSPEDALE DI CEVA CN1"
* $cs_strttureInterne#010126.01 "OSP. MAGGIORE SS. ANNUNZIATA SAVIGLIANO"
* $cs_strttureInterne#010126.02 "OSP. CIVILE DI SALUZZO CN1"
* $cs_strttureInterne#010120.01 "OSPEDALE SAN LAZZARO - ALBA"
* $cs_strttureInterne#010120.02 "OSPEDALE SANTO SPIRITO BRA"
* $cs_strttureInterne#010008.01 "PRESIDIO OSP. CARDINAL G. MASSAIA"
* $cs_strttureInterne#010008.02 "PRESIDIO OSPEDALIERO S. SPIRITO-VALLE BE"
* $cs_strttureInterne#010026.01 "OSPEDALE SANTO SPIRITO CASALE"
* $cs_strttureInterne#010026.03 "OSPEDALE SS. ANTONIO E MARGHERITA TORTON"
* $cs_strttureInterne#010026.04 "OSPEDALE SAN GIACOMO NOVI"
* $cs_strttureInterne#010026.05 "OSPEDALE CIVILE ACQUI"
* $cs_strttureInterne#010026.06 "OSPEDALE CIVILE OVADA"
* $cs_strttureInterne#010905.01 "OSP. MAGGIORE DELLA CARITA'"
* $cs_strttureInterne#010905.02 "OSPEDALE SAN ROCCO GALLIATE"
* $cs_strttureInterne#010907.01 "OSP.CIVILE SS.ANTONIO E BIAGIO"
* $cs_strttureInterne#010907.02 "OSP. INFANTILE C.ARRIGO"
* $cs_strttureInterne#010907.03 "CENTRO RIABILITATIVO POLIFUNZIONALE T.BO"
* $cs_strttureInterne#010909.01 "OSPEDALE SAN GIOVANNI BATTISTA MOLINETTE"
* $cs_strttureInterne#010909.02 "OSPEDALE DERMATOLOGICO SAN LAZZARO"
* $cs_strttureInterne#010909.04 "OSPEDALE CENTRO TRAUMATOLOGICO ORTOPEDIC"
* $cs_strttureInterne#010909.05 "ISTITUTO CHIRURGICO ORTOPEDICO REGINA MA"
* $cs_strttureInterne#010909.06 "OSPEDALE OSTETRICO GINECOLOGICO SANT'ANN"
* $cs_strttureInterne#010909.07 "OSPEDALE INFANTANTILE REGINA MARGHERITA"
* $cs_strttureInterne#030281.01 "OSPEDALE DI LEGNANO E CUGGIONO-LEGNANO"
* $cs_strttureInterne#030281.02 "OSPEDALE DI LEGNANO E CUGGIONO-LEGNANO"
* $cs_strttureInterne#030071.01 "OSPEDALE S. MARIA DELLE STELLE MELZO"
* $cs_strttureInterne#030071.02 "OSPEDALE S. MARIA DELLE STELLE MELZO"
* $cs_strttureInterne#030072.01 "OSPEDALE DI  VIZZOLO PREDABISSI"
* $cs_strttureInterne#030072.02 "OSPEDALE DI  VIZZOLO PREDABISSI"
* $cs_strttureInterne#030085.01 "OSPEDALE UBOLDO - CERNUSCO S/NAVIGLIO"
* $cs_strttureInterne#030085.02 "OSPEDALE UBOLDO - CERNUSCO S/NAVIGLIO"
* $cs_strttureInterne#030282.01 "PRESIDIO OSPEDALIERO DEL VERBANO"
* $cs_strttureInterne#030282.02 "PRESIDIO OSPEDALIERO DEL VERBANO"
* $cs_strttureInterne#030901.01 "PRESIDIO OSPEDALIERO DI VARESE"
* $cs_strttureInterne#030901.02 "PRESIDIO OSPEDALIERO DI VARESE"
* $cs_strttureInterne#030901.03 "PRESIDIO OSPEDALIERO DI VARESE"
* $cs_strttureInterne#030274.01 "OSPEDALE VALCAMONICA - ESINE"
* $cs_strttureInterne#030274.02 "OSPEDALE VALCAMONICA - ESINE"
* $cs_strttureInterne#030154.01 "PRESIDIO OSPEDALIERO DI CHIARI"
* $cs_strttureInterne#030154.02 "PRESIDIO OSPEDALIERO DI CHIARI"
* $cs_strttureInterne#030227.01 "PRESIDIO OSPEDALIERO - ASOLA"
* $cs_strttureInterne#030227.02 "PRESIDIO OSPEDALIERO - ASOLA"
* $cs_strttureInterne#030936.01 "IST.AUXOLOGICO ITALIANO-I.S. S.LUCA-MILA"
* $cs_strttureInterne#030936.02 "IST.AUXOLOGICO ITAL.-I.S. S.MICHELE-MILA"
* $cs_strttureInterne#030936.03 "IRCCS OSPEDALE CAPITANIO"
* $cs_strttureInterne#042001.01 "PRESIDIO OSPEDALIERO S. CHIARA"
* $cs_strttureInterne#042001.03 "PRESIDIO OSPEDALIERO VILLA ROSA"
* $cs_strttureInterne#042001.04 "PRESIDIO OSPEDALIERO VILLA IGEA"
* $cs_strttureInterne#050201.01 "OSPEDALE S. MARTINO BELLUNO"
* $cs_strttureInterne#050201.03 "OSPEDALE DI AGORDO"
* $cs_strttureInterne#050201.04 "OSPEDALE DI PIEVE DI CADORE"
* $cs_strttureInterne#050202.01 "OSPEDALE DI FELTRE 'S. MARIA DEL PRATO'"
* $cs_strttureInterne#050202.02 "OSPEDALE DI LAMON 'CASA CHARITAS'"
* $cs_strttureInterne#050203.01 "OSPEDALE `SAN BASSIANO` DI BASSANO D.G."
* $cs_strttureInterne#050203.02 "OSPEDALE DI ASIAGO"
* $cs_strttureInterne#050205.01 "OSPEDALE DI ARZIGNANO"
* $cs_strttureInterne#050205.02 "OSPEDALE  DI LONIGO"
* $cs_strttureInterne#050205.03 "OSPEDALE DI MONTECCHIO"
* $cs_strttureInterne#050205.04 "OSPEDALE DI VALDAGNO"
* $cs_strttureInterne#050206.01 "PRES. OSPED. VICENZA"
* $cs_strttureInterne#050206.02 "PRES. OSP.  NOVENTA VICENTINA"
* $cs_strttureInterne#050140.01 "ASSOCIAZIONE LA NS. FAMIGLIA IRCSS MEDEA"
* $cs_strttureInterne#050140.02 "ASSOCIAZIONE LA NS.FAMIGLIA IRCSS MEDEA"
* $cs_strttureInterne#050207.01 "OSPEDALE DI CONEGLIANO"
* $cs_strttureInterne#050207.02 "OSPEDALE DI VITTORIO VENETO"
* $cs_strttureInterne#050208.01 "OSPEDALE DI CASTELFRANCO VENETO"
* $cs_strttureInterne#050208.02 "OSPEDALE DI MONTEBELLUNA"
* $cs_strttureInterne#050209.01 "OSPEDALE CA' FONCELLO"
* $cs_strttureInterne#050209.02 "OSPEDALE DI ODERZO"
* $cs_strttureInterne#050210.01 "PRESIDIO OSPEDALIERO DI PORTOGRUARO"
* $cs_strttureInterne#050210.02 "PRESIDIO OSPEDALIERO DI SAN DONA` DI P."
* $cs_strttureInterne#050210.03 "PRESIDIO OSPEDALIERO DI JESOLO"
* $cs_strttureInterne#050212.01 "OSPEDALE CIVILE VENEZIA"
* $cs_strttureInterne#050212.02 "PUNTO PRIMO INTERVENTO LIDO"
* $cs_strttureInterne#050212.04 "OSPEDALE DELL'ANGELO"
* $cs_strttureInterne#050213.01 "OSPEDALE  DI DOLO"
* $cs_strttureInterne#050213.02 "OSPEDALE  DI MIRANO"
* $cs_strttureInterne#050213.03 "OSPEDALE DI NOALE"
* $cs_strttureInterne#050215.01 "PRESIDIO OSPEDALIERO DI CAMPOSAMPIERO"
* $cs_strttureInterne#050215.02 "PRESIDIO OSPEDALIERO DI CITTADELLA"
* $cs_strttureInterne#050216.01 "OSPEDALE SANT`ANTONIO"
* $cs_strttureInterne#050216.05 "OSP. IMMACOL. CONCEZ. DI PIOVE DI SACCO"
* $cs_strttureInterne#050217.03 "SEDE MONTAGNANA"
* $cs_strttureInterne#050217.04 "SEDE CONSELVE"
* $cs_strttureInterne#050217.05 "OSPEDALI RIUNITI PADOVA SUD"
* $cs_strttureInterne#050218.01 "P.O. DI ROVIGO"
* $cs_strttureInterne#050218.02 "P.O. DI TRECENTA"
* $cs_strttureInterne#050220.04 "PRESIDIO OSP. MARZANA"
* $cs_strttureInterne#050220.05 "POLO OSP. DELL'EST VERONESE"
* $cs_strttureInterne#050220.06 "PSICHIATRIA SEZIONE B.GO TRENTO - VERONA"
* $cs_strttureInterne#050221.01 "OSPEDALE PER ACUTI"
* $cs_strttureInterne#050221.03 "OSPEDALE S.BIAGIO BOVOLONE"
* $cs_strttureInterne#050222.01 "OSPEDALE CIVILE ORLANDI BUSSOLENGO"
* $cs_strttureInterne#050222.02 "OSPEDALE ISOLA DELLA SCALA"
* $cs_strttureInterne#050222.04 "OSPEDALE DI MALCESINE"
* $cs_strttureInterne#050222.05 "OSPEDALE MAGALINI - VILLAFRANCA DI VR"
* $cs_strttureInterne#050912.01 "OSPEDALE CIVILE MAGGIORE"
* $cs_strttureInterne#050912.02 "OSPEDALE POLICLINICO"
* $cs_strttureInterne#060043.01 "PO Gorizia e Monfalcone sede Gorizia"
* $cs_strttureInterne#060043.02 "PO Gorizia e Monfalcone sede Monfalcone"
* $cs_strttureInterne#060044.01 "PO Latisana e Palmanova sede Latisana"
* $cs_strttureInterne#060044.02 "PO Latisana e Palmanova sede Palmanova"
* $cs_strttureInterne#060045.01 "Sede di San Daniele"
* $cs_strttureInterne#060045.02 "Sede di Tolmezzo"
* $cs_strttureInterne#060045.03 "Sede di Gemona"
* $cs_strttureInterne#060047.01 "PRESIDIO OSPEDALIERO SMM - SEDE UDINE"
* $cs_strttureInterne#060047.02 "PRESIDIO OSPEDAL. SMM - SEDE CIVIDALE"
* $cs_strttureInterne#060042.01 "P.O. San Vito al T. sede di S. Vito al T"
* $cs_strttureInterne#060042.02 "P.O. San Vito al T. sede di Spilimbergo"
* $cs_strttureInterne#070001.01 "STABILIMENTO OSPEDALIERO DI IMPERIA"
* $cs_strttureInterne#070001.02 "STABILIMENTO OSPEDALIERO DI SANREMO"
* $cs_strttureInterne#070001.03 "STABILIMENTO OSPEDALIERO DI BORDIGHERA"
* $cs_strttureInterne#070211.01 "OSPEDALE SANTA MARIA MISERICORDIA"
* $cs_strttureInterne#070211.02 "OSPEDALE SANTA CORONA"
* $cs_strttureInterne#070212.03 "OSPEDALE SAN GIUSEPPE"
* $cs_strttureInterne#070212.04 "OSPEDALE SAN PAOLO"
* $cs_strttureInterne#070051.01 "EVANGELICO Internazionale CASTELLETTO"
* $cs_strttureInterne#070051.02 "EVANGELICO-SAN CARLO VOLTRI"
* $cs_strttureInterne#070301.01 "OSPEDALE LA COLLETTA ARENZANO"
* $cs_strttureInterne#070301.03 "OSPEDALE PADRE ANTERO MICONE SESTRI P."
* $cs_strttureInterne#070301.04 "OSPEDALE VILLA SCASSI"
* $cs_strttureInterne#070301.05 "OSPEDALE GALLINO"
* $cs_strttureInterne#070039.01 "OSP. RIUNITI LEONARDI E RIBOLI LAVAGNA"
* $cs_strttureInterne#070039.02 "OSPEDALE CIVILE DI SESTRI LEVANTE"
* $cs_strttureInterne#070039.05 "OSPEDALE N.S. DI MONTALLEGRO"
* $cs_strttureInterne#070058.01 "OSPEDALE SANT`ANDREA LA SPEZIA"
* $cs_strttureInterne#070058.03 "OSPEDALE SAN NICOLO` LEVANTO"
* $cs_strttureInterne#070058.04 "STABILIMENTO SAN BARTOLOMEO DI SARZANA"
* $cs_strttureInterne#080004.01 "OSPEDALE GUGLIELMO DA SALICETO PIACENZA"
* $cs_strttureInterne#080004.02 "OSPEDALE BOBBIO"
* $cs_strttureInterne#080004.03 "OSPEDALE CASTEL SAN GIOVANNI"
* $cs_strttureInterne#080004.04 "OSPEDALE BORGONOVO VAL TIDONE"
* $cs_strttureInterne#080004.05 "OSPEDALE FIORENZUOLA D'ARDA"
* $cs_strttureInterne#080004.06 "CENTRO DI RECUPERO E RIABILITAZIONE FUNZ"
* $cs_strttureInterne#080013.01 "OSPEDALE FIDENZA"
* $cs_strttureInterne#080013.03 "OSPEDALE 'S.MARIA' BORGO VAL DI TARO"
* $cs_strttureInterne#080021.01 "OSPEDALE CIVILE GUASTALLA"
* $cs_strttureInterne#080021.02 "OSPEDALE S.SEBASTIANO CORREGGIO"
* $cs_strttureInterne#080021.03 "OSPEDALE E.FRANCHINI MONTECCHIO"
* $cs_strttureInterne#080021.04 "OSPEDALE G.MAGATI SCANDIANO"
* $cs_strttureInterne#080021.05 "OSPEDALE S.ANNA CASTELNOVO NE MONTI"
* $cs_strttureInterne#080031.04 "OSPEDALE B. RAMAZZINI  CARPI"
* $cs_strttureInterne#080031.05 "OSPEDALE SANTA MARIA BIANCA  MIRANDOLA"
* $cs_strttureInterne#080031.08 "OSPEDALE VIGNOLA"
* $cs_strttureInterne#080031.09 "OSPEDALE PAVULLO NEL FRIGNANO"
* $cs_strttureInterne#080031.10 "NUOVO OSPEDALE CIVILE  S.AGOSTINO - ESTE"
* $cs_strttureInterne#080053.01 "OSPEDALE MAGGIORE C.A. PIZZARDI"
* $cs_strttureInterne#080053.02 "OSPEDALE BELLARIA"
* $cs_strttureInterne#080053.03 "OSPEDALE DOSSETTI  BAZZANO"
* $cs_strttureInterne#080053.04 "OSPEDALE A. COSTA PORRETTA TERME (ALTO"
* $cs_strttureInterne#080053.05 "OSPEDALE VERGATO"
* $cs_strttureInterne#080053.06 "OSPEDALE SIMIANI LOIANO"
* $cs_strttureInterne#080053.07 "OSPEDALE BENTIVOGLIO"
* $cs_strttureInterne#080053.08 "OSPEDALE BUDRIO"
* $cs_strttureInterne#080053.09 "OSPEDALE S.SALVATORE  S. GIOVANNI IN P"
* $cs_strttureInterne#080044.01 "OSPEDALE CIVILE NUOVO S.MARIA DELLA SCA"
* $cs_strttureInterne#080044.02 "OSPEDALE CASTEL SAN PIETRO TERME"
* $cs_strttureInterne#080068.03 "OSPEDALE DEL DELTA"
* $cs_strttureInterne#080068.04 "OSPEDALE MAZZOLANI VANDINI ARGENTA"
* $cs_strttureInterne#080068.06 "STABILIMENTO OSPEDALIERO SS. ANNUNZIATA"
* $cs_strttureInterne#080085.01 "OSPEDALE MORGAGNI-PIERANTONI FORLI'"
* $cs_strttureInterne#080085.03 "OSPEDALE NEFETTI SANTA SOFIA"
* $cs_strttureInterne#080091.01 "OSPEDALE MAURIZIO BUFALINI CESENA"
* $cs_strttureInterne#080091.02 "OSPEDALE GINESIO MARCONI CESENATICO"
* $cs_strttureInterne#080091.03 "OSPEDALE PIETRO ANGIOLONI BAGNO DI ROM"
* $cs_strttureInterne#080095.01 "OSPEDALE INFERMI RIMINI"
* $cs_strttureInterne#080095.02 "OSPEDALE FRANCHINI SANTARCANGELO DI RO"
* $cs_strttureInterne#080095.03 "OSPEDALE SACRA FAMIGLIA NOVAFELTRIA"
* $cs_strttureInterne#080100.01 "OSPEDALE CECCARINI RICCIONE"
* $cs_strttureInterne#080100.02 "OSPEDALE CERVESI CATTOLICA"
* $cs_strttureInterne#080903.01 "AZIENDA OSPEDALIERA DI REGGIO EMILIA-S."
* $cs_strttureInterne#080903.02 "AZIENDA OSPEDALIERA DI REGGIO EMILIA - I"
* $cs_strttureInterne#090606.01 "OSPEDALE SAN JACOPO"
* $cs_strttureInterne#090606.02 "OSPEDALE LORENZO PACINI"
* $cs_strttureInterne#090629.01 "OSPEDALE S.M.ANNUNZIATA"
* $cs_strttureInterne#090629.02 "OSPEDALE SERRISTORI"
* $cs_strttureInterne#090632.01 "SANTA MARIA NUOVA"
* $cs_strttureInterne#090632.02 "ISTITUTO ORTOPEDICO TOSCANO"
* $cs_strttureInterne#090632.03 "OSP. S. GIOVANNI DI DIO TORREGALLI"
* $cs_strttureInterne#090632.06 "OBLATE AZIENDA SANITARIA FIRENZE"
* $cs_strttureInterne#090642.02 "OSPEDALE S. GIUSEPPE"
* $cs_strttureInterne#090642.03 "OSPEDALE SAN PIETRO IGNEO"
* $cs_strttureInterne#090642.04 "OSPEDALE DEGLI INFERMI"
* $cs_strttureInterne#090601.01 "OSP. S. ANTONIO ABATE FIVIZZANO   (MS)"
* $cs_strttureInterne#090601.02 "OSP. CIV. S.ANTONIO  PONTREMOLI (MS)"
* $cs_strttureInterne#090602.01 "STABILIMENTO OSPEDALIERO DI CARRARA"
* $cs_strttureInterne#090602.03 "OSPEDALE  DELLE APUANE"
* $cs_strttureInterne#090603.01 "OSPEDALE SANTA CROCE"
* $cs_strttureInterne#090603.02 "OSPEDALE SAN FRANCESCO"
* $cs_strttureInterne#090610.01 "P.O. F. LOTTI STABILIMENTO DI PONTEDERA"
* $cs_strttureInterne#090610.02 "SPDC AZIENDALE ASL5"
* $cs_strttureInterne#090236.01 "CASA DI CURA POGGIO DEL SOLE"
* $cs_strttureInterne#090236.02 "CENTRO CHIRURGICO TOSCANO SRL"
* $cs_strttureInterne#090624.02 "OSPEDALE DI ORBETELLO"
* $cs_strttureInterne#090624.03 "OSPEDALE DI PITIGLIANO"
* $cs_strttureInterne#090907.01 "FONDAZIONE CNR-RT G. MONASTERIO"
* $cs_strttureInterne#090907.02 "OSPEDALE DEL CUORE G. PASQUINUCCI"
* $cs_strttureInterne#100801.01 "OSPEDALE DI CITTA` DI CASTELLO"
* $cs_strttureInterne#100801.02 "OSPEDALE DI UMBERTIDE"
* $cs_strttureInterne#100803.01 "STAB.OSPEDALIERO CASTIGLIONE DEL LAGO"
* $cs_strttureInterne#100803.02 "STAB.OSPEDALIERO CITTA`DELLA PIEVE"
* $cs_strttureInterne#100803.03 "C.O.R.I. - PASSIGNANO"
* $cs_strttureInterne#100803.04 "STAB. OSPEDALIERO ASSISI"
* $cs_strttureInterne#100803.07 "STAB. OSPEDALIERO MEDIA VALLE DEL TEVERE"
* $cs_strttureInterne#100805.01 "OSPEDALE CIVILE SAN MATTEO DEGLI INFERMI"
* $cs_strttureInterne#100805.02 "OSPEDALE CIVILE DI NORCIA"
* $cs_strttureInterne#100805.03 "OSPEDALE S.RITA CASCIA"
* $cs_strttureInterne#100807.01 "STABILIMENTO OSPEDALIERO DI NARNI"
* $cs_strttureInterne#100807.02 "STABILIMENTO OSPEDALIERO DI AMELIA"
* $cs_strttureInterne#100807.03 "DOMUS GRATIAE"
* $cs_strttureInterne#100809.01 "OSPEDALE SAN GIOVANNI BATTISTA FOLIGNO"
* $cs_strttureInterne#100809.02 "STABILIMENTO DI TREVI"
* $cs_strttureInterne#110001.01 "OSP S. MARIA DELLA MISERICORDIA - URBINO"
* $cs_strttureInterne#110001.02 "OSPEDALE SS DONNINO E CARLO - PERGOLA"
* $cs_strttureInterne#110001.03 "OSPEDALE CELLI - CAGLI"
* $cs_strttureInterne#110001.04 "OSPEDALE LANCIARINI - SASSOCORVARO"
* $cs_strttureInterne#110001.05 "OSPEDALE CIVILE - FOSSOMBRONE"
* $cs_strttureInterne#110002.01 "PRESIDIO OSPEDALIERO ZT 4 - SENIGALLIA"
* $cs_strttureInterne#110002.02 "OSPEDALE CARLO URBANI DI JESI"
* $cs_strttureInterne#110002.03 "OSP. SS. BENVENUTO E ROCCO - OSIMO"
* $cs_strttureInterne#110002.04 "OSPEDALE CIVILE 'E.PROFILI' - FABRIANO"
* $cs_strttureInterne#110002.05 "OSPEDALE SANTA CASA - LORETO"
* $cs_strttureInterne#110002.06 "OSPEDALE GENERALE DI ZONA - CINGOLI"
* $cs_strttureInterne#110003.01 "OSPEDALE GENERALE DI ZONA - CIVITANOVA"
* $cs_strttureInterne#110003.02 "OSPEDALE GENERALE PROVINCIALE - MACERATA"
* $cs_strttureInterne#110003.03 "OSPEDALE S.MARIA DELLA PIETA` - CAMERINO"
* $cs_strttureInterne#110003.04 "OSPEDALE B.EUSTACCHIO - S. SEVERINO M."
* $cs_strttureInterne#110003.05 "OSPEDALE DI TREIA"
* $cs_strttureInterne#110003.06 "OSPEDALE DI TOLENTINO"
* $cs_strttureInterne#110003.07 "OSPEDALE CIVILE SANTA LUCIA - RECANATI"
* $cs_strttureInterne#110003.08 "OSPEDALE S.SOLLECITO - MATELICA"
* $cs_strttureInterne#110004.01 "OSPEDALE DI FERMO"
* $cs_strttureInterne#110004.02 "OSPEDALE VITTORIO EMANUELE II - AMANDOLA"
* $cs_strttureInterne#110005.01 "MADONNA DEL SOCCORSO - S.BENEDETTO"
* $cs_strttureInterne#110005.02 "OSP. GEN."
* $cs_strttureInterne#110901.01 "OSPEDALE SAN SALVATORE - PESARO"
* $cs_strttureInterne#110901.02 "OSPEDALE SANTA CROCE - FANO"
* $cs_strttureInterne#110905.01 "PRESIDIO OSPEDALIERO UMBERTO I°"
* $cs_strttureInterne#110905.02 "PRESIDIO OSPEDALIERO G.M.LANCISI"
* $cs_strttureInterne#110905.03 "PRESIDIO OSPEDALIERO G.SALESI"
* $cs_strttureInterne#110921.01 "OSPEDALE INRCA - ANCONA"
* $cs_strttureInterne#110921.02 "OSPEDALE INRCA - FERMO"
* $cs_strttureInterne#120204.01 "ALFREDO FIORINI TERRACINA"
* $cs_strttureInterne#120204.02 "SAN GIOVANNI DI DIO FONDI"
* $cs_strttureInterne#120204.03 "REGINA ELENA PRIVERNO"
* $cs_strttureInterne#120026.01 "OSPEDALE SANTO SPIRITO"
* $cs_strttureInterne#120026.02 "VILLA BETANIA"
* $cs_strttureInterne#120285.01 "PRESIDIO SAN FILIPPO NERI"
* $cs_strttureInterne#120285.03 "PRESIDIO CASSIA SANT'ANDREA"
* $cs_strttureInterne#120285.05 "SALUS INFIRMORUM"
* $cs_strttureInterne#120066.01 "OSPEDALE S.EUGENIO"
* $cs_strttureInterne#120066.02 "OSPEDALE CTO.A.ALESINI"
* $cs_strttureInterne#120044.01 "OSPEDALE SAN GIUSEPPE ALBANO L."
* $cs_strttureInterne#120044.02 "OSPEDALE E. DE SANTIS GENZANO"
* $cs_strttureInterne#120904.01 "OSPEDALE PEDIATRICO BAMBINO GESU`"
* $cs_strttureInterne#120904.02 "OSPEDALE PEDIATRICO BAMBINO GESU`"
* $cs_strttureInterne#120904.03 "OSPEDALE PEDIATRICO BAMBINO GESU`"
* $cs_strttureInterne#120905.01 "POLICLINICO UNIVERSITARIO A. GEMELLI"
* $cs_strttureInterne#120905.02 "COMPLESSO INTEGRATO COLUMBUS (C.I.C.)"
* $cs_strttureInterne#120908.01 "IFO - ISTITUTO REGINA ELENA"
* $cs_strttureInterne#120908.02 "IFO - ISTITUTO SAN GALLICANO"
* $cs_strttureInterne#140002.01 "OSPEDALE S. TIMOTEO- TERMOLI"
* $cs_strttureInterne#140002.02 "OSPEDALE G. VIETRI- LARINO"
* $cs_strttureInterne#140003.01 "OSPEDALE VENEZIALE- ISERNIA"
* $cs_strttureInterne#140003.02 "OSPEDALE CARACCIOLO AGNONE"
* $cs_strttureInterne#140003.03 "OSPEDALE SS. ROSARIO - VENAFRO"
* $cs_strttureInterne#150150.01 "OSPEDALE S.ANGELO DEI LOMBARDI"
* $cs_strttureInterne#150150.02 "P.SP.RIABILITATIVO DON GNOCCHI"
* $cs_strttureInterne#150418.01 "PO SAN GIOVANNI BOSCO"
* $cs_strttureInterne#150418.02 "PO LORETO MARE"
* $cs_strttureInterne#150418.05 "PO ASCALESI"
* $cs_strttureInterne#150418.06 "PRESDIO SANITARIO INTERMEDIO NAPOLI EST"
* $cs_strttureInterne#150419.01 "PO SAN PAOLO"
* $cs_strttureInterne#150419.02 "PO DEI PELLEGRINI"
* $cs_strttureInterne#150419.03 "PO SAN GENNARO"
* $cs_strttureInterne#150419.04 "PO SMDP INCURABILI"
* $cs_strttureInterne#150419.06 "PO  Capilupi CAPRI"
* $cs_strttureInterne#150415.01 "P.O. MARESCA"
* $cs_strttureInterne#150415.02 "P.O.  BOSCOTRECASE"
* $cs_strttureInterne#150416.01 "S.  LEONARDO"
* $cs_strttureInterne#150416.02 "NUOVO GRAGNANO"
* $cs_strttureInterne#150417.01 "P.O. S. MARIA DELLA MISERICORDIA"
* $cs_strttureInterne#150417.02 "P.O. DE LUCA E ROSSANO"
* $cs_strttureInterne#150436.01 "OSPEDALI RIUNITI AREA NOLANA PLESSO NOLA"
* $cs_strttureInterne#150436.02 "OSPED RIUNITI AREA NOLANA PLESSO POLLENA"
* $cs_strttureInterne#150154.01 "P.O. UMBERTO I NOCERA INFERIORE"
* $cs_strttureInterne#150154.02 "P.O. TORTORA PAGANI"
* $cs_strttureInterne#150902.01 "OSPEDALE SANTOBONO"
* $cs_strttureInterne#150902.02 "Ospedale Pausilipon"
* $cs_strttureInterne#150902.03 "P.O. S.S. Annunziata"
* $cs_strttureInterne#150903.01 "Azienda Ospedaliera dei Colli -P Monaldi"
* $cs_strttureInterne#150903.02 "Azienda Ospedaliera dei Colli -P Cotugno"
* $cs_strttureInterne#150903.03 "Azienda Ospedaliera dei Colli -P  CTO"
* $cs_strttureInterne#150904.01 "A.O. OO.RR. SANGIOVANNI DI DIO E RUGGI"
* $cs_strttureInterne#150904.02 "OSPEDALE AMICO G. FUCITO"
* $cs_strttureInterne#150904.03 "P.O. G. DA PROCIDA"
* $cs_strttureInterne#150904.04 "P.O. S. M. DELL'OLMO"
* $cs_strttureInterne#160161.01 "OSPEDALE OSTUNI"
* $cs_strttureInterne#160161.02 "PLESSO DI FASANO - OSPEDALE OSTUNI"
* $cs_strttureInterne#160170.01 "OSPEDALE PERRINO BRINDISI"
* $cs_strttureInterne#160170.02 "OSPEDALE BRINDISI (PLESSO MESAGNE)"
* $cs_strttureInterne#160170.03 "OSP.BRINDISI(PLESSO S.PIETRO VERNOTICO)"
* $cs_strttureInterne#160170.04 "OSP.BRINDISI (PLESSO CEGLIE MESSAPICA)"
* $cs_strttureInterne#160172.01 "OSPEDALE SS ANNUNZIATA - TARANTO"
* $cs_strttureInterne#160172.03 "OSPEDALE MOSCATI - TARANTO/STATTE"
* $cs_strttureInterne#160174.01 "OSPEDALE ANDRIA"
* $cs_strttureInterne#160174.02 "OSPEDALE ANDRIA (PLESSO CANOSA)"
* $cs_strttureInterne#160178.01 "OSPEDALE BISCEGLIE"
* $cs_strttureInterne#160178.02 "OSPEDALE BISCEGLIE (PLESSO TRANI)"
* $cs_strttureInterne#160158.01 "OSPEDALE SAN PAOLO-BARI"
* $cs_strttureInterne#160158.03 "OSPEDALE SAN PAOLO (PLESSO MOLFETTA)"
* $cs_strttureInterne#160158.04 "OSPEDALE SAN PAOLO (PLESSO CORATO)"
* $cs_strttureInterne#160158.05 "OSPEDALE SAN PAOLO (PLESSO TERLIZZI)"
* $cs_strttureInterne#160169.01 "OSPEDALE DI VENERE - BARI"
* $cs_strttureInterne#160169.03 "PLESSO TRIGGIANO-OSPEDALE DI VENERE"
* $cs_strttureInterne#160163.01 "OSPEDALE SAN SEVERO"
* $cs_strttureInterne#160163.07 "OSPEDALE SAN SEVERO (PLESSO LUCERA)"
* $cs_strttureInterne#160171.01 "OSPEDALE LECCE 'V FAZZI'"
* $cs_strttureInterne#160171.02 "PLESSO DI SAN CESARIO - OSPEDALE LECCE"
* $cs_strttureInterne#160907.01 "CONSORZIALE POLICLINICO BARI"
* $cs_strttureInterne#160907.02 "OSPEDALE GIOVANNI XXIII"
* $cs_strttureInterne#170901.01 "Ospedale San Carlo di Potenza"
* $cs_strttureInterne#170901.02 "Osp S.Francesco di Paola di Pescopagano"
* $cs_strttureInterne#180010.01 "Ospedale Corigliano"
* $cs_strttureInterne#180010.02 "Ospedale  Rossano"
* $cs_strttureInterne#180012.01 "Ospedale  Cetraro"
* $cs_strttureInterne#180012.02 "Ospedale Paola"
* $cs_strttureInterne#180912.01 "P.O. ANNUNZIATA"
* $cs_strttureInterne#180912.02 "MARIANO SANTO"
* $cs_strttureInterne#180912.03 "SANTA BARBARA"
* $cs_strttureInterne#180913.01 "Ospedale Pugliese"
* $cs_strttureInterne#180913.02 "Ospedale De Lellis"
* $cs_strttureInterne#180915.01 "Presidio Ospedaliero Riuniti"
* $cs_strttureInterne#180915.02 "Presidio Ospedaliero E. Morelli"
* $cs_strttureInterne#190922.01 "OSPEDALE GARIBALDI - CENTRO"
* $cs_strttureInterne#190922.04 "NUOVO OSPEDALE GARIBALDI - NESIMA"
* $cs_strttureInterne#190923.01 "PRESIDIO OSPEDALIERO GASPARE RODOLICO"
* $cs_strttureInterne#190923.02 "PRESIDIO OSPEDALIERO VITTORIO EMANUELE"
* $cs_strttureInterne#190923.03 "PRESIDIO OSPEDALIERO S. BAMBINO"
* $cs_strttureInterne#190926.01 "P.O. Villa Sofia"
* $cs_strttureInterne#190926.02 "C.T.O. Centro Traumatologico Ortopedico"
* $cs_strttureInterne#190926.03 "P.O. V. Cervello"
* $cs_strttureInterne#190927.01 "Ospedale Civico"
* $cs_strttureInterne#190927.02 "Ospedale dei Bambini G. Di Cristina"
* $cs_strttureInterne#190960.01 "IRCCS Centro Neurolesi"
* $cs_strttureInterne#190960.02 "PRESIDIO OSPEDALIERO PIEMONTE"
* $cs_strttureInterne#200056.01 "KINETIKA SARDEGNA s.r.l."
* $cs_strttureInterne#200056.02 "KINETIKA SARDEGNA s.r.l."
* $cs_strttureInterne#200056.03 "KINETIKA SARDEGNA s.r.l."
* $cs_strttureInterne#200904.01 "P. O. SAN MICHELE"
* $cs_strttureInterne#200904.02 "P.O. A. BUSINCO"
* $cs_strttureInterne#200904.03 "P.O. MICROCITEMICO"
* $cs_strttureInterne#200905.01 "Stabilimento Cliniche di San Pietro"
* $cs_strttureInterne#200905.02 "Stabilimento SS. Annunziata"
* $cs_strttureInterne#200906.01 "San Giovanni di Dio"
* $cs_strttureInterne#200906.02 "Policlinico Monserrato"
