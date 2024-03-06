// -------------------------------------------------------------------------------				
//  Logical Model				lab-legalAuth.fsh
// -------------------------------------------------------------------------------				
Logical: Firmatario				
Id: Firmatario				
Title: "A.1.6 - Firmatario"				
Description:  """Firmatario legale (La persona che si assume la responsabilità del contenuto medico del documento)."""				
* identificativo 0..1 Identifier "A.1.6.1 Identificatore dell'autenticatore legale" """Il numero di identificazione dell'operatore sanitario. Un identificativo interno assegnato da un'istituzione erogatrice di assistenza sanitaria o (preferibilmente) un'identificazione nazionale dell'operatore sanitario come il numero di licenza o di registrazione. - Sistema preferito( S): """				
* nome 0..* HumanName "A.1.6.2 Nome dell'autenticatore legale" """Nome della persona. - Sistema/i preferito/i: """				
* organizzazione 0..* Organization "A.1.6.3 Organizzazione dell'autenticatore legale" """Informazioni sull'organizzazione dell'operatore sanitario. - Sistema/i preferito/i: """		 		
* data 0..1 dateTime "A.1.6.4 Data e ora di autenticazione" """Data e ora in cui il documento è stato autorizzato. - Sistema/i preferito/i: ISO 8601"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabLegalAuthenticator2Fhir				
Id: fhir				
Title: "eHN Lab LegalAuthenticator model to FHIR R4 Map"				
Source: Firmatario				
Target: "hl7.org/fhir/r4"				
				
* -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#legal)"				
* identificativo -> ".party.resolve().ofType(PractictionerRole).identifier"				
* nome -> ".party.resolve().ofType(PractictionerRole).practictioner.resolve().name"				
* organizzazione -> ".party.resolve().ofType(PractictionerRole).organization.resolve()"				
* organizzazione -> ".party.resolve().ofType(Organization)"				
* data -> ".time"				
// --END				
// --END				
// --END				
				
