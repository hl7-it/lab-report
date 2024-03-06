// -------------------------------------------------------------------------------				
//  Logical Model				lab-validator.fsh
// -------------------------------------------------------------------------------				
Logical: ValidatorLabEhn				
Id: Validatore				
Title: "A.1.7 - Validatore"				
Description:  """Validatore del documento."""				
* identifier 0..1 Identifier "A.1.7.1 Identificativo del validatore dei risultati" """Numero di identificazione dell'operatore sanitario. Identificativo assegnato da un'istituzione erogatrice di assistenza sanitaria o (preferibilmente) un'identificativo nazionale dell'operatore sanitario come il numero di licenza o di registrazione. - Sistema: """				
* name 0..* HumanName "A.1.7.2 Nome del validatore dei risultati" """Nome della persona. - Sistema: """				
* organization 0..* Organization "A.1.7.3 Organizzazione del validatore" """Informazioni sull'organizzazione dell'operatore sanitario. - Sistema: """		 		
* dateTime 0..1 dateTime "A.1.7.4 Data e ora di convalida" """Data e ora in cui il documento è stato validato. - Sistema: ISO 8601"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabValidator2Fhir				
Id: fhir				
Title: "eHN Lab Validator model to FHIR R4 Map"				
Source: Validatore				
Target: "hl7.org/fhir/r4"				
				
* -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#professional)"				
* identifier -> ".party.resolve().ofType(PractictionerRole).identifier"				
* identifier -> ".party.resolve().ofType(PractictionerRole).practictioner.resolve().identifier"				
* name -> ".party.resolve().ofType(PractictionerRole).practictioner.resolve().name"				
* organization -> ".party.resolve().ofType(PractictionerRole).organization.resolve()"				
* organization -> ".party.resolve().ofType(Organization)"				
* dateTime -> ".time"				
// --END				
// --END				
// --END				
// --END				
// --END				
