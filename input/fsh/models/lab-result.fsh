// -------------------------------------------------------------------------------				
//  Logical Model				lab-result.fsh
// -------------------------------------------------------------------------------				
Logical: ResultLabEhn				
Id: Risultato				
Title: "A.5 - Risultato"				
Description:  """Risultato dell'esame."""				
* bloccoNarrativo 0..1 BackboneElement "A.5.1 Parte Narrativa del Referto di Laboratorio" """A.5.1 Parte Narrativa del Referto di Laboratorio"""				
* bloccoNarrativo.report 0..* Narrative "A.5.1.1 Report" """Referto completo (sintesi testuale del documento del Referto di laboratorio) così come emesso dal laboratorio."""				
* bloccoNarrativo.note 0..* Narrative "A.5.1.2 Commenti, interpretazione e raccomandazioni" """Commenti, ad esempio un'interpretazione testuale o consigli che accompagnano il rapporto sui risultati."""		 		
* osservazione 0..* BackboneElement "A.5.2 Dettagli dell'osservazione" """A.5.2 Dettagli dell'osservazione (il rapporto può consistere di più osservazioni) """				
* osservazione.data 0..* CodeableConcept "A.5.2.1 Data dell'osservazione" """Data e ora dell'osservazione - Sistema di codifica: ISO 8601"""				
* osservazione.codice 0..* CodeableConcept "A.5.2.3 Codice dell'osservazione" """Codice che rappresenta l'osservazione utilizzando i sistemi di codici concordati.
- Sistema/i preferito/i: LOINC
- Sistema/i preferito/i: NPU
- Sistema/i preferito/i: SNOMED CT"""				
* osservazione.codice.nome 0..* string "A.5.2.3.1 Nome dell'osservazione" """Nome completo dell'osservazione in base allo standard di codifica utilizzato."""				
* osservazione.codice.nomeConvenzionale 0..* string "A.5.2.3.2 Nome originale dell'osservazione" """Nome originale (convenzionale) dell'osservazione utilizzato dal laboratorio."""				
* osservazione.codice.displayName 0..* string "A.5.2.3.3 Nome visualizzato dell'osservazione" """Nome dell'osservazione semplificato (nome breve dell'osservazione) per la visualizzazione"""			
* osservazione.metodo 0..* CodeableConcept "A.5.2.4 Metodo di osservazione" """Metodo di osservazione (principio di misurazione) per ottenere il risultato.
- Sistema/i preferito/i: SNOMED CT"""				
* osservazione.device 0..* CodeableConcept "A.5.2.5 Dispositivo utilizzato per l'osservazione" """Informazioni sul dispositivo (analizzatore), sul kit utilizzato per il test di laboratorio e sul calibratore  (identificatore, tipo, nome, modello, produttore)
- Sistema/i preferito/i: SNOMED CT
 - Sistema/i preferito/i: EMDN"""				
* osservazione.ordine 0..* BackboneElement "A.5.2.8 Ordine" """Identifica l'esame e chi effettua l'esame."""				
* osservazione.esecutore 0..* BackboneElement "A.5.2.9 Esecutore" """Identifica l'autore e fornisce informazioni sulla provenienza dei dati (del risultato) che potrebbero non essere derivati dal referto di laboratorio stessp. """			
* osservazione.reporter 0..* BackboneElement "A.5.2.10 Reporter" """A seguito dei risultati ottenuti, ci può essere un interprete o una persona responsabile della convalida."""				
* osservazione.risultato 0..* BackboneElement "A.5.2.11 Risultato dell'osservazione" """Risultato e codifica della misura relativa all'osservazione inclusi testo, risultati numerici e codificati. Il contenuto del risultato dell'osservazione varierà a seconda del tipo di osservazione.
- Sistema/i preferito/i: SNOMED CT (per i risultati in scala ordinale o nominale e codifica dei risultati)
- Sistema/i preferito/i: UCUM (per unità)"""				
* osservazione.interprete 0..* CodeableConcept "A.5.2.12 Interpretazione dell'osservazione" """Informazioni sugli intervalli di riferimento e sull'interpretazione dei risultati.
 - Sistema/i preferito/i: SNOMED CT
 - Sistema/i preferito/i: HL7 v3 Code System ObservationInterpretation"""				
* osservazione.descrizione 0..* Narrative "A.5.2.13 Descrizione del risultato" """Commenti e rappresentazione narrativa del risultato dell'osservazione e dei risultati."""			
* osservazione.statoAccreditamento 0..* BackboneElement "A.5.2.14 Stato di accreditamento" """Stato di accreditamento del laboratorio per la particolare osservazione."""				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabResult2Fhir				
Id: fhir				
Title: "eHN Lab Result model to FHIR R4 Map"				
Source: Risultato				
Target: "hl7.org/fhir/r4"				
				
* -> "Observation.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/ObservationRefertoLabIt')"				
* bloccoNarrativo -> "Composition.section.section.text"				
* bloccoNarrativo -> "Composition.section.text"				
* bloccoNarrativo -> "Composition.text"				
* bloccoNarrativo.report -> "Composition.section.section.text"				
* bloccoNarrativo.report -> "Composition.section.text"				
* bloccoNarrativo.report -> "Composition.text"				
* bloccoNarrativo.note -> "Composition.section:annotations.text"				
* osservazione -> "Observation.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/ObservationRefertoLabIt')"				
* osservazione -> "Observation.hasMember.resolve()"				
* osservazione -> "Observation.component"				
* osservazione.data -> "Observation.effective[x]"				
* osservazione.codice -> "Observation.code"				
* osservazione.codice.nome -> "Observation.code.coding.display"				
* osservazione.codice.nomeConvenzionale -> "Observation.code.text"				
* osservazione.codice.displayName -> "Observation.code.coding.display.extension('translation')"				
* osservazione.metodo -> "Observation.method"				
* osservazione.device -> "Observation.device.resolve()"				
* osservazione.ordine -> "Observation.basedOn.resolve().ofType(ServiceRequest)"				
* osservazione.esecutore -> "Observation.performer.resolve()"				
* osservazione.risultato -> "Observation.value[x]"				
* osservazione.interprete -> "Observation.interpretation"				
* osservazione.descrizione -> "Observation.text"				
* osservazione.descrizione -> "Observation.note"								
// --END				
// --END				
// --END				
