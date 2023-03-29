Profile: AddressItBase
Parent: Address
Id: Address-it
Title: "Address - ITA"
Description: "Base StructureDefinition per il tipo Address con parti addizionali specifiche per gli indirizzi italiani. Questo profilo struttura l'elemento  Address.line in più parti, consente la codifica di alcune di queste parti e supporta la caratterizzazine degli indirizzi di tipo Residenza. Questa prima versione è ispirata al data type Address Olandese."
* ^version = "0.0.1"
* ^status = #draft
* ^copyright = "CC0"
* . ^short = "Indirizzo fisico o postale"
* . ^definition = "Esiste una varietà di formati di indirizzi postali definiti in tutto il mondo. Questo profilo (Address-it-base) estende il datatype base Address includendo una serie di informazioni rilevanti per esprimere gli indirizzi in Italia. \r \n \r \n Un Address-it-base è un indirizzo FHIR valido; i sistemi che non supportano le estensioni utilizzate saranno in grado comunque di eseguire il rendering e lavorare con un XXXX. \r \n \r \n Un indirizzo rende alcune parti di indirizzo comunicabili separatamente. Queste parti sono necessarie in alcuni scenari d'uso italiani, ma potrebbero non avere valore per i sistemi internazionali quando le informazioni vengono inviate all'estero."
* . ^comment = "Nota: address è per indirizzi postali, non per la localizzazione fisica."
* . ^alias[0] = "Indirizzo"
* extension contains
    address-official named residenza 0..1 and
    recordCertification named certificazioneIndirizzo 0..*
* extension[residenza] ^short = "Indica l'indirizzo di residenza"
* extension[residenza] ^definition = "Indica se questo indirizzo è quello di residenza, come indirizzo 'ufficialmente registrato' address."
* extension[certificazioneIndirizzo] ^short = "Certificazione Indirizzo"
* extension[certificazioneIndirizzo] ^definition = "Indica che i dati di questo indirizzo sono stati certificati da una specifica entità"
* line ^short = "Nome completo strada (e.g. Via Corta 1, interno 2)"
* line.extension contains
    $iso21090-ADXP-streetName named odonimo 0..1 and
    address-dug named dugCode 0..1 and
    $iso21090-ADXP-streetNameBase named denominazioneUrbanisticaUfficiale 0..1 and
    $iso21090-ADXP-houseNumber named houseNumber 0..1 and
    $iso21090-ADXP-streetNameType named denominazioneUrbanisticaGenerica 0..1
* line.extension[odonimo] ^short = "Odonimo, Toponimo Stradale"
* line.extension[odonimo] ^requirements = "Nome della Strada"
* line.extension[odonimo] ^alias[0] = "Toponimo Stradale"
* line.extension[odonimo] ^example.label = "ex-1"
* line.extension[odonimo] ^example.valueString = "Via Corta"
* line.extension[denominazioneUrbanisticaGenerica] ^short = "Denominazione Urbanistica Generica (DUG)"
* line.extension[denominazioneUrbanisticaGenerica] ^example.label = "ex-1"
* line.extension[denominazioneUrbanisticaGenerica] ^example.valueString = "Via"
* line.extension[dugCode] ^short = "Codice Denominazione Urbanistica Generica (DUG)"
* line.extension[dugCode] ^alias[0] = "specie"
* line.extension[dugCode] ^example.label = "ex-1"
* line.extension[dugCode] ^example.valueCodeableConcept = $istat-dug#67 "via"
* line.extension[denominazioneUrbanisticaUfficiale] ^short = "Denominazione Urbanistica Ufficiale (DUF)"
* line.extension[denominazioneUrbanisticaUfficiale] ^alias[0] = "denominazione"
* line.extension[denominazioneUrbanisticaUfficiale] ^example.label = "ex-1"
* line.extension[denominazioneUrbanisticaUfficiale] ^example.valueString = "Corta"
* line.extension[houseNumber] ^short = "Numero Civico"
* line.extension[houseNumber] ^requirements = "Numero Civico"
* line.extension[houseNumber] ^example.label = "ex-1"
* line.extension[houseNumber] ^example.valueString = "1"
* city ^definition = "Nome della città, paese, frazione, ecc."
* city ^alias[0] = "Comune"
* district ^short = "Nome della Provincia"
* district ^definition = "Nome dell'area amministrativa (county).\r\nPer gli indirizzi italiani è usato per indicare la Provincia"
* district ^alias[0] = "Provincia"
* district.extension contains
    $iso21090-SC-coding named codiceProvincia 0..1
* district.extension[codiceProvincia] ^sliceName = "codiceProvincia"
* district.extension[codiceProvincia] ^short = "Codice Provincia"
* state ^short = "Sotto-unità dello stato (Regione)."
* state ^definition = "Sotto-unità dello stato con limitata sovranità in uno stato oragnizzato federalmente.\r\nNel contesto italiano indica la \"Regione\""
* state ^alias[0] = "Regione"
* state.extension contains
    $iso21090-SC-coding named codiceRegione 0..1
* state.extension[codiceRegione] ^sliceName = "codiceRegione"
* state.extension[codiceRegione] ^short = "Codice Regione"
* postalCode obeys it-postal-code-pattern
* postalCode ^comment = "I codici postali italiani hanno un pattern '[1,9]\\d{4}'."
* postalCode ^alias[0] = "CAP"
* postalCode ^alias[+] = "postcode"
* postalCode ^condition = "it-postal-code-pattern"
* country ^short = "Stato"
* country.extension contains
    $iso21090-SC-coding named codiceStato 0..1
* country.extension[codiceStato] ^sliceName = "codiceStato"
* country.extension[codiceStato] ^short = "Codice Stato"

Invariant: it-postal-code-pattern
Description: "I codici postali italiani hanno un pattern 'nnnnn' (n intero)"
Severity: #error
Expression: "(country in 'it' | 'ita' | 'italia' | 'italy').not() or matches('^[1-9]\\d{4}$')"
XPath: "not(../f:country[lower-case(@value)=('it','ita','italia', 'italy')]) or matches(@value,'^[1-9]\\d{4}$')"

Invariant: it-address-official
Description: "Se Address rappresenta la residenza allora city e line devono essere inclusi"
Severity: #error
Expression: "extension.where(url = 'http://hl7.org/fhir/StructureDefinition/address-official').valueBoolean.where(true).empty() or ( line.exists() and city.exists() )"
