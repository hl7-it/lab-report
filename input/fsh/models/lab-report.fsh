// -------------------------------------------------------------------------------				
//  Logical Model				lab-report.fsh
// -------------------------------------------------------------------------------				
Logical: RefertoLaboratorio				
Id: RefertoLaboratorio				
Title: "A - Referto di Laboratorio"				
Description:  """Referto di Laboratorio."""				
* header 1..1 BackboneElement "A.1 header del Referto di Laboratorio" """A.1 header del Referto di Laboratorio."""				
* header.soggettoReferto 1..1 SoggettoCura "A.1.1 - A1.2 Paziente/Soggetto del Referto di Laboratorio" """A.1.1 Identificativo del Paziente/Soggetto e A.1.2 relative informazioni sui contatti del Paziente/Soggetto """				
//* header.payer 0..1 PayerLabEhn "A.1.3 Health insurance and payment information" """A.1.3 Health insurance and payment information"""				
* header.destinatario 0..1 Destinatario "A.1.4 Destinatario delle informazioni" """A.1.4 Destinatario delle informazioni (destinatario o destinatari del Referto di Laboratorio, potrebbero essere identificati ulteriori destinatari, ad esempio medico di base, altro specialista), se applicabile"""				
* header.autore 0..* Autore "A.1.5 Autore" """A.1.5 Autore (da cui è stato redatto il referto dei risultati di laboratorio o un sottoinsieme dei risultati)"""				
* header.firmatario 0..* Firmatario "A.1.6 Firmatario del documento" """A.1.6 Firmatario del documento (La persona che si assume la responsabilità di validare a livello legale il contenuto del documento)"""				
* header.validatore 0..* ValidatorLabEhn "A.1.7 Validatore del documento" """A.1.7 Validatore del documento"""				
* header.metadati 1..1 BackboneElement "A.1.8 Metadata del Referto di Laboratorio" """A.1.8 Metadata del Referto di Laboratorio"""				
* header.metadati.tipo 1..1 CodeableConcept "A.1.8.1 Tipo di documento" """Codice che identifica il tipo di documento. Valore fisso ""Referto di medicina di laboratorio"" - Dizionario di codifica: LOINC"""
* header.metadati.stato 1..1 CodeableConcept "A.1.8.2 Stato del Referto" """Stato del Referto . Ad esempio, preliminare, finale. - Sistema di Codifica: hl7:DiagnosticReportStatus"""
* header.metadati.data 1..1 dateTime "A.1.8.3 Data e ora della creazione del referto" """Data e ora della creazione del report dei risultati. - Sistema di Codifica: ISO 8601"""				
* header.metadati.titolo 0..1 string "A.1.8.4 Titolo del documento" """Titolo del documento, ad esempio ""Rapporto sui risultati di laboratorio"" - Sistema di Codifica: """				
* header.metadati.custode 0..1 BackboneElement "A.1.8.5 Custode del referto" """Organizzazione incaricata della conservazione del referto di laboratorio - Sistema di Codifica: """
* ordine 0..* Richiesta "A.2-A.3 Ordine" """A.2 Informazioni sull'ordine A.3 Motivo dell'ordine"""				
* campione 0..* Campione "A.4 Informazioni sul campione" """A.4 Informazioni sul campione"""				
* risultato 0..* Risultato "A.5 Risultati dell'esame" """A.5 Risultati dell'esame"""				
* organizer 0..* Organizer "A.5 Batteria di esami" """A.5 Batteria di esami"""	
* organizer.risultato 1..* Risultato "A.5 Risultati dell'esame" """A.5 Risultati dell'esame"""	

//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLab2Fhir				
Id: fhir				
Title: "eHN Modello Logico RefertoLaboratorio - FHIR R4 Map"				
Source: RefertoLaboratorio				
Target: "hl7.org/fhir/r4"				
				
* -> "Bundle.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/bundle-it-lab')"				
* header -> "Composition.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/composition-it-lab')"				
* header.soggettoReferto -> "Composition.subject"				
//* header.payer -> "ServiceRequest.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab').insurance.resolve()"				
* header.destinatario -> ".extension('http://hl7.org/fhir/StructureDefinition/cqf-receivingOrganization') [TBD}"				
* header.autore -> "Composition.author"				
* header.firmatario -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#legal)"				
* header.validatore -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#professional)"				
* header.metadati -> "Composition"				
* header.metadati.tipo -> "Composition.type"				
* header.metadati.stato -> "Composition.status"				
* header.metadati.data -> "Bundle.timestamp"				
* header.metadati.titolo -> "Composition.title"				
* header.metadati.custode -> "Composition.custodian"				
// * ordine -> "Composition.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition').valueReference.resolve()"				
// * ordine -> "Composition.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition').valueIdentifier"				
//* ordine -> "DiagnosticReport.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/diagnosticreport-it-lab').basedOn.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/diagnostic-report-basedOn-requisition').valueIdentifier"				
* ordine -> "DiagnosticReport.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/diagnosticreport-it-lab').basedOn.resolve()"				
* campione -> "Observation.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/observation-it-lab').specimen.resolve()"				
* campione -> "DiagnosticReport.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/diagnosticreport-it-lab').specimen.resolve()"				
* risultato -> "Composition.section:senza-sottosezione.entry.resolve()"				
* risultato -> "Composition.section:con-sottosezione.section.entry.resolve()"				
* risultato -> "DiagnosticReport.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/diagnosticreport-it-lab').result.resolve()"				
* organizer -> "Composition.section:senza-sottosezione.entry.resolve()"
* organizer -> "Composition.section:con-sottosezione.section.entry.resolve()"				
* organizer -> "DiagnosticReport.conformsTo('http://hl7.it/fhir/lab-report/StructureDefinition/diagnosticreport-it-lab').result.resolve()"				
* organizer.risultato -> "Composition.section:senza-sottosezione.entry.resolve().hasMember()"				
* organizer.risultato -> "Composition.section:con-sottosezione.section.entry.resolve().hasMember()"	
// --END				
// --END				
// --END				
// --END				
		
