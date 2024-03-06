
CodeSystem: CsTipoStruttura
Id: mds-tipo-struttura
Title: "MDS - Tipo di Struttura per Srutture di ricovero"
Description: "MDS - TIpologia di Struttura che identifica le Strutture di ricovero"
* ^experimental = false
* ^caseSensitive = true 

* ^concept[0].code = #0
* ^concept[0].display = "Azienda Ospedaliera"
* ^concept[0].definition = "Pubblico"
* ^concept[+].code = #1
* ^concept[=].display = "Ospedale a gestione diretta"
* ^concept[=].definition = "Pubblico"
* ^concept[+].code = #2.1
* ^concept[=].display = "A.O. integrata con SSN"
* ^concept[=].definition = "Pubblico"
* ^concept[+].code = #2.2
* ^concept[=].display = "A.O. integrata con Università"
* ^concept[=].definition = "Pubblico"
* ^concept[+].code = #2.3
* ^concept[=].display = "Policlinico universitario privato"
* ^concept[=].definition = "Privato (Equiparato a pubblico)"
* ^concept[+].code = #3.1
* ^concept[=].display = "IRCCS pubblico"
* ^concept[=].definition = "Pubblico"
* ^concept[+].code = #3.2
* ^concept[=].display = "IRCCS privato"
* ^concept[=].definition = "Privato (Equiparato a pubblico)"
* ^concept[+].code = #3.3
* ^concept[=].display = "IRCCS fondazione"
* ^concept[=].definition = "Privato (Equiparato a pubblico)"
* ^concept[+].code = #4
* ^concept[=].display = "Ospedale classificato o assimilato ai sensi dell'art. 1, ultimo comma, L.132/1968"
* ^concept[=].definition = "Privato (Equiparato a pubblico)"
* ^concept[+].code = #5.1
* ^concept[=].display = "Casa di cura privata accreditata"
* ^concept[=].definition = "Privata"
* ^concept[+].code = #5.2
* ^concept[=].display = "Casa di cura privata non accreditata"
* ^concept[=].definition = "Privata"
* ^concept[+].code = #8
* ^concept[=].display = "Istituto qualificato presidio della U.S.L."
* ^concept[=].definition = "Privato (Equiparato a pubblico)"
* ^concept[+].code = #9
* ^concept[=].display = "Ente di ricerca"
* ^concept[=].definition = "Privato (Equiparato a pubblico)"

CodeSystem: CsContinente
Id: istat-continente
Title: "ISTAT - Continente"
Description: "ISTAT - Continente"
* ^experimental = false
* ^caseSensitive = true 

* #1 "Europa"
* #2 "Africa"
* #3 "Asia"
* #4 "America"
* #5 "Oceania"

CodeSystem: CsRipartizionegeografica
Id: istat-ripartizione-geografica
Title: "ISTAT - Ripartizione Geografica"
Description: "ISTAT - Codice Istat della Ripartizione geografica secondo la suddivisione del territorio nazionale"
* ^experimental = false
* ^caseSensitive = true 

* #1 "Nord-ovest"
* #2 "Nord-est"
* #3 "Centro"
* #4 "Sud"
* #5 "Isole"

// CodeSystem: CsAifaNota
// Id: aifa-nota
// Title: "AIFA - Indicazioni terapeutiche (Nota AIFA)"
// Description: "AIFA - Indicazioni terapeutiche per le quali un determinato farmaco è rimborsabile a carico del Servizio Sanitario Nazionale. Conosciute come Note AIFA"
// * ^experimental = false
// * ^caseSensitive = true 
//--------------------------

CodeSystem: CsAifaAic
Id: aifa-aic
Title: "AIFA - Autorizzazione Immissione in Commercio"
Description: "AIFA - Autorizzazione Immissione in Commercio."
* ^experimental = false
* ^caseSensitive = true
//--------------------------


CodeSystem: CsMinSanRegioni
Id: minsan-regione
Title: "MDS - Codici Regioni / PPAA"
Description: "MDS - Codici Regioni / Province Autonome usati nei file FLS11."
* ^experimental = false
* ^caseSensitive = true 
* #010	"PIEMONTE"
* #020	"VALLE D'AOSTA"
* #030	"LOMBARDIA"
* #041	"PROV. AUTON. BOLZANO"
* #042	"PROV. AUTON. TRENTO"
* #050	"VENETO"
* #060	"FRIULI VENEZIA GIULIA"
* #070	"LIGURIA"
* #080	"EMILIA ROMAGNA"
* #090	"TOSCANA"
* #100	"UMBRIA"
* #110	"MARCHE"
* #120	"LAZIO"
* #130	"ABRUZZO"
* #140	"MOLISE"
* #150	"CAMPANIA"
* #160	"PUGLIA"
* #170	"BASILICATA"
* #180	"CALABRIA"
* #190	"SICILIA"
* #200	"SARDEGNA"

CodeSystem: CsIstatDug
Id: dug
Title: "ISTAT - Registro delle Denominazioni Urbanistiche Generiche (DUG)"
Description: "ISTAT - Registro delle Denominazioni Urbanistiche Generiche (DUG)"
* ^experimental = false
* ^caseSensitive = true 
* #1 "arco"
* #2 "autostrada"
* #3 "belvedere"
* #4 "calata"
* #5 "calle"
* #6 "cavalcavia"
* #7 "circonvallazione"
* #8 "corso"
* #9 "corte"
* #10 "cortile"
* #11 "discesa"
* #12 "galleria"
* #13 "gradinata"
* #14 "larghetto"
* #15 "largo"
* #16 "litoranea"
* #17 "lungargine"
* #18 "lungofiume"
* #19 "lungolago"
* #20 "lungomare"
* #21 "lungoparco"
* #22 "lungotorrente"
* #23 "molo"
* #24 "parcheggio"
* #25 "passaggio"
* #26 "passeggiata"
* #27 "percorso ciclabile"
* #28 "percorso ciclopedonale"
* #29 "percorso pedonale"
* #30 "piazza"
* #31 "piazzale"
* #32 "piazzetta"
* #33 "pista ciclabile"
* #34 "ponte"
* #35 "raccordo"
* #36 "rampa"
* #37 "ronco"
* #38 "rotatoria"
* #39 "rotonda"
* #40 "salita"
* #41 "scalinata"
* #42 "scesa"
* #43 "sentiero"
* #44 "slargo"
* #45 "sottopasso"
* #46 "sovrappasso"
* #47 "spiazzo"
* #48 "strada"
* #49 "strada antica"
* #50 "strada comunale"
* #51 "strada consortile"
* #52 "strada nuova"
* #53 "strada panoramica"
* #54 "strada poderale"
* #55 "strada privata"
* #56 "strada provinciale"
* #57 "strada regionale"
* #58 "strada statale"
* #59 "strada vecchia"
* #60 "strada vicinale"
* #61 "stradella"
* #62 "stradello"
* #63 "stradone"
* #64 "tangenziale"
* #65 "traversa"
* #66 "traversa privata"
* #67 "via"
* #68 "via antica"
* #69 "via comunale"
* #70 "via nazionale"
* #71 "via nuova"
* #72 "via panoramica"
* #73 "via privata"
* #74 "via provinciale"
* #75 "via vecchia"
* #76 "viale"
* #77 "vialetto"
* #78 "vico"
* #79 "vico chiuso"
* #80 "vico cieco"
* #81 "vico privato"
* #82 "vicoletto"
* #83 "vicolo"
* #84 "vicolo chiuso"
* #85 "vicolo cieco"
* #86 "vicolo privato"
* #87 "viottolo"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CsItRoleCode
Id: it-V3RoleCode
Title: "HL7 Italia - HL7 V3 RoleCode (estensione)"
Description: "HL7 Italia - Estensione del Vocabolario HL7 V3 RoleCode"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^caseSensitive = true 
* #MMG  "medico di medicina generale"
* #PLS  "pediatra di libera scelta"
* #MSD  "medico del servizio/struttura del distretto/azienda" 
* #MCA  "medico continuità assistenziale" 
* #MO  "medico ospedaliero" 
* #MSA  "medico specialista ambulatoriale" 
* #MAU  "medico di azienda ospedaliero-universitaria" 
* #GMT  "guardia medica turistica" 
* #SPA  "specialista di struttura privata accreditata" 
* #MI  "medico INAIL" 
* #MC  "medico consulente" 
* #AS "altra specializzazione" 
* #AA "altro (tirocinanti, specializzandi, etc)"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        
CodeSystem: CsProvinceISTAT
Id: province-istat
Title: "ISTAT - Province"
Description: "ISTAT - Province"
//-------------------------------------------------------------------------------------------
//* ^url = "http://terminology.hl7.it/CodeSystem/mef-ae-province"
* ^experimental = false
* ^caseSensitive = true 
* #001	"Torino"
* #002	"Vercelli"
* #003	"Novara"
* #004	"Cuneo"
* #005	"Asti"
* #006	"Alessandria"
* #096	"Biella"
* #103	"Verbano-Cusio-Ossola"
* #007	"Valle d'Aosta/Vallée d'Aoste"
* #012	"Varese"
* #013	"Como"
* #014	"Sondrio"
* #015	"Milano"
* #016	"Bergamo"
* #017	"Brescia"
* #018	"Pavia"
* #019	"Cremona"
* #020	"Mantova"
* #097	"Lecco"
* #098	"Lodi"
* #108	"Monza e della Brianza"
* #021	"Bolzano/Bozen"
* #022	"Trento"
* #023	"Verona"
* #024	"Vicenza"
* #025	"Belluno"
* #026	"Treviso"
* #027	"Venezia"
* #028	"Padova"
* #029	"Rovigo"
* #030	"Udine"
* #031	"Gorizia"
* #032	"Trieste"
* #093	"Pordenone"
* #008	"Imperia"
* #009	"Savona"
* #010	"Genova"
* #011	"La Spezia"
* #033	"Piacenza"
* #034	"Parma"
* #035	"Reggio nell'Emilia"
* #036	"Modena"
* #037	"Bologna"
* #038	"Ferrara"
* #039	"Ravenna"
* #040	"Forlì-Cesena"
* #099	"Rimini"
* #045	"Massa-Carrara"
* #046	"Lucca"
* #047	"Pistoia"
* #048	"Firenze"
* #049	"Livorno"
* #050	"Pisa"
* #051	"Arezzo"
* #052	"Siena"
* #053	"Grosseto"
* #100	"Prato"
* #054	"Perugia"
* #055	"Terni"
* #041	"Pesaro e Urbino"
* #042	"Ancona"
* #043	"Macerata"
* #044	"Ascoli Piceno"
* #109	"Fermo"
* #056	"Viterbo"
* #057	"Rieti"
* #058	"Roma"
* #059	"Latina"
* #060	"Frosinone"
* #066	"L'Aquila"
* #067	"Teramo"
* #068	"Pescara"
* #069	"Chieti"
* #070	"Campobasso"
* #094	"Isernia"
* #061	"Caserta"
* #062	"Benevento"
* #063	"Napoli"
* #064	"Avellino"
* #065	"Salerno"
* #071	"Foggia"
* #072	"Bari"
* #073	"Taranto"
* #074	"Brindisi"
* #075	"Lecce"
* #110	"Barletta-Andria-Trani"
* #076	"Potenza"
* #077	"Matera"
* #078	"Cosenza"
* #079	"Catanzaro"
* #080	"Reggio Calabria"
* #101	"Crotone"
* #102	"Vibo Valentia"
* #081	"Trapani"
* #082	"Palermo"
* #083	"Messina"
* #084	"Agrigento"
* #085	"Caltanissetta"
* #086	"Enna"
* #087	"Catania"
* #088	"Ragusa"
* #089	"Siracusa"
* #090	"Sassari"
* #091	"Nuoro"
* #092	"Cagliari"
* #095	"Oristano"
* #111	"Sud Sardegna"


// CodeSystem: CsAnagrafiRegionali
// Id: cs-anagrafi-regionali
// Title: "Anagrafi Regionali"
// Description: "Anagrafi Regionali"
// * ^experimental = false
// * ^caseSensitive = false
// // //------------------------------------------------------------------------------------------- 
// * #2.16.840.1.113883.2.9.2.10.4.1. "Anagrafi Regionali - Piemonte"
// * #2.16.840.1.113883.2.9.2.20.4.1 "Anagrafi Regionali - Valle d`aosta"
// * #2.16.840.1.113883.2.9.2.30.4.1 "Anagrafi Regionali - Lombardia"
// * #2.16.840.1.113883.2.9.2.41.4.1 "Anagrafi Regionali - prov. auton. bolzano"
// * #2.16.840.1.113883.2.9.2.42.4.1 "Anagrafi Regionali - prov. auton. trento"
// * #2.16.840.1.113883.2.9.2.50.4.1 "Anagrafi Regionali - Veneto"
// * #2.16.840.1.113883.2.9.2.60.4.1 "Anagrafi Regionali - Friuli venezia giulia"
// * #2.16.840.1.113883.2.9.2.70.4.1 "Anagrafi Regionali - Liguria"
// * #2.16.840.1.113883.2.9.2.80.4.1 "Anagrafi Regionali - Emilia romagna"
// * #2.16.840.1.113883.2.9.2.90.4.1 "Anagrafi Regionali - Toscana"
// * #2.16.840.1.113883.2.9.2.100.4.1 "Anagrafi Regionali - Umbria"
// * #2.16.840.1.113883.2.9.2.110.4.1 "Anagrafi Regionali - Marche"
// * #2.16.840.1.113883.2.9.2.120.4.1 "Anagrafi Regionali - Lazio"
// * #2.16.840.1.113883.2.9.2.130.4.1 "Anagrafi Regionali - Abruzzo"
// * #2.16.840.1.113883.2.9.2.140.4.1 "Anagrafi Regionali - Molise"
// * #2.16.840.1.113883.2.9.2.150.4.1 "Anagrafi Regionali - Campania"
// * #2.16.840.1.113883.2.9.2.160.4.1 "Anagrafi Regionali - Puglia"
// * #2.16.840.1.113883.2.9.2.170.4.1 "Anagrafi Regionali - Basilicata"
// * #2.16.840.1.113883.2.9.2.180.4.1 "Anagrafi Regionali - Calabria"
// * #2.16.840.1.113883.2.9.2.190.4.1 "Anagrafi Regionali - Sicilia"
// * #2.16.840.1.113883.2.9.2.200.4.1 "Anagrafi Regionali - Sardegna"



// CodeSystem: CsIstatEstere
// Id: istat-unitaAmministrativeTerritorialiEstere
// Title: "ISTAT - Unita Amministrative Territoriali Estere"
// Description: "ISTAT - Unita Amministrative Territoriali Estere"
// * ^experimental = false
// * ^caseSensitive = true 
// * ^concept[0].code = #100
// * ^concept[0].display = "Italia"
// * ^concept[1].code = #201
// * ^concept[1].display = "Albania"
// * ^concept[2].code = #202
// * ^concept[2].display = "Andorra"
// * ^concept[3].code = #203
// * ^concept[3].display = "Austria"
// * ^concept[4].code = #206
// * ^concept[4].display = "Belgio"
// * ^concept[5].code = #209
// * ^concept[5].display = "Bulgaria"
// * ^concept[6].code = #212
// * ^concept[6].display = "Danimarca"
// * ^concept[7].code = #214
// * ^concept[7].display = "Finlandia"
// * ^concept[8].code = #215
// * ^concept[8].display = "Francia"
// * ^concept[9].code = #216
// * ^concept[9].display = "Germania"
// * ^concept[10].code = #219
// * ^concept[10].display = "Regno Unito"
// * ^concept[11].code = #220
// * ^concept[11].display = "Grecia"
// * ^concept[12].code = #221
// * ^concept[12].display = "Irlanda"
// * ^concept[13].code = #223
// * ^concept[13].display = "Islanda"
// * ^concept[14].code = #225
// * ^concept[14].display = "Liechtenstein"
// * ^concept[15].code = #226
// * ^concept[15].display = "Lussemburgo"
// * ^concept[16].code = #227
// * ^concept[16].display = "Malta"
// * ^concept[17].code = #229
// * ^concept[17].display = "Monaco"
// * ^concept[18].code = #231
// * ^concept[18].display = "Norvegia"
// * ^concept[19].code = #232
// * ^concept[19].display = "Paesi Bassi"
// * ^concept[20].code = #233
// * ^concept[20].display = "Polonia"
// * ^concept[21].code = #234
// * ^concept[21].display = "Portogallo"
// * ^concept[22].code = #235
// * ^concept[22].display = "Romania"
// * ^concept[23].code = #236
// * ^concept[23].display = "San Marino"
// * ^concept[24].code = #239
// * ^concept[24].display = "Spagna"
// * ^concept[25].code = #240
// * ^concept[25].display = "Svezia"
// * ^concept[26].code = #241
// * ^concept[26].display = "Svizzera"
// * ^concept[27].code = #243
// * ^concept[27].display = "Ucraina"
// * ^concept[28].code = #244
// * ^concept[28].display = "Ungheria"
// * ^concept[29].code = #245
// * ^concept[29].display = "Federazione russa"
// * ^concept[30].code = #246
// * ^concept[30].display = "Stato della Città del Vaticano"
// * ^concept[31].code = #247
// * ^concept[31].display = "Estonia"
// * ^concept[32].code = #248
// * ^concept[32].display = "Lettonia"
// * ^concept[33].code = #249
// * ^concept[33].display = "Lituania"
// * ^concept[34].code = #250
// * ^concept[34].display = "Croazia"
// * ^concept[35].code = #251
// * ^concept[35].display = "Slovenia"
// * ^concept[36].code = #252
// * ^concept[36].display = "Bosnia-Erzegovina"
// * ^concept[37].code = #253
// * ^concept[37].display = "Macedonia del Nord"
// * ^concept[38].code = #254
// * ^concept[38].display = "Moldova"
// * ^concept[39].code = #255
// * ^concept[39].display = "Slovacchia"
// * ^concept[40].code = #256
// * ^concept[40].display = "Bielorussia"
// * ^concept[41].code = #257
// * ^concept[41].display = "Repubblica ceca"
// * ^concept[42].code = #270
// * ^concept[42].display = "Montenegro"
// * ^concept[43].code = #271
// * ^concept[43].display = "Serbia"
// * ^concept[44].code = #272
// * ^concept[44].display = "Kosovo"
// * ^concept[45].code = #301
// * ^concept[45].display = "Afghanistan"
// * ^concept[46].code = #302
// * ^concept[46].display = "Arabia Saudita"
// * ^concept[47].code = #304
// * ^concept[47].display = "Bahrein"
// * ^concept[48].code = #305
// * ^concept[48].display = "Bangladesh"
// * ^concept[49].code = #306
// * ^concept[49].display = "Bhutan"
// * ^concept[50].code = #307
// * ^concept[50].display = "Myanmar/Birmania"
// * ^concept[51].code = #309
// * ^concept[51].display = "Brunei Darussalam"
// * ^concept[52].code = #310
// * ^concept[52].display = "Cambogia"
// * ^concept[53].code = #311
// * ^concept[53].display = "Sri Lanka"
// * ^concept[54].code = #314
// * ^concept[54].display = "Cina"
// * ^concept[55].code = #315
// * ^concept[55].display = "Cipro"
// * ^concept[56].code = #319
// * ^concept[56].display = "Corea del Nord"
// * ^concept[57].code = #320
// * ^concept[57].display = "Corea del Sud"
// * ^concept[58].code = #322
// * ^concept[58].display = "Emirati Arabi Uniti"
// * ^concept[59].code = #323
// * ^concept[59].display = "Filippine"
// * ^concept[60].code = #324
// * ^concept[60].display = "Palestina"
// * ^concept[61].code = #326
// * ^concept[61].display = "Giappone"
// * ^concept[62].code = #327
// * ^concept[62].display = "Giordania"
// * ^concept[63].code = #330
// * ^concept[63].display = "India"
// * ^concept[64].code = #331
// * ^concept[64].display = "Indonesia"
// * ^concept[65].code = #332
// * ^concept[65].display = "Iran"
// * ^concept[66].code = #333
// * ^concept[66].display = "Iraq"
// * ^concept[67].code = #334
// * ^concept[67].display = "Israele"
// * ^concept[68].code = #335
// * ^concept[68].display = "Kuwait"
// * ^concept[69].code = #336
// * ^concept[69].display = "Laos"
// * ^concept[70].code = #337
// * ^concept[70].display = "Libano"
// * ^concept[71].code = #338
// * ^concept[71].display = "Timor Leste"
// * ^concept[72].code = #339
// * ^concept[72].display = "Maldive"
// * ^concept[73].code = #340
// * ^concept[73].display = "Malaysia"
// * ^concept[74].code = #341
// * ^concept[74].display = "Mongolia"
// * ^concept[75].code = #342
// * ^concept[75].display = "Nepal"
// * ^concept[76].code = #343
// * ^concept[76].display = "Oman"
// * ^concept[77].code = #344
// * ^concept[77].display = "Pakistan"
// * ^concept[78].code = #345
// * ^concept[78].display = "Qatar"
// * ^concept[79].code = #346
// * ^concept[79].display = "Singapore"
// * ^concept[80].code = #348
// * ^concept[80].display = "Siria"
// * ^concept[81].code = #349
// * ^concept[81].display = "Thailandia"
// * ^concept[82].code = #351
// * ^concept[82].display = "Turchia"
// * ^concept[83].code = #353
// * ^concept[83].display = "Vietnam"
// * ^concept[84].code = #354
// * ^concept[84].display = "Yemen"
// * ^concept[85].code = #356
// * ^concept[85].display = "Kazakhstan"
// * ^concept[86].code = #357
// * ^concept[86].display = "Uzbekistan"
// * ^concept[87].code = #358
// * ^concept[87].display = "Armenia"
// * ^concept[88].code = #359
// * ^concept[88].display = "Azerbaigian"
// * ^concept[89].code = #360
// * ^concept[89].display = "Georgia"
// * ^concept[90].code = #361
// * ^concept[90].display = "Kirghizistan"
// * ^concept[91].code = #362
// * ^concept[91].display = "Tagikistan"
// * ^concept[92].code = #363
// * ^concept[92].display = "Taiwan"
// * ^concept[93].code = #364
// * ^concept[93].display = "Turkmenistan"
// * ^concept[94].code = #401
// * ^concept[94].display = "Algeria"
// * ^concept[95].code = #402
// * ^concept[95].display = "Angola"
// * ^concept[96].code = #404
// * ^concept[96].display = "Costa d'Avorio"
// * ^concept[97].code = #406
// * ^concept[97].display = "Benin"
// * ^concept[98].code = #408
// * ^concept[98].display = "Botswana"
// * ^concept[99].code = #409
// * ^concept[99].display = "Burkina Faso"
// * ^concept[100].code = #410
// * ^concept[100].display = "Burundi"
// * ^concept[101].code = #411
// * ^concept[101].display = "Camerun"
// * ^concept[102].code = #413
// * ^concept[102].display = "Capo Verde"
// * ^concept[103].code = #414
// * ^concept[103].display = "Repubblica Centrafricana"
// * ^concept[104].code = #415
// * ^concept[104].display = "Ciad"
// * ^concept[105].code = #417
// * ^concept[105].display = "Comore"
// * ^concept[106].code = #418
// * ^concept[106].display = "Congo"
// * ^concept[107].code = #419
// * ^concept[107].display = "Egitto"
// * ^concept[108].code = #420
// * ^concept[108].display = "Etiopia"
// * ^concept[109].code = #421
// * ^concept[109].display = "Gabon"
// * ^concept[110].code = #422
// * ^concept[110].display = "Gambia"
// * ^concept[111].code = #423
// * ^concept[111].display = "Ghana"
// * ^concept[112].code = #424
// * ^concept[112].display = "Gibuti"
// * ^concept[113].code = #425
// * ^concept[113].display = "Guinea"
// * ^concept[114].code = #426
// * ^concept[114].display = "Guinea-Bissau"
// * ^concept[115].code = #427
// * ^concept[115].display = "Guinea equatoriale"
// * ^concept[116].code = #428
// * ^concept[116].display = "Kenya"
// * ^concept[117].code = #429
// * ^concept[117].display = "Lesotho"
// * ^concept[118].code = #430
// * ^concept[118].display = "Liberia"
// * ^concept[119].code = #431
// * ^concept[119].display = "Libia"
// * ^concept[120].code = #432
// * ^concept[120].display = "Madagascar"
// * ^concept[121].code = #434
// * ^concept[121].display = "Malawi"
// * ^concept[122].code = #435
// * ^concept[122].display = "Mali"
// * ^concept[123].code = #436
// * ^concept[123].display = "Marocco"
// * ^concept[124].code = #437
// * ^concept[124].display = "Mauritania"
// * ^concept[125].code = #438
// * ^concept[125].display = "Maurizio"
// * ^concept[126].code = #440
// * ^concept[126].display = "Mozambico"
// * ^concept[127].code = #441
// * ^concept[127].display = "Namibia"
// * ^concept[128].code = #442
// * ^concept[128].display = "Niger"
// * ^concept[129].code = #443
// * ^concept[129].display = "Nigeria"
// * ^concept[130].code = #446
// * ^concept[130].display = "Ruanda"
// * ^concept[131].code = #448
// * ^concept[131].display = "Sao Tomé e Principe"
// * ^concept[132].code = #449
// * ^concept[132].display = "Seychelles"
// * ^concept[133].code = #450
// * ^concept[133].display = "Senegal"
// * ^concept[134].code = #451
// * ^concept[134].display = "Sierra Leone"
// * ^concept[135].code = #453
// * ^concept[135].display = "Somalia"
// * ^concept[136].code = #454
// * ^concept[136].display = "Sudafrica"
// * ^concept[137].code = #455
// * ^concept[137].display = "Sudan"
// * ^concept[138].code = #456
// * ^concept[138].display = "Eswatini"
// * ^concept[139].code = #457
// * ^concept[139].display = "Tanzania"
// * ^concept[140].code = #458
// * ^concept[140].display = "Togo"
// * ^concept[141].code = #460
// * ^concept[141].display = "Tunisia"
// * ^concept[142].code = #461
// * ^concept[142].display = "Uganda"
// * ^concept[143].code = #463
// * ^concept[143].display = "Repubblica Democratica del Congo"
// * ^concept[144].code = #464
// * ^concept[144].display = "Zambia"
// * ^concept[145].code = #465
// * ^concept[145].display = "Zimbabwe"
// * ^concept[146].code = #466
// * ^concept[146].display = "Eritrea"
// * ^concept[147].code = #467
// * ^concept[147].display = "Sud Sudan"
// * ^concept[148].code = #503
// * ^concept[148].display = "Antigua e Barbuda"
// * ^concept[149].code = #505
// * ^concept[149].display = "Bahamas"
// * ^concept[150].code = #506
// * ^concept[150].display = "Barbados"
// * ^concept[151].code = #507
// * ^concept[151].display = "Belize"
// * ^concept[152].code = #509
// * ^concept[152].display = "Canada"
// * ^concept[153].code = #513
// * ^concept[153].display = "Costa Rica"
// * ^concept[154].code = #514
// * ^concept[154].display = "Cuba"
// * ^concept[155].code = #515
// * ^concept[155].display = "Dominica"
// * ^concept[156].code = #516
// * ^concept[156].display = "Repubblica Dominicana"
// * ^concept[157].code = #517
// * ^concept[157].display = "El Salvador"
// * ^concept[158].code = #518
// * ^concept[158].display = "Giamaica"
// * ^concept[159].code = #519
// * ^concept[159].display = "Grenada"
// * ^concept[160].code = #523
// * ^concept[160].display = "Guatemala"
// * ^concept[161].code = #524
// * ^concept[161].display = "Haiti"
// * ^concept[162].code = #525
// * ^concept[162].display = "Honduras"
// * ^concept[163].code = #527
// * ^concept[163].display = "Messico"
// * ^concept[164].code = #529
// * ^concept[164].display = "Nicaragua"
// * ^concept[165].code = #530
// * ^concept[165].display = "Panama"
// * ^concept[166].code = #532
// * ^concept[166].display = "Santa Lucia"
// * ^concept[167].code = #533
// * ^concept[167].display = "Saint Vincent e Grenadine"
// * ^concept[168].code = #534
// * ^concept[168].display = "Saint Kitts e Nevis"
// * ^concept[169].code = #536
// * ^concept[169].display = "Stati Uniti d'America"
// * ^concept[170].code = #602
// * ^concept[170].display = "Argentina"
// * ^concept[171].code = #604
// * ^concept[171].display = "Bolivia"
// * ^concept[172].code = #605
// * ^concept[172].display = "Brasile"
// * ^concept[173].code = #606
// * ^concept[173].display = "Cile"
// * ^concept[174].code = #608
// * ^concept[174].display = "Colombia"
// * ^concept[175].code = #609
// * ^concept[175].display = "Ecuador"
// * ^concept[176].code = #612
// * ^concept[176].display = "Guyana"
// * ^concept[177].code = #614
// * ^concept[177].display = "Paraguay"
// * ^concept[178].code = #615
// * ^concept[178].display = "Perù"
// * ^concept[179].code = #616
// * ^concept[179].display = "Suriname"
// * ^concept[180].code = #617
// * ^concept[180].display = "Trinidad e Tobago"
// * ^concept[181].code = #618
// * ^concept[181].display = "Uruguay"
// * ^concept[182].code = #619
// * ^concept[182].display = "Venezuela"
// * ^concept[183].code = #701
// * ^concept[183].display = "Australia"
// * ^concept[184].code = #703
// * ^concept[184].display = "Figi"
// * ^concept[185].code = #708
// * ^concept[185].display = "Kiribati"
// * ^concept[186].code = #712
// * ^concept[186].display = "Isole Marshall"
// * ^concept[187].code = #713
// * ^concept[187].display = "Stati Federati di Micronesia"
// * ^concept[188].code = #715
// * ^concept[188].display = "Nauru"
// * ^concept[189].code = #719
// * ^concept[189].display = "Nuova Zelanda"
// * ^concept[190].code = #720
// * ^concept[190].display = "Palau"
// * ^concept[191].code = #721
// * ^concept[191].display = "Papua Nuova Guinea"
// * ^concept[192].code = #725
// * ^concept[192].display = "Isole Salomone"
// * ^concept[193].code = #727
// * ^concept[193].display = "Samoa"
// * ^concept[194].code = #730
// * ^concept[194].display = "Tonga"
// * ^concept[195].code = #731
// * ^concept[195].display = "Tuvalu"
// * ^concept[196].code = #732
// * ^concept[196].display = "Vanuatu"
// * ^concept[197].code = #902
// * ^concept[197].display = "Nuova Caledonia"
// * ^concept[198].code = #904
// * ^concept[198].display = "Saint-Martin (FR)"
// * ^concept[199].code = #905
// * ^concept[199].display = "Sahara occidentale"
// * ^concept[200].code = #906
// * ^concept[200].display = "Saint-Barthélemy"
// * ^concept[201].code = #908
// * ^concept[201].display = "Bermuda"
// * ^concept[202].code = #909
// * ^concept[202].display = "Isole Cook (NZ)"
// * ^concept[203].code = #910
// * ^concept[203].display = "Gibilterra"
// * ^concept[204].code = #911
// * ^concept[204].display = "Isole Cayman"
// * ^concept[205].code = #917
// * ^concept[205].display = "Anguilla"
// * ^concept[206].code = #920
// * ^concept[206].display = "Polinesia francese"
// * ^concept[207].code = #924
// * ^concept[207].display = "Isole Fær Øer"
// * ^concept[208].code = #925
// * ^concept[208].display = "Jersey"
// * ^concept[209].code = #926
// * ^concept[209].display = "Aruba"
// * ^concept[210].code = #928
// * ^concept[210].display = "Sint Maarten (NL)"
// * ^concept[211].code = #934
// * ^concept[211].display = "Groenlandia"
// * ^concept[212].code = #939
// * ^concept[212].display = "Sark"
// * ^concept[213].code = #940
// * ^concept[213].display = "Guernsey"
// * ^concept[214].code = #958
// * ^concept[214].display = "Isole Falkland (Malvine)"
// * ^concept[215].code = #959
// * ^concept[215].display = "Isola di Man"
// * ^concept[216].code = #964
// * ^concept[216].display = "Montserrat"
// * ^concept[217].code = #966
// * ^concept[217].display = "Curaçao"
// * ^concept[218].code = #972
// * ^concept[218].display = "Isole Pitcairn"
// * ^concept[219].code = #980
// * ^concept[219].display = "Saint Pierre e Miquelon"
// * ^concept[220].code = #983
// * ^concept[220].display = "Sant'Elena"
// * ^concept[221].code = #988
// * ^concept[221].display = "Terre australi e antartiche francesi"
// * ^concept[222].code = #992
// * ^concept[222].display = "Isole Turks e Caicos"
// * ^concept[223].code = #994
// * ^concept[223].display = "Isole Vergini britanniche"
// * ^concept[224].code = #997
// * ^concept[224].display = "Wallis e Futuna"
// * ^concept[225].code = #998
// * ^concept[225].display = "Altro/Non indicato/In corso di definizione"
// * ^concept[226].code = #888
// * ^concept[226].display = "Non cittadini riconosciuti"
// * ^concept[227].code = #999
// * ^concept[227].display = "Apolide"

CodeSystem: CsMDSIdStruttureInterne
Id: cs-mds-idStruttureInterne
Title: "MDS - ID Strutture Interne di Ricovero"
Description: "MDS - Identificativi Strutture Interne di Ricovero"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^status = #active
* ^caseSensitive = true 

* #010030.01 "OSPEDALE CIVILE E.AGNELLI"
* #010030.03 "OSPEDALE DI POMARETTO"
* #010079.01 "OSPEDALE DEGLI INFERMI"
* #010079.02 "OSPEDALE CIVILE DI GIAVENO"
* #010079.04 "OSPEDALE CIVILE DI SUSA"
* #010079.05 "OSPEDALE DI VENARIA"
* #010079.06 "UNITA' AUTONOMA DI DAY SURGERY DI AVIGLI"
* #010019.01 "PRESIDIO OSPED. RIUNITO SEDE DI CIRIE'"
* #010019.03 "PRESIDIO OSPED. RIUNITO SEDE DI LANZO"
* #010023.01 "OSPEDALE CIVILE DI IVREA"
* #010023.02 "OSPEDALE CIVILE DI CUORGNE'"
* #010023.04 "SAAPA S.P.A."
* #010004.01 "OSPEDALE MAGGIORE"
* #010004.02 "OSPEDALE SANTA CROCE"
* #010004.03 "OSPEDALE SAN LORENZO"
* #010004.04 "DAY SURGERY DEL DISTRETTO DI NICHELINO"
* #010009.01 "OSPEDALE SANT'ANDREA"
* #010009.02 "OSPEDALE SS.PIETRO E PAOLO"
* #010005.01 "OSPEDALE SAN BIAGIO"
* #010005.02 "STABILIMENTO OSPEDALIERO CASTELLI"
* #010005.03 "C.O.Q. OSPEDALE MADONNA DEL POPOLO"
* #010124.01 "OSPEDALE DI MONDOVI' CN1"
* #010124.02 "NUOVO OSPEDALE DI CEVA CN1"
* #010126.01 "OSP. MAGGIORE SS. ANNUNZIATA SAVIGLIANO"
* #010126.02 "OSP. CIVILE DI SALUZZO CN1"
* #010120.01 "OSPEDALE SAN LAZZARO - ALBA"
* #010120.02 "OSPEDALE SANTO SPIRITO BRA"
* #010008.01 "PRESIDIO OSP. CARDINAL G. MASSAIA"
* #010008.02 "PRESIDIO OSPEDALIERO S. SPIRITO-VALLE BE"
* #010026.01 "OSPEDALE SANTO SPIRITO CASALE"
* #010026.03 "OSPEDALE SS. ANTONIO E MARGHERITA TORTON"
* #010026.04 "OSPEDALE SAN GIACOMO NOVI"
* #010026.05 "OSPEDALE CIVILE ACQUI"
* #010026.06 "OSPEDALE CIVILE OVADA"
* #010905.01 "OSP. MAGGIORE DELLA CARITA'"
* #010905.02 "OSPEDALE SAN ROCCO GALLIATE"
* #010907.01 "OSP.CIVILE SS.ANTONIO E BIAGIO"
* #010907.02 "OSP. INFANTILE C.ARRIGO"
* #010907.03 "CENTRO RIABILITATIVO POLIFUNZIONALE T.BO"
* #010909.01 "OSPEDALE SAN GIOVANNI BATTISTA MOLINETTE"
* #010909.02 "OSPEDALE DERMATOLOGICO SAN LAZZARO"
* #010909.04 "OSPEDALE CENTRO TRAUMATOLOGICO ORTOPEDIC"
* #010909.05 "ISTITUTO CHIRURGICO ORTOPEDICO REGINA MA"
* #010909.06 "OSPEDALE OSTETRICO GINECOLOGICO SANT'ANN"
* #010909.07 "OSPEDALE INFANTANTILE REGINA MARGHERITA"
* #030914 "OSPEDALE S. PAOLO - MILANO"
* #030915 "OSPEDALE S. CARLO BORROMEO - MILANO"
* #030056 "PRESIDIO OSPED. V. BUZZI - MILANO"
* #030057 "OSPEDALE M. MELLONI - MILANO"
* #030910 "OSPEDALE FATEBENEFRATELLI E OFTALMICO -"
* #030916 "OSPEDALE L. SACCO - MILANO"
* #030911 "ISTITUTO ORTOPEDICO GAETANO PINI - MILAN"
* #030912 "P.O. CENTRO TRAUMATOLOGICO ORTOPEDICO -"
* #030074 "OSPEDALE CIVILE G. FORNAROLI - MAGENTA"
* #030075 "OSPEDALE C.CANTU'-ABBIATEGRASSO"
* #030281.01 "OSPEDALE DI LEGNANO E CUGGIONO-LEGNANO"
* #030281.02 "OSPEDALE DI LEGNANO E CUGGIONO-LEGNANO"
* #030066 "OSPEDALE G.SALVINI-GARBAGNATE MIL.SE"
* #030073 "OSPEDALE DI CIRCOLO - RHO"
* #030087 "OSPEDALE CADUTI BOLLATESI - BOLLATE"
* #030283 "OSPEDALE G.CASATI-PASSIRANA RHO"
* #030051 "P.O.  CITTA' DI SESTO S. GIOVANNI"
* #030058 "OSPEDALE BASSINI - CINISELLO BALSAMO"
* #030071.01 "OSPEDALE S. MARIA DELLE STELLE MELZO"
* #030071.02 "OSPEDALE S. MARIA DELLE STELLE MELZO"
* #030072.01 "OSPEDALE DI  VIZZOLO PREDABISSI"
* #030072.02 "OSPEDALE DI  VIZZOLO PREDABISSI"
* #030085.01 "OSPEDALE UBOLDO - CERNUSCO S/NAVIGLIO"
* #030085.02 "OSPEDALE UBOLDO - CERNUSCO S/NAVIGLIO"
* #030067 "OSPEDALE MAGGIORE DI LODI"
* #030079 "OSPEDALE CIVICO - CODOGNO"
* #030080 "OSPEDALE ROSSI - CASALPUSTERLENGO"
* #030083 "OSPEDALE DELMATI - SANT'ANGELO LODIGIANO"
* #030010 "OSPEDALE GALMARINI - TRADATE"
* #030282.01 "PRESIDIO OSPEDALIERO DEL VERBANO"
* #030282.02 "PRESIDIO OSPEDALIERO DEL VERBANO"
* #030901.01 "PRESIDIO OSPEDALIERO DI VARESE"
* #030901.02 "PRESIDIO OSPEDALIERO DI VARESE"
* #030901.03 "PRESIDIO OSPEDALIERO DI VARESE"
* #030004 "OSPEDALE DI CIRCOLO - BUSTO ARSIZIO"
* #030006 "OSP. S. ANTONIO ABATE - GALLARATE"
* #030008 "OSP. GENERALE PROVINCIALE - SARONNO"
* #030009 "OSPEDALE A.BELLINI - SOMMA LOMBARDO"
* #030012 "OSPEDALE CARLO ONDOLI - ANGERA"
* #030022 "OSPEDALE S. ANTONIO ABATE - CANTU'"
* #030025 "OSPEDALE F. VILLA - MARIANO COMENSE"
* #030902 "OSPEDALE S. ANNA - COMO"
* #030026 "OSPEDALE ERBA-  RENALDI - MENAGGIO"
* #030042 "OSPEDALE SONDRIO"
* #030044 "OSPEDALE DI CHIAVENNA"
* #030045 "OSPEDALE  MORBEGNO"
* #030904 "OSPEDALE MORELLI - SONDALO"
* #030274.01 "OSPEDALE VALCAMONICA - ESINE"
* #030274.02 "OSPEDALE VALCAMONICA - ESINE"
* #030023 "OSPEDALE  UMBERTO I -  BELLANO"
* #030024 "OSPEDALE DI CIRCOLO S.L.MANDIC-MERATE"
* #030903 "OSPEDALE DI CIRCOLO A. MANZONI - LECCO"
* #030068 "PRESIDIO OSPEDALIERO DI DESIO"
* #030909 "OSPEDALE S.GERARDO - MONZA"
* #030070 "PRESIDIO OSPEDALIERO DI CARATE"
* #030078 "PRESIDIO OSPEDALIERO DI VIMERCATE"
* #030081 "PRESIDIO OSPEDALIERO DI GIUSSANO"
* #030082 "P.O. TRABATTONI RONZONI DI SEREGNO"
* #030132 "OSPEDALE CIVILE - S.GIOVANNI BIANCO"
* #030905 "OSPEDALE PAPA GIOVANNI XXIII - BG"
* #030131 "OSPEDALE DI TREVIGLIO E CARAVAGGIO"
* #030138 "OSP.LE SS.TRINITA'-ROMANO DI LOMBARDIA"
* #030133 "OSPEDALE PESENTI FENAROLI - ALZANO L."
* #030136 "OSPEDALE BRIOLINI - GAZZANIGA"
* #030137 "OSP.LE SS.CAPITANIO E GEROSA - LOVERE"
* #030140 "OSPEDALE BOLOGNINI - SERIATE"
* #030382 "OSPEDALE M. O. ANTONIO LOCATELLI-PIARIO"
* #030159 "PRESIDIO OSPEDALIERO DI MONTICHIARI"
* #030162 "PRESIDIO OSPEDALIERO GARDONE V.T."
* #030167 "OSPEDALE DEI BAMBINI - BRESCIA"
* #030906 "PRES.OSPEDAL.SPEDALI CIVILI BRESCIA"
* #030154.01 "PRESIDIO OSPEDALIERO DI CHIARI"
* #030154.02 "PRESIDIO OSPEDALIERO DI CHIARI"
* #030163 "PRESIDIO OSPEDALIERO DI ISEO"
* #030156 "OSPEDALE DI DESENZANO"
* #030157 "OSPEDALE CIVILE LA MEMORIA DI GAVARDO"
* #030158 "OSPEDALE DI LENO"
* #030161 "PRESIDIO OSPEDALIERO DI SALO'"
* #030183 "OSPEDALE VILLA DEI COLLI DI LONATO"
* #030184 "OSPEDALE DI MANERBIO"
* #030273 "PRESIDIO OSPEDALIERO OGLIO PO-CASALMAGGI"
* #030908 "ISTITUTI OSPITALIERI - CREMONA"
* #030227.01 "PRESIDIO OSPEDALIERO - ASOLA"
* #030227.02 "PRESIDIO OSPEDALIERO - ASOLA"
* #030239 "OSP.CIVILE DESTRA SECCHIA-PIEVE CORIANO"
* #030907 "OSPEDALE C. POMA - MANTOVA"
* #030209 "OSPEDALE MAGGIORE - CREMA"
* #030215 "OSPEDALE S. MARTA - RIVOLTA D'ADDA"
* #030189 "OSPEDALE ARNABOLDI - BRONI"
* #030190 "OSPEDALE CARLO MIRA-CASORATE PRIMO"
* #030191 "OSPEDALE S.MARTINO - MEDE"
* #030192 "OSPEDALE SS.ANNUNZIATA - VARZI"
* #030193 "OSPEDALE CIVILE - VIGEVANO"
* #030194 "OSPEDALE CIVILE - VOGHERA"
* #030203 "OSPEDALE ASILO VITTORIA - MORTARA"
* #030383 "NUOVO OSPEDALE DI BRONI E STRADELLA"
* #030936.01 "IST.AUXOLOGICO ITALIANO-I.S. S.LUCA-MILA"
* #030936.02 "IST.AUXOLOGICO ITAL.-I.S. S.MICHELE-MILA"
* #030936.03 "IRCCS OSPEDALE CAPITANIO"
* #042001.01 "PRESIDIO OSPEDALIERO S. CHIARA"
* #042001.03 "PRESIDIO OSPEDALIERO VILLA ROSA"
* #042001.04 "PRESIDIO OSPEDALIERO VILLA IGEA"
* #050201.01 "OSPEDALE S. MARTINO BELLUNO"
* #050201.03 "OSPEDALE DI AGORDO"
* #050201.04 "OSPEDALE DI PIEVE DI CADORE"
* #050202.01 "OSPEDALE DI FELTRE 'S. MARIA DEL PRATO'"
* #050202.02 "OSPEDALE DI LAMON 'CASA CHARITAS'"
* #050203.01 "OSPEDALE `SAN BASSIANO` DI BASSANO D.G."
* #050203.02 "OSPEDALE DI ASIAGO"
* #050205.01 "OSPEDALE DI ARZIGNANO"
* #050205.02 "OSPEDALE  DI LONIGO"
* #050205.03 "OSPEDALE DI MONTECCHIO"
* #050205.04 "OSPEDALE DI VALDAGNO"
* #050206.01 "PRES. OSPED. VICENZA"
* #050206.02 "PRES. OSP.  NOVENTA VICENTINA"
* #050140.01 "ASSOCIAZIONE LA NS. FAMIGLIA IRCSS MEDEA"
* #050140.02 "ASSOCIAZIONE LA NS.FAMIGLIA IRCSS MEDEA"
* #050207.01 "OSPEDALE DI CONEGLIANO"
* #050207.02 "OSPEDALE DI VITTORIO VENETO"
* #050208.01 "OSPEDALE DI CASTELFRANCO VENETO"
* #050208.02 "OSPEDALE DI MONTEBELLUNA"
* #050209.01 "OSPEDALE CA' FONCELLO"
* #050209.02 "OSPEDALE DI ODERZO"
* #050210.01 "PRESIDIO OSPEDALIERO DI PORTOGRUARO"
* #050210.02 "PRESIDIO OSPEDALIERO DI SAN DONA` DI P."
* #050210.03 "PRESIDIO OSPEDALIERO DI JESOLO"
* #050212.01 "OSPEDALE CIVILE VENEZIA"
* #050212.02 "PUNTO PRIMO INTERVENTO LIDO"
* #050212.04 "OSPEDALE DELL'ANGELO"
* #050213.01 "OSPEDALE  DI DOLO"
* #050213.02 "OSPEDALE  DI MIRANO"
* #050213.03 "OSPEDALE DI NOALE"
* #050215.01 "PRESIDIO OSPEDALIERO DI CAMPOSAMPIERO"
* #050215.02 "PRESIDIO OSPEDALIERO DI CITTADELLA"
* #050216.01 "OSPEDALE SANT`ANTONIO"
* #050216.05 "OSP. IMMACOL. CONCEZ. DI PIOVE DI SACCO"
* #050217.03 "SEDE MONTAGNANA"
* #050217.04 "SEDE CONSELVE"
* #050217.05 "OSPEDALI RIUNITI PADOVA SUD"
* #050218.01 "P.O. DI ROVIGO"
* #050218.02 "P.O. DI TRECENTA"
* #050220.04 "PRESIDIO OSP. MARZANA"
* #050220.05 "POLO OSP. DELL'EST VERONESE"
* #050220.06 "PSICHIATRIA SEZIONE B.GO TRENTO - VERONA"
* #050221.01 "OSPEDALE PER ACUTI"
* #050221.03 "OSPEDALE S.BIAGIO BOVOLONE"
* #050222.01 "OSPEDALE CIVILE ORLANDI BUSSOLENGO"
* #050222.02 "OSPEDALE ISOLA DELLA SCALA"
* #050222.04 "OSPEDALE DI MALCESINE"
* #050222.05 "OSPEDALE MAGALINI - VILLAFRANCA DI VR"
* #050912.01 "OSPEDALE CIVILE MAGGIORE"
* #050912.02 "OSPEDALE POLICLINICO"
* #060043.01 "PO Gorizia e Monfalcone sede Gorizia"
* #060043.02 "PO Gorizia e Monfalcone sede Monfalcone"
* #060044.01 "PO Latisana e Palmanova sede Latisana"
* #060044.02 "PO Latisana e Palmanova sede Palmanova"
* #060045.01 "Sede di San Daniele"
* #060045.02 "Sede di Tolmezzo"
* #060045.03 "Sede di Gemona"
* #060047.01 "PRESIDIO OSPEDALIERO SMM - SEDE UDINE"
* #060047.02 "PRESIDIO OSPEDAL. SMM - SEDE CIVIDALE"
* #060042.01 "P.O. San Vito al T. sede di S. Vito al T"
* #060042.02 "P.O. San Vito al T. sede di Spilimbergo"
* #070001.01 "STABILIMENTO OSPEDALIERO DI IMPERIA"
* #070001.02 "STABILIMENTO OSPEDALIERO DI SANREMO"
* #070001.03 "STABILIMENTO OSPEDALIERO DI BORDIGHERA"
* #070211.01 "OSPEDALE SANTA MARIA MISERICORDIA"
* #070211.02 "OSPEDALE SANTA CORONA"
* #070212.03 "OSPEDALE SAN GIUSEPPE"
* #070212.04 "OSPEDALE SAN PAOLO"
* #070051.01 "EVANGELICO Internazionale CASTELLETTO"
* #070051.02 "EVANGELICO-SAN CARLO VOLTRI"
* #070301.01 "OSPEDALE LA COLLETTA ARENZANO"
* #070301.03 "OSPEDALE PADRE ANTERO MICONE SESTRI P."
* #070301.04 "OSPEDALE VILLA SCASSI"
* #070301.05 "OSPEDALE GALLINO"
* #070039.01 "OSP. RIUNITI LEONARDI E RIBOLI LAVAGNA"
* #070039.02 "OSPEDALE CIVILE DI SESTRI LEVANTE"
* #070039.05 "OSPEDALE N.S. DI MONTALLEGRO"
* #070058.01 "OSPEDALE SANT`ANDREA LA SPEZIA"
* #070058.03 "OSPEDALE SAN NICOLO` LEVANTO"
* #070058.04 "STABILIMENTO SAN BARTOLOMEO DI SARZANA"
* #080004.01 "OSPEDALE GUGLIELMO DA SALICETO PIACENZA"
* #080004.02 "OSPEDALE BOBBIO"
* #080004.03 "OSPEDALE CASTEL SAN GIOVANNI"
* #080004.04 "OSPEDALE BORGONOVO VAL TIDONE"
* #080004.05 "OSPEDALE FIORENZUOLA D'ARDA"
* #080004.06 "CENTRO DI RECUPERO E RIABILITAZIONE FUNZ"
* #080013.01 "OSPEDALE FIDENZA"
* #080013.03 "OSPEDALE 'S.MARIA' BORGO VAL DI TARO"
* #080021.01 "OSPEDALE CIVILE GUASTALLA"
* #080021.02 "OSPEDALE S.SEBASTIANO CORREGGIO"
* #080021.03 "OSPEDALE E.FRANCHINI MONTECCHIO"
* #080021.04 "OSPEDALE G.MAGATI SCANDIANO"
* #080021.05 "OSPEDALE S.ANNA CASTELNOVO NE MONTI"
* #080031.04 "OSPEDALE B. RAMAZZINI  CARPI"
* #080031.05 "OSPEDALE SANTA MARIA BIANCA  MIRANDOLA"
* #080031.08 "OSPEDALE VIGNOLA"
* #080031.09 "OSPEDALE PAVULLO NEL FRIGNANO"
* #080031.10 "NUOVO OSPEDALE CIVILE  S.AGOSTINO - ESTE"
* #080053.01 "OSPEDALE MAGGIORE C.A. PIZZARDI"
* #080053.02 "OSPEDALE BELLARIA"
* #080053.03 "OSPEDALE DOSSETTI  BAZZANO"
* #080053.04 "OSPEDALE A. COSTA PORRETTA TERME (ALTO"
* #080053.05 "OSPEDALE VERGATO"
* #080053.06 "OSPEDALE SIMIANI LOIANO"
* #080053.07 "OSPEDALE BENTIVOGLIO"
* #080053.08 "OSPEDALE BUDRIO"
* #080053.09 "OSPEDALE S.SALVATORE  S. GIOVANNI IN P"
* #080044.01 "OSPEDALE CIVILE NUOVO S.MARIA DELLA SCA"
* #080044.02 "OSPEDALE CASTEL SAN PIETRO TERME"
* #080068.03 "OSPEDALE DEL DELTA"
* #080068.04 "OSPEDALE MAZZOLANI VANDINI ARGENTA"
* #080068.06 "STABILIMENTO OSPEDALIERO SS. ANNUNZIATA"
* #080085.01 "OSPEDALE MORGAGNI-PIERANTONI FORLI'"
* #080085.03 "OSPEDALE NEFETTI SANTA SOFIA"
* #080091.01 "OSPEDALE MAURIZIO BUFALINI CESENA"
* #080091.02 "OSPEDALE GINESIO MARCONI CESENATICO"
* #080091.03 "OSPEDALE PIETRO ANGIOLONI BAGNO DI ROM"
* #080095.01 "OSPEDALE INFERMI RIMINI"
* #080095.02 "OSPEDALE FRANCHINI SANTARCANGELO DI RO"
* #080095.03 "OSPEDALE SACRA FAMIGLIA NOVAFELTRIA"
* #080100.01 "OSPEDALE CECCARINI RICCIONE"
* #080100.02 "OSPEDALE CERVESI CATTOLICA"
* #080903.01 "AZIENDA OSPEDALIERA DI REGGIO EMILIA-S."
* #080903.02 "AZIENDA OSPEDALIERA DI REGGIO EMILIA - I"
* #090606.01 "OSPEDALE SAN JACOPO"
* #090606.02 "OSPEDALE LORENZO PACINI"
* #090629.01 "OSPEDALE S.M.ANNUNZIATA"
* #090629.02 "OSPEDALE SERRISTORI"
* #090632.01 "SANTA MARIA NUOVA"
* #090632.02 "ISTITUTO ORTOPEDICO TOSCANO"
* #090632.03 "OSP. S. GIOVANNI DI DIO TORREGALLI"
* #090632.06 "OBLATE AZIENDA SANITARIA FIRENZE"
* #090642.02 "OSPEDALE S. GIUSEPPE"
* #090642.03 "OSPEDALE SAN PIETRO IGNEO"
* #090642.04 "OSPEDALE DEGLI INFERMI"
* #090601.01 "OSP. S. ANTONIO ABATE FIVIZZANO   (MS)"
* #090601.02 "OSP. CIV. S.ANTONIO  PONTREMOLI (MS)"
* #090602.01 "STABILIMENTO OSPEDALIERO DI CARRARA"
* #090602.03 "OSPEDALE  DELLE APUANE"
* #090603.01 "OSPEDALE SANTA CROCE"
* #090603.02 "OSPEDALE SAN FRANCESCO"
* #090610.01 "P.O. F. LOTTI STABILIMENTO DI PONTEDERA"
* #090610.02 "SPDC AZIENDALE ASL5"
* #090236.01 "CASA DI CURA POGGIO DEL SOLE"
* #090236.02 "CENTRO CHIRURGICO TOSCANO SRL"
* #090624.02 "OSPEDALE DI ORBETELLO"
* #090624.03 "OSPEDALE DI PITIGLIANO"
* #090907.01 "FONDAZIONE CNR-RT G. MONASTERIO"
* #090907.02 "OSPEDALE DEL CUORE G. PASQUINUCCI"
* #100801.01 "OSPEDALE DI CITTA` DI CASTELLO"
* #100801.02 "OSPEDALE DI UMBERTIDE"
* #100803.01 "STAB.OSPEDALIERO CASTIGLIONE DEL LAGO"
* #100803.02 "STAB.OSPEDALIERO CITTA`DELLA PIEVE"
* #100803.03 "C.O.R.I. - PASSIGNANO"
* #100803.04 "STAB. OSPEDALIERO ASSISI"
* #100803.07 "STAB. OSPEDALIERO MEDIA VALLE DEL TEVERE"
* #100805.01 "OSPEDALE CIVILE SAN MATTEO DEGLI INFERMI"
* #100805.02 "OSPEDALE CIVILE DI NORCIA"
* #100805.03 "OSPEDALE S.RITA CASCIA"
* #100807.01 "STABILIMENTO OSPEDALIERO DI NARNI"
* #100807.02 "STABILIMENTO OSPEDALIERO DI AMELIA"
* #100807.03 "DOMUS GRATIAE"
* #100809.01 "OSPEDALE SAN GIOVANNI BATTISTA FOLIGNO"
* #100809.02 "STABILIMENTO DI TREVI"
* #110001.01 "OSP S. MARIA DELLA MISERICORDIA - URBINO"
* #110001.02 "OSPEDALE SS DONNINO E CARLO - PERGOLA"
* #110001.03 "OSPEDALE CELLI - CAGLI"
* #110001.04 "OSPEDALE LANCIARINI - SASSOCORVARO"
* #110001.05 "OSPEDALE CIVILE - FOSSOMBRONE"
* #110002.01 "PRESIDIO OSPEDALIERO ZT 4 - SENIGALLIA"
* #110002.02 "OSPEDALE CARLO URBANI DI JESI"
* #110002.03 "OSP. SS. BENVENUTO E ROCCO - OSIMO"
* #110002.04 "OSPEDALE CIVILE 'E.PROFILI' - FABRIANO"
* #110002.05 "OSPEDALE SANTA CASA - LORETO"
* #110002.06 "OSPEDALE GENERALE DI ZONA - CINGOLI"
* #110003.01 "OSPEDALE GENERALE DI ZONA - CIVITANOVA"
* #110003.02 "OSPEDALE GENERALE PROVINCIALE - MACERATA"
* #110003.03 "OSPEDALE S.MARIA DELLA PIETA` - CAMERINO"
* #110003.04 "OSPEDALE B.EUSTACCHIO - S. SEVERINO M."
* #110003.05 "OSPEDALE DI TREIA"
* #110003.06 "OSPEDALE DI TOLENTINO"
* #110003.07 "OSPEDALE CIVILE SANTA LUCIA - RECANATI"
* #110003.08 "OSPEDALE S.SOLLECITO - MATELICA"
* #110004.01 "OSPEDALE DI FERMO"
* #110004.02 "OSPEDALE VITTORIO EMANUELE II - AMANDOLA"
* #110005.01 "MADONNA DEL SOCCORSO - S.BENEDETTO"
* #110005.02 "OSP. GEN."
* #110901.01 "OSPEDALE SAN SALVATORE - PESARO"
* #110901.02 "OSPEDALE SANTA CROCE - FANO"
* #110905.01 "PRESIDIO OSPEDALIERO UMBERTO I°"
* #110905.02 "PRESIDIO OSPEDALIERO G.M.LANCISI"
* #110905.03 "PRESIDIO OSPEDALIERO G.SALESI"
* #110921.01 "OSPEDALE INRCA - ANCONA"
* #110921.02 "OSPEDALE INRCA - FERMO"
* #120204.01 "ALFREDO FIORINI TERRACINA"
* #120204.02 "SAN GIOVANNI DI DIO FONDI"
* #120204.03 "REGINA ELENA PRIVERNO"
* #120026.01 "OSPEDALE SANTO SPIRITO"
* #120026.02 "VILLA BETANIA"
* #120285.01 "PRESIDIO SAN FILIPPO NERI"
* #120285.03 "PRESIDIO CASSIA SANT'ANDREA"
* #120285.05 "SALUS INFIRMORUM"
* #120066.01 "OSPEDALE S.EUGENIO"
* #120066.02 "OSPEDALE CTO.A.ALESINI"
* #120044.01 "OSPEDALE SAN GIUSEPPE ALBANO L."
* #120044.02 "OSPEDALE E. DE SANTIS GENZANO"
* #120904.01 "OSPEDALE PEDIATRICO BAMBINO GESU`"
* #120904.02 "OSPEDALE PEDIATRICO BAMBINO GESU`"
* #120904.03 "OSPEDALE PEDIATRICO BAMBINO GESU`"
* #120905.01 "POLICLINICO UNIVERSITARIO A. GEMELLI"
* #120905.02 "COMPLESSO INTEGRATO COLUMBUS (C.I.C.)"
* #120908.01 "IFO - ISTITUTO REGINA ELENA"
* #120908.02 "IFO - ISTITUTO SAN GALLICANO"
* #140002.01 "OSPEDALE S. TIMOTEO- TERMOLI"
* #140002.02 "OSPEDALE G. VIETRI- LARINO"
* #140003.01 "OSPEDALE VENEZIALE- ISERNIA"
* #140003.02 "OSPEDALE CARACCIOLO AGNONE"
* #140003.03 "OSPEDALE SS. ROSARIO - VENAFRO"
* #150150.01 "OSPEDALE S.ANGELO DEI LOMBARDI"
* #150150.02 "P.SP.RIABILITATIVO DON GNOCCHI"
* #150418.01 "PO SAN GIOVANNI BOSCO"
* #150418.02 "PO LORETO MARE"
* #150418.05 "PO ASCALESI"
* #150418.06 "PRESDIO SANITARIO INTERMEDIO NAPOLI EST"
* #150419.01 "PO SAN PAOLO"
* #150419.02 "PO DEI PELLEGRINI"
* #150419.03 "PO SAN GENNARO"
* #150419.04 "PO SMDP INCURABILI"
* #150419.06 "PO  Capilupi CAPRI"
* #150415.01 "P.O. MARESCA"
* #150415.02 "P.O.  BOSCOTRECASE"
* #150416.01 "S.  LEONARDO"
* #150416.02 "NUOVO GRAGNANO"
* #150417.01 "P.O. S. MARIA DELLA MISERICORDIA"
* #150417.02 "P.O. DE LUCA E ROSSANO"
* #150436.01 "OSPEDALI RIUNITI AREA NOLANA PLESSO NOLA"
* #150436.02 "OSPED RIUNITI AREA NOLANA PLESSO POLLENA"
* #150154.01 "P.O. UMBERTO I NOCERA INFERIORE"
* #150154.02 "P.O. TORTORA PAGANI"
* #150902.01 "OSPEDALE SANTOBONO"
* #150902.02 "Ospedale Pausilipon"
* #150902.03 "P.O. S.S. Annunziata"
* #150903.01 "Azienda Ospedaliera dei Colli -P Monaldi"
* #150903.02 "Azienda Ospedaliera dei Colli -P Cotugno"
* #150903.03 "Azienda Ospedaliera dei Colli -P  CTO"
* #150904.01 "A.O. OO.RR. SANGIOVANNI DI DIO E RUGGI"
* #150904.02 "OSPEDALE AMICO G. FUCITO"
* #150904.03 "P.O. G. DA PROCIDA"
* #150904.04 "P.O. S. M. DELL'OLMO"
* #160161.01 "OSPEDALE OSTUNI"
* #160161.02 "PLESSO DI FASANO - OSPEDALE OSTUNI"
* #160170.01 "OSPEDALE PERRINO BRINDISI"
* #160170.02 "OSPEDALE BRINDISI (PLESSO MESAGNE)"
* #160170.03 "OSP.BRINDISI(PLESSO S.PIETRO VERNOTICO)"
* #160170.04 "OSP.BRINDISI (PLESSO CEGLIE MESSAPICA)"
* #160172.01 "OSPEDALE SS ANNUNZIATA - TARANTO"
* #160172.03 "OSPEDALE MOSCATI - TARANTO/STATTE"
* #160174.01 "OSPEDALE ANDRIA"
* #160174.02 "OSPEDALE ANDRIA (PLESSO CANOSA)"
* #160178.01 "OSPEDALE BISCEGLIE"
* #160178.02 "OSPEDALE BISCEGLIE (PLESSO TRANI)"
* #160158.01 "OSPEDALE SAN PAOLO-BARI"
* #160158.03 "OSPEDALE SAN PAOLO (PLESSO MOLFETTA)"
* #160158.04 "OSPEDALE SAN PAOLO (PLESSO CORATO)"
* #160158.05 "OSPEDALE SAN PAOLO (PLESSO TERLIZZI)"
* #160169.01 "OSPEDALE DI VENERE - BARI"
* #160169.03 "PLESSO TRIGGIANO-OSPEDALE DI VENERE"
* #160163.01 "OSPEDALE SAN SEVERO"
* #160163.07 "OSPEDALE SAN SEVERO (PLESSO LUCERA)"
* #160171.01 "OSPEDALE LECCE 'V FAZZI'"
* #160171.02 "PLESSO DI SAN CESARIO - OSPEDALE LECCE"
* #160907.01 "CONSORZIALE POLICLINICO BARI"
* #160907.02 "OSPEDALE GIOVANNI XXIII"
* #170901.01 "Ospedale San Carlo di Potenza"
* #170901.02 "Osp S.Francesco di Paola di Pescopagano"
* #180010.01 "Ospedale Corigliano"
* #180010.02 "Ospedale  Rossano"
* #180012.01 "Ospedale  Cetraro"
* #180012.02 "Ospedale Paola"
* #180912.01 "P.O. ANNUNZIATA"
* #180912.02 "MARIANO SANTO"
* #180912.03 "SANTA BARBARA"
* #180913.01 "Ospedale Pugliese"
* #180913.02 "Ospedale De Lellis"
* #180915.01 "Presidio Ospedaliero Riuniti"
* #180915.02 "Presidio Ospedaliero E. Morelli"
* #190922.01 "OSPEDALE GARIBALDI - CENTRO"
* #190922.04 "NUOVO OSPEDALE GARIBALDI - NESIMA"
* #190923.01 "PRESIDIO OSPEDALIERO GASPARE RODOLICO"
* #190923.02 "PRESIDIO OSPEDALIERO VITTORIO EMANUELE"
* #190923.03 "PRESIDIO OSPEDALIERO S. BAMBINO"
* #190926.01 "P.O. Villa Sofia"
* #190926.02 "C.T.O. Centro Traumatologico Ortopedico"
* #190926.03 "P.O. V. Cervello"
* #190927.01 "Ospedale Civico"
* #190927.02 "Ospedale dei Bambini G. Di Cristina"
* #190960.01 "IRCCS Centro Neurolesi"
* #190960.02 "PRESIDIO OSPEDALIERO PIEMONTE"
* #200056.01 "KINETIKA SARDEGNA s.r.l."
* #200056.02 "KINETIKA SARDEGNA s.r.l."
* #200056.03 "KINETIKA SARDEGNA s.r.l."
* #200904.01 "P. O. SAN MICHELE"
* #200904.02 "P.O. A. BUSINCO"
* #200904.03 "P.O. MICROCITEMICO"
* #200905.01 "Stabilimento Cliniche di San Pietro"
* #200905.02 "Stabilimento SS. Annunziata"
* #200906.01 "San Giovanni di Dio"
* #200906.02 "Policlinico Monserrato"