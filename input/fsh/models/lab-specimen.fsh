// -------------------------------------------------------------------------------				
//  Logical Model				lab-specimen.fsh
// -------------------------------------------------------------------------------				
Logical: Campione				
Id: Campione				
Title: "A.4 - Informazioni sul Campione"				
Description:  """A.4 Informazioni sul campione Campione."""				
* identificatore 0..1 Identifier "A.4.1 Identificatore del campione" """Identificativo unicvoco del campione . Esempio: Identificativo assegnato dal sistema di campionamento, Identificativo assegnato dal laboratorio ecc. È possibile utilizzare più Identificativi. - Sistema di Codifica : """
* tipoCampione 0..* CodeableConcept "A.4.2 Tipo di campione" """Tipo biologico del campione. - Sistema di Codifica: SNOMED CT"""					 		
* dataRaccolta 0..* dateTime "A.4.4 Periodo di raccolta" """Data, ora o periodo di raccolta. - Sistema: ISO 8601"""				
* posizioneAnatomica 0..* CodeableConcept "A.4.5 Sede anatomica" """Posizione anatomica (posizione del corpo, lateralità) in cui il campione viene raccolto, ad es. Gomito, sinistra - Sistema: SNOMED CT"""						
* metodoRaccolta 0..* CodeableConcept "A.4.8 Procedura/metodo di raccolta" """Se rilevante per i risultati, il metodo per ottenere il campione. - Sistema: SNOMED CT"""				
* dataRicezione 0..* dateTime "A.4.9 Data di ricezione" """Data e ora in cui il materiale viene consegnato al laboratorio o al centro di raccolta dei campioni. - Sistema: ISO 8601"""				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabSpecimen2Fhir				
Id: fhir				
Title: "eHN Lab Specimen model to FHIR R4 Map"				
Source: Campione				
Target: "hl7.org/fhir/r4"				
				
* -> "Observation.conformsTo('http://hl7.eu/fhir/ig/xeh/StructureDefinition/Observation-results-laboratory-eu-xeh').specimen.resolve()"				
* identificatore -> "Specimen.identifier"				
* tipoCampione -> "Specimen.type"							
* dataRaccolta -> "Specimen.collection.collected[x]"				
* posizioneAnatomica -> "Specimen.collection.bodySite"									
* metodoRaccolta -> "Specimen.collection.method"				
* dataRicezione -> "Specimen.receivedTime"				
// --END				
// --END				
// --END				
