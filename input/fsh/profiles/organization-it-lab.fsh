Profile:  OrganizationRefertoLabIt
Parent:   Organization
Id:       organization-it-lab
Title:    "Organization - Lab Report"
Description: "Profilo della risorsa Organization che per la descrizione delle informazioni nel dominio di Lab Report."
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
Description: "Profilo della risorsa Organization che per la descrizione delle informazioni dell' operatore sanitario/socio sanitario nel dominio di Lab Report."
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

* identifier[asl].value from http://terminologie.hl7.it/ValueSet/minsan-idAsl (required)

* identifier[aslRegione].system from http://terminologie.hl7.it/ValueSet/uri-idAslRegione // pattern
* identifier[aslRegione] ^short = "Identificativo Regionale Azienda Sanitaria Locale (FLS 11 - 3 char)"



* identifier[aziendaOspedaliera].system = "http://hl7.it/sid/hsp" (exactly)  // pattern
* identifier[aziendaOspedaliera] ^short = "Identificativo Azienda Ospedaliera (HSP 11)"



* identifier[aziendaOspedaliera].value from http://terminologie.hl7.it/ValueSet/minsan-idAziendeOspedaliere (required)
* identifier[struttura].system = "http://hl7.it/sid/hsp" (exactly) // pattern
* identifier[struttura] ^short = "Identificativo Struttura di Ricovero (HSP 11)"
* identifier[struttura].value from http://terminologie.hl7.it/ValueSet/minsan-idStrutture (required)
* identifier[strutturaInterna].system = "http://hl7.it/sid/hsp" (exactly) // pattern

* identifier[strutturaInterna].value from http://terminologie.hl7.it/ValueSet/minsan-idStruttureInterne (required)
* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva" (exactly)  // pattern
* identifier[partitaIva] ^short = "Partita IVA Organizzazione"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)  // pattern
* identifier[codiceFiscale] ^short = "Codice Fiscale Organizzazione"

* active	 
* type	 
* type from http://terminologie.hl7.it/ValueSet/tipoOrgSocioSanitaria (extensible)
* name	 