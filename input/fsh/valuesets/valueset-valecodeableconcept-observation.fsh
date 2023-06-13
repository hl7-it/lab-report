// Alias: $valueset-observation-value-microorganism = valueset-observation-value-microorganism
// Alias: $valueset-observation-value-bloodgroup = valueset-observation-value-bloodgroup
// Alias: $valueset-observation-value-presence-absence = valueset-observation-value-presence-absence

ValueSet: ObservationValueCodeableConcept
Id: valueset-valuecodeableconcept-obs-it
Title: "Risultato osservazione codificato"
Description: "Valueset contenente i codici per la risorsa Observation - Lab Report per la descrizione del risultato della rilevazione."
* include codes from valueset valueset-observation-value-microorganism
* include codes from valueset valueset-observation-value-bloodgroup
* include codes from valueset valueset-observation-value-presence-absence

ValueSet: ObservationBloodGroup
Id: valueset-observation-value-bloodgroup
Title: "Risultato osservazione codificato gruppo sanguigno"
Description: "Valueset contenente i codici SNOMED di gruppo sanguigno per la risorsa Observation - Lab Report per la descrizione del risultato della rilevazione."

* include codes from system $sct where concept descendent-of #365636006

ValueSet: ObservationPresenzaAssenza
Id: valueset-observation-value-presence-absence
Title: "Risultato osservazione codificato presenza/assenza"
Description: "Valueset contenente i codici SNOMED di presenza/assenza per la risorsa Observation - Lab Report per la descrizione del risultato della rilevazione."

* include codes from system $sct where concept descendent-of #272519000 
* include codes from system $sct where concept descendent-of #260411009



ValueSet: ObservationMicroorganismi
Id: valueset-observation-value-microorganism
Title: "Risultato osservazione codificato microorganismi"
Description: "Valueset contenente i codici SNOMED di microorganismi per la risorsa Observation - Lab Report per la descrizione del risultato della rilevazione."

* include codes from system $sct where concept descendent-of #409822003 

* include codes from system $sct where concept descendent-of #441649000
* include codes from system $sct where concept descendent-of #414561005 
* include codes from system $sct where concept descendent-of #84676004 
* include codes from system $sct where concept descendent-of #49872002
* include codes from system $sct where concept descendent-of #417396000
* include codes from system $sct where concept descendent-of #419036000
* include codes from system $sct where concept descendent-of #426785004
* include codes from system $sct where concept descendent-of #370570004
* include codes from system $sct where concept descendent-of #417377004 
* include codes from system $sct where concept descendent-of #243565002 

ValueSet: GruppoSanguigno
Id: results-observation-bloodgroup
Title: "Risultato osservazione codificato - Gruppo Sanguigno IPS di SNOMED CT"
Description: "Questo valueset include i codici per i risultati dei gruppi sanguigni dal sottoinsieme SNOMED International Patient Set (IPS) di SNOMED CT."

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "Health Level Seven International - Patient Care Work Group"
// * ^immutable = false
// * ^expansion.timestamp = "2022-08-19T23:02:06+00:00"
// * ^expansion.total = 13
// * ^expansion.offset = 0
// * ^expansion.parameter.name = "version"
// * ^expansion.parameter.valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20220731"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #278154007
* ^expansion.contains[=].display = "Blood group AB Rh(D) negative"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #278153001
* ^expansion.contains[=].display = "Blood group B Rh(D) negative"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #278152006
* ^expansion.contains[=].display = "Blood group A Rh(D) negative"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #278151004
* ^expansion.contains[=].display = "Blood group AB Rh(D) positive"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #278150003
* ^expansion.contains[=].display = "Blood group B Rh(D) positive"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #278149003
* ^expansion.contains[=].display = "Blood group A Rh(D) positive"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #278148006
* ^expansion.contains[=].display = "Blood group O Rh(D) negative"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #278147001
* ^expansion.contains[=].display = "Blood group O Rh(D) positive"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #165746003
* ^expansion.contains[=].display = "RhD negative"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #165743006
* ^expansion.contains[=].display = "Blood group AB"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #112149005
* ^expansion.contains[=].display = "Blood group B"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #112144000
* ^expansion.contains[=].display = "Blood group A"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #58460004
* ^expansion.contains[=].display = "Blood group O"
* include codes from system http://snomed.info/sct|http://snomed.info/sct/900000000000207008
    where constraint = "< 365636006 |Finding of blood group (finding)| AND ^ 816080008 |International Patient Summary (foundation metadata concept)|"


ValueSet: ResultsPresenceAbsenceSnomedCtIpsFreeSet
Id: results-presence-absence-snomed-ct-ips-free-set
Title: "Risultato osservazione codificato -  presenza/assenza IPS di SNOMED CT"
Description: "Questo valueset include i codici per i risultati di presenza o assenza dal sottoinsieme SNOMED International Patient Set (IPS) di SNOMED CT."
// * ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
// * ^version = "1.0.0"
// * ^status = #active
// * ^experimental = false
// * ^publisher = "Health Level Seven International - Patient Care Work Group"
// * ^immutable = false
// * ^expansion.timestamp = "2022-08-19T22:04:26+00:00"
// * ^expansion.total = 9
// * ^expansion.offset = 0
// * ^expansion.parameter.name = "version"
// * ^expansion.parameter.valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20220731"
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #441614007
* ^expansion.contains[=].display = "Present one plus out of three plus"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #441521003
* ^expansion.contains[=].display = "Present three plus out of three plus"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #441517005
* ^expansion.contains[=].display = "Present two plus out of three plus"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260350009
* ^expansion.contains[=].display = "++++"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260349009
* ^expansion.contains[=].display = "+++"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260348001
* ^expansion.contains[=].display = "++"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260347006
* ^expansion.contains[=].display = "+"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #52101004
* ^expansion.contains[=].display = "Present"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #2667000
* ^expansion.contains[=].display = "Absent"
* include codes from system http://snomed.info/sct|http://snomed.info/sct/900000000000207008
    where constraint = "(< 260411009 |Presence findings (qualifier value)| OR < 272519000 |Absence findings (qualifier value)|) AND ^ 816080008 |International Patient Summary (foundation metadata concept)|"