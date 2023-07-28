// -------------------------------------------------------------------------------				
//  Logical Model				lab-order.fsh
// -------------------------------------------------------------------------------				
Logical: Richiesta				
Id: Richiesta				
Title: "A.2,A.3 - Richiesta"				
Description:  """Informazioni sulla richiesta (A.2) e motivazioni (A3)."""				
* dettagliRichiesta 0..1 BackboneElement "A.2 Informazioni sulla richiesta" """A.2 Informazioni sulla richiesta (Laboratory Result Report could respond to multiple test orders) """				
* dettagliRichiesta.identificativo 0..* Identifier "A.2.1 Identificativo della richiesta" """Identificativo della richiesta dell'esame di laboratorio. Ad un unico identificativo possono corrispondere più richieste."""				
* dettagliRichiesta.dateTime 0..* dateTime "A.2.2 Data ed ora della richiesta" """Data ed orario in cui è stata effettuata la richiesta - Preferred system(s): ISO 8601"""		 		
* dettagliRichiesta.mittenteRichiesta 0..* Identifier "A.2.3 Mittente della richiesta" """Operatore sanitario che invia la richiesta."""				
* dettagliRichiesta.codicePriorita 0..1 code "A.2.7 Codice priorità" """Priorità della richiesta"""				
* quesitoDiagnostico 0..* BackboneElement "A.3 Motivazione della richiesta" """A.3 Motivazione della richiesta (Laboratory Result Report could respond to multiple reasons) """				
* quesitoDiagnostico.code 0..* CodeableConcept "A.3.1 Quesito diagnostico associato alla richiesta" """Condizioni di salute che incidono sulla salute del paziente e sono importanti da conoscere per un professionista sanitario durante un incontro sanitario. Condizioni cliniche del soggetto rilevanti per l'interpretazione dei risultati.
- Sistema/i preferito/i: ICD-10 (ICD-11 when available)
- Sistema/i preferito/i: SNOMED CT
- Sistema/i preferito/i: Orphacode"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabOrder2Fhir				
Id: fhir				
Title: "eHN Lab Modello Logico Richiesta - FHIR R4 Map"				
Source: Richiesta				
Target: "hl7.org/fhir/r4"				
				
//* -> "Composition.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition').valueReference.resolve()"				
//* orderDetails -> "Composition.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition').valueReference.resolve()"				
* dettagliRichiesta.identificativo -> "ServiceRequest.identifier"				
* dettagliRichiesta.dateTime -> "ServiceRequest.authoredOn"						
* dettagliRichiesta.mittenteRichiesta -> "ServiceRequest.performer"		
* dettagliRichiesta.codicePriorita -> "ServiceRequest.priority"
* quesitoDiagnostico -> "ServiceRequest.reasonCode"				
* quesitoDiagnostico.code -> "ServiceRequest.reasonCode"				
// --END				
// --END				
// --END				
