// -------------------------------------------------------------------------------				
//  Logical Model				lab-author.fsh
// -------------------------------------------------------------------------------				
Logical: Autore				
Id: Autore				
Title: "A.1.5 - Autore"				
Description:  """A.1.5 Autore (da cui è stato redatto il rapporto sui risultati di laboratorio o un sottoinsieme dei risultati)."""				
* Identificativo 0..1 Identifier "A.1.5.1 Identificativo dell'autore" """Numero per l'identificazione dell'operatore sanitario o del dispositivo autore. Un identificatore interno assegnato da un'istituzione erogatrice di assistenza sanitaria o (preferibilmente) un identificativo nazionale dell'operatore sanitario come il numero di licenza o di registrazione. - Sistema: """				
* nome 0..* HumanName "A.1.5.2 Nome dell'autore" """Nome della persona o del dispositivo. - Sistema: """				
* orgamozzazione 0..* Organization "A.1.5.3 Organizzazione dell'autore" """Informazioni sull'organizzazione dell'operatore sanitario. - Sistema: """		 		
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabAuthor2Fhir				
Id: fhir				
Title: "eHN Lab Author model to FHIR R4 Map"				
Source: Autore				
Target: "hl7.org/fhir/r4"				
				
* -> "Composition.author.resolve()"				
* Identificativo -> "Composition.author.resolve().ofType(PractictionerRole).practictioner.resolve().identifier"				
* Identificativo -> "Composition.author.resolve().ofType(PractictionerRole).identifier"				
* nome -> "Composition.author.resolve().ofType(PractictionerRole).practictioner.resolve().name"				
* orgamozzazione -> "Composition.author.resolve().ofType(PractictionerRole).organization.resolve()"				
// --END				
// --END				
// --END				
// --END				
				
				
				
				
