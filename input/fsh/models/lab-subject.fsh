// -------------------------------------------------------------------------------				
//  Logical Model				lab-subject.fsh
// -------------------------------------------------------------------------------				
Logical: SoggettoCura				
Id: SoggettoCura				
Title: "A.1.1, A.1.2 - Soggetto delle cure"				
Description:  """Paziente o Soggetto delle cure."""				
* identificazione 1..1 BackboneElement "A.1.1 Identificazione del paziente/soggetto" """A.1.1 Identificazione del paziente/soggetto"""				
* identificazione.cognome 0..* string "A.1.1.1 Cognome" """Il cognome del paziente. Questo campo può contenere più di un elemento oppure possono essere presenti più campi."""				
* identificazione.nome 0..* string "A.1.1.2 Nome" """Il nome del paziente . Questo campo può contenere più di un elemento. """		 		
* identificazione.dataNascita 0..1 dateTime "A.1.1.3 Data di nascita" """La data di nascita del paziente [ISO TS 22220]. Poiché l'età del paziente potrebbe essere importante per la corretta interpretazione dei valori dei risultati del test, è necessario fornire la data di nascita completa - Sistema/i preferito/i: data completa, senza ora, seguendo la norma ISO 8601 """				
* identificazione.identificativo 0..1 Identifier "A.1.1.4 Identificativo personale" """Un identificatore del paziente unico all'interno di un ambito definito. Esempio: ID nazionale (numero di nascita) per il paziente ceco. Potrebbero essere forniti identificatori multipli. """				
* identificazione.gender 0..1 CodeableConcept "A.1.1.5 Gender" """Questo campo deve contenere un valore valido riconosciuto per 'genere amministrativo'.
Se diverso, il "genere fisiologico" dovrebbe essere comunicato altrove Sistema: - Sistema: HL7 Administrative Gender """				
* recapito 0..* BackboneElement "A.1.2 Informazioni di contatto relative al paziente/soggetto" """A.1.2 Informazioni di contatto relative al paziente/soggetto"""				
* recapito.indirizzo 0..* Address "A.1.2.1 Indirizzo" """Indirizzi postali e di casa o ufficio. Gli indirizzi sono sempre sequenze di parti di indirizzo (ad es. riga dell'indirizzo, paese, codice postale, città) anche se i formati dell'indirizzo postale possono variare a seconda del paese Un indirizzo può includere o meno uno specifico codice d'uso, se tale attributo non è presente si assume che sia l'indirizzo di default utile per qualsiasi scopo - Sistema/i preferito/i: ISO 3166"""				
* recapito.telefono 0..* ContactPoint "A.1.2.2 Telecom" """Informazioni sui contatti di telecomunicazione (indirizzi) associati a una persona. Potrebbero essere forniti più indirizzi di telecomunicazione. - Sistema/i preferito/i: """				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabSubject2Fhir				
Id: fhir				
Title: "eHN Lab Subject model to FHIR R4 Map"				
Source: SoggettoCura				
Target: "hl7.org/fhir/r4"				
				
* -> "Patient.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab')"				
* identificazione -> "Patient"				
* identificazione.cognome -> "Patient.name.family"				
* identificazione.nome -> "Patient.name.given"				
* identificazione.dataNascita -> "Patient.birthDate"				
* identificazione.identificativo -> "Patient.identifier"				
* identificazione.gender -> "Patient.gender"				
* recapito -> "Patient.address"				
* recapito.indirizzo -> "Patient.address"				
* recapito.telefono -> "Patient.telecom"				
// --END				
// --END				
