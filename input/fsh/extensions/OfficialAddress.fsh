Extension: OfficialAddress
Id: address-official
Title: "IndirizzoUfficiale"
Description: "Definizione dell'indirizzo inteso come indirizzo 'ufficiale' di quella persona. Il significato di indirizzo 'ufficiale' dipende dal Paese. Questa estensione consente di specificare se questo indirizzo è o non è l'indirizzo ufficiale, oppure di indicare che si tratta dell'indirizzo ufficiale di quel Paese."
* ^version = "0.1.0"
* ^status = #draft





* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "Official Address"
* . ^definition = "This extension allows to specify if this address is or it is not the official address, or to indicate that this is the official address for that country (true assumed)."



* value[x] 1..1
* value[x] only boolean or CodeableConcept



Extension: BirthPlaceIta
Parent: $patient-birthPlace
Id: birth-place-ita
Title: "Address Birth Place"
Description: "Definizione dell'indirizzo base per la descrizione del luogo di nascita."
* value[x] only Address-it