// -------------------------------------------------------------------------------				
//  Logical Model				lab-result.fsh
// -------------------------------------------------------------------------------				
Logical: Organizer				
Id: Organizer				
Title: "A.6 - Organizer"				
Description:  """A.6 Risultato di un insieme di esami."""				
* osservazione 0..* BackboneElement "A.5.2 Dettagli dell'osservazione" """A.5.2 Dettagli dell'osservazione (il rapporto può consistere di più osservazioni) """				
* osservazione.data 0..* CodeableConcept "A.5.2.1 Data dell'osservazione" """Data e ora dell'osservazione - Sistema di codifica: ISO 8601"""				
* osservazione.codice 0..* CodeableConcept "A.5.2.3 Codice dell'osservazione" """Codice che rappresenta l'osservazione utilizzando i sistemi di codici concordati.
- Sistema/i preferito/i: LOINC
  - Sistema/i preferito/i: NPU
  - Sistema/i preferito/i: SNOMED CT"""				
* osservazione.risultato 0..* BackboneElement "A.5.2.11 Risultato dell'osservazione" """Risultato e codifica della misura relativa all'osservazione inclusi testo, risultati numerici e codificati. Il contenuto del risultato dell'osservazione varierà a seconda del tipo di osservazione.
- Sistema/i preferito/i: SNOMED CT (per i risultati in scala ordinale o nominale e codifica dei risultati)
- Sistema/i preferito/i: UCUM (per unità)"""				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabResultBattery2Fhir				
Id: fhir				
Title: "eHN Modello Logico Organizer - FHIR R4 Map"				
Source: Organizer				
Target: "hl7.org/fhir/r4"				
				
* -> "Observation.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/observation-grouping-it-lab')"				
* osservazione -> "Observation.hasMember.resolve()"				
* osservazione -> "Observation.component"				
* osservazione.data -> "Observation.effective[x]"				
* osservazione.codice -> "Observation.code"				
* osservazione.risultato -> "Observation.value[x]"				
// --END				
// --END				
// --END				
