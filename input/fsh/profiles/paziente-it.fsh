Profile: PatientRefertoLabIt
Parent: Patient
Id: patient-it-lab
Title: "Patient - Lab Report"
Description: "Descrive come rappresentare le informazioni del paziente nei documenti FHIR."
* . ^short = "Patient Referto di Laboratorio"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-08T16:43:56.519+01:00"
* . MS

* extension contains 
    BirthPlaceIta named birthPlace 0..1
* extension[BirthPlaceIta] ^short = "Luogo di nascita."    
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this.system"
* identifier ^slicing.rules = #open
* identifier ^short = "Identificativo del paziente."
* identifier.value 1.. 
* identifier.value ^short = "ID del paziente (e.g. Codice Fiscale)."
* identifier.value ^definition = "Identifictivo del paziente."
* identifier contains
    codiceFiscale 0..1 and
    anpr 0..1 and
    idRegionale 0..1 and
    codiceENI 0..1 and
    codiceANA 0..1 and
    tesseraTEAM 0..1 and
    codiceSTP 0..1
* identifier[codiceFiscale] ^short = "Codice Fiscale."
* identifier[codiceFiscale].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceFiscale].system 1.. 
* identifier[codiceFiscale].system = $cf
* identifier[codiceANA] ^short = "Codice ANA."
* identifier[codiceANA].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceANA].system = "urn:oid:2.16.840.1.113883.2.9.4.3.15"
* identifier[codiceANA].system 1..
* identifier[tesseraTEAM] ^short = "Tessera TEAM."
* identifier[tesseraTEAM].system ^short = "Namespace per il valore dell'identifier."
* identifier[tesseraTEAM].system = "urn:oid:2.16.840.1.113883.2.9.4.3.7"
* identifier[tesseraTEAM].system 1..
* identifier[codiceFiscale].value ^short = "valore dell'identifier."
* identifier[codiceFiscale].value 1.. 
* identifier[codiceFiscale].value obeys pat-id-cf-1
* identifier[anpr] ^short = "Identificativo del paziente nell'Anagrafe nazionale della popolazione residente."
* identifier[anpr].system ^short = "Namespace per il valore dell'identifier."
* identifier[anpr].system 1.. 
* identifier[anpr].system = $anpr
* identifier[idRegionale] ^short = "Identificativo Regionale."
* identifier[idRegionale].system ^short = "Namespace per il valore dell'identifier."
* identifier[idRegionale].system 1.. 
* identifier[idRegionale].system from $uri-idRegionali (required)
* identifier[codiceENI] ^short = "Codice ENI."
* identifier[codiceENI].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceENI].system 1.. 
* identifier[codiceENI].system from $uri-idEni (required)
* identifier[codiceSTP] ^short = "Codice STP." 
* identifier[codiceSTP].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceSTP].system 1.. 
* identifier[codiceSTP].system from $uri-idStp (required)
* name 1.. 
* name obeys it-pat-1
* name ^short = "Nome associato al paziente."
* address only Address-it
* managingOrganization ^short = "’organizzazione a cui è lasciata la custodia del dei dati del paziente."
* managingOrganization only Reference(organization-it-lab)


Invariant: pat-id-cf-1
Description: "Il Codice Fiscale deve essere di 16 caratteri alfanumerici (3 per il cognome; 3 per il nome; 2 caratteri numerici per l'anno di nascita; 1 per il mese di nascita; 2 caratteri numerici per il giorno di nascita ed il sesso; 4 associati al Comune oppure allo Stato estero di nascita. 1 carattere di controllo"
Severity: #error
Expression: "matches('^[A-Za-z]{6}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{3}[A-Za-z]{1}$')"
XPath: "matches(@value,'^[A-Za-z]{6}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{3}[A-Za-z]{1}$')"

Invariant: it-pat-1
Description: "Patient.name.given o Patient.name.family o entrambi DEVONO essere presenti"
Severity: #error
Expression: "family.exists() or given.exists()"
XPath: "f:given or f:family"