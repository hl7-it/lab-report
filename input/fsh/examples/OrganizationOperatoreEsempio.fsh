Instance: OrganizationOperatore-Lab-Esempio
InstanceOf: OrganizationOperatoreSanitarioRefertoLabIt
Usage: #example
Title: "Esempio di risorsa Organization che descrive le informazioni dell' operatore sanitario/socio sanitario"
Description: "Esempio di Organization: Azienda di Assistenza del paziente"

* id = "ae0365ea-d8a1-45e0-a39d-f14fac4ccfe8"
* identifier[asl].system = "http://hl7.it/sid/fls"
* identifier[asl].value = "020101"




* active = true
* type = $it-tipoEntita#asl "Azienda Sanitaria Locale"
* name = "AZIENDA U.S.L. VALLE D'AOSTA"
* telecom[0].system = #phone
* telecom[=].value = "(0165) 5431"
* telecom[+].system = #fax
* telecom[=].value = "(0165) 544587"
* telecom[+].system = #email
* telecom[=].value = "protocollo@pec.ausl.vda.it"
* telecom[+].system = #url
* telecom[=].value = "http://www.ausl.vda.it"
* address.line = "VIA GUIDO REY 1"
* address.city = "AOSTA"
* address.city.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address.city.extension.valueCoding = $istat-unitaAmministrativeTerritoriali#007003 "AOSTA"
* address.district = "AO"
* address.state = "VALLE D'AOSTA"
* address.state.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address.state.extension.valueCoding = $minsan-regione#020 "VALLE D'AOSTA"
* address.postalCode = "11100"
* address.country = "IT"