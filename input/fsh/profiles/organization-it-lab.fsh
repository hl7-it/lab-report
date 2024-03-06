Profile:  OrganizationRefertoLabIt
Parent:   Organization
Id:       organization-it-lab
Title:    "Organization - Lab Report"
Description: "Descrizione delle informazioni relative all'organizzazione tramite il profilo della risorsa Organization per il referto di laboratorio."
* . ^short = "Organization Referto di Laboratorio"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule ( 1, trial-use)
* insert ImposeProfile($Organization-uv-ips)

* identifier  
* identifier ^short = "Identificativo dell'organizzazione."
* active ^short = "Indica se la risorsa è attiva."
* active	 
* type ^short = "Tipo di organizzazione."
* type	 
* type from $tipo-org (example) 
* name ^short = "Nome human-readable dell'organizzazione."
* name	 

Profile:  OrganizationOperatoreSanitarioRefertoLabIt
Parent:   OrganizationRefertoLabIt
Id:       organizationOperatore-it-lab
Title:    "Organization operatore sanitario/socio sanitario - Lab Report"
Description: "Descrizione delle informazioni relative all'operatore socio/sanitario tramite il profilo della risorsa Organization per il referto di laboratorio."
* . ^short = "Organization operatore sanitario/socio sanitario Referto di Laboratorio"

* identifier  
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "$this.system"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "$this.value"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier pattern"
* identifier.system 1..1  
* identifier.value 1..1  
* identifier contains 
	asl 0..1 
	and aslRegione 0..1
	and aziendaOspedaliera 0..1 
	and struttura 0..1 
	and partitaIva 0..1
	and codiceFiscale 0..1
	and strutturaInterna 0..1

* identifier[asl] ^short = "Identificativo Azienda Sanitaria Locale (FLS 11 - 6 char)"
* identifier[asl].system = "http://hl7.it/sid/fls" (exactly) // pattern

* identifier[asl].value from VsMinisteroSaluteAsl (required) //$asl

* identifier[aslRegione].system from VsUriIdAslRegione // pattern $asl
* identifier[aslRegione] ^short = "Identificativo Regionale Azienda Sanitaria Locale (FLS 11 - 3 char)"



* identifier[aziendaOspedaliera].system = "http://hl7.it/sid/hsp" (exactly)  // pattern
* identifier[aziendaOspedaliera] ^short = "Identificativo Azienda Ospedaliera"



* identifier[aziendaOspedaliera].value from VsMinisteroSaluteIdAziendeOspedaliere (required)
* identifier[struttura].system = "http://hl7.it/sid/hsp" (exactly) // pattern
* identifier[struttura] ^short = "Identificativo Struttura di Ricovero"
* identifier[struttura].value from VsMinisteroSaluteIdStrutture (required)
* identifier[strutturaInterna].system = "http://hl7.it/sid/hsp" (exactly) // pattern

* identifier[strutturaInterna].value from $minsan-idStruttureInterne (required)
* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva" (exactly)  // pattern
* identifier[partitaIva] ^short = "Partita IVA Organizzazione"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)  // pattern
* identifier[codiceFiscale] ^short = "Codice Fiscale Organizzazione"

* active	 
* type	 
* type from http://hl7.it/fhir/lab-report/ValueSet/tipoOrgSocioSanitaria (extensible)
* name	 