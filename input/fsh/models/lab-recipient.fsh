// -------------------------------------------------------------------------------				
//  Logical Model				lab-recipient.fsh
// -------------------------------------------------------------------------------				
Logical: Destinatario				
Id: Destinatario				
Title: "A.1.4 - Informazioni Destinatario"				
Description:  """A.1.4 Destinatario delle informazioni (destinatario o destinatari del rapporto, ulteriori destinatari potrebbero essere individuati dal committente, ad es. medico di base, altro specialista), se applicabile."""				
* identificativo 0..1 Identifier "A.1.4.1 Identificativo del destinatario" """Il numero di identificazione dell'operatore sanitario.
Un identificatore interno assegnato da un istituto di assistenza sanitaria o (preferibilmente) un ID professionale sanitario nazionale come il numero di licenza o di registrazione.
Nel caso in cui il destinatario non sia un operatore sanitario, ad es. paziente, deve essere utilizzato un identificatore personale appropriato."""				
* nome 0..* HumanName "A.1.4.2 Recipient name" """Person name."""				
* organizzazione 0..* Organization "A.1.4.3 Recipient organization" """The healthcare provider organization information."""		 		
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabRecipient2Fhir				
Id: fhir				
Title: "eHN Lab Recipient model to FHIR R4 Map"				
Source: Destinatario				
Target: "hl7.org/fhir/r4"				
				
* -> "Organization"				
* -> "PractictionerRole"				
* -> "Practictioner"				
* -> "Patient"				
* -> "RelatedPerson"				
* identificativo -> ".identifier"				
* nome -> "Organization.name"				
* nome -> "PractictionerRole.practitioner.resolve().name"				
* nome -> "Practictioner.name"				
* nome -> "Patientn.name"				
* nome -> "RelatedPerson.name"				
* organizzazione -> "PractictionerRole.organization.resolve()"				
// --END				
// --END				
// --END				
