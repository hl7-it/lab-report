Profile: ObservationRefertoLabIt
Parent:  Observation 
Id: observation-it-lab
Title:    "Observation - Lab Report"
Description: "Descrizione delle rilevazioni cliniche tramite il profilo della risorsa Observation per il referto di laboratorio."
* . ^short = "Observation Referto di Laboratorio"
* insert SetFmmandStatusRule ( 1, trial-use)
/* * obeys ita-lab-1 */ // Non allineato con il vincolo in HL7 EU

* extension contains $ext-supportingInfo named SupportingInfo 0..*
* extension contains $ext-triggeredBy named TriggeredBy 0..*
* extension contains $ext-bodyStructure named BodyStructure 0..1
* extension contains $ext-valueR5 named ValueR5 0..1
* extension contains $ext-labTestKit named LabTestKit 0..*
* extension contains $ext-certifiedRefMaterialCodeable named CertifiedRefMaterialCodeable 0..*
* extension contains $ext-CertifiedRefMaterialIdentifer named CertifiedRefMaterialIdentifer 0..*
* extension contains $ext-Labaccredited named Labaccredited 0..1

* extension[LabTestKit].value[x] only Reference(DeviceRefertoLabIt)
* extension[Labaccredited] ^short = "Indica se il laboratorio è accreditato o meno."
* basedOn only Reference(CarePlan or DeviceRequest or ImmunizationRecommendation or MedicationRequest or NutritionOrder or ServiceRequestRefertoLabIt)

* code from $risultato-osservazione (preferred)
* code ^short = "Tipo di osservazione tramite codice."
* status from $observation-status (required)
* status ^short = "Descrizione attributo: Stato dell'osservazione. Possibili valori: registered | preliminary | final | amended +"
//---slicing category ---------------------
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies this laboratory report. Two basic categories has been selected in this guide: laboratory specialty and Study type. Laboratory specialty is characteristic of the laboratory that produced the test result while Study type is an arbitrary classificion of the test type."
* category contains laboratory 1..1 and studyType 0..* and specialty 0..*
* category[laboratory] from $vs-observation-category
* category[studyType] from LabStudyTypesEuVs
* category[specialty] from LabSpecialtyEuVs
* category[laboratory] ^short = "	Indica genericamente che si riferisce ad un esame di Laboratorio"
* category[studyType] ^short = "Classificazione per tipo di studio"
* category[specialty] ^short = "Classificazione per specialità"

* subject 1..
* subject ^short = "Soggetto della rilevazione clinica."
* subject only Reference(PatientItcore)

* encounter 0..1
* encounter only Reference(EncounterRefertoLabIt)
* encounter ^short = "Contesto in cui è stata prodotta l'osservazione."

* performer 1..
* performer ^short = "Soggetto responsabile dell'osservazione."
* performer.extension contains $ext-performerFunction named performedFunction 0..1
* performer.extension[performedFunction] ^short = "Ruolo del soggetto responsabile dell'osservazione."

* performer only Reference(PractitionerItcore or PractitionerRoleItcore or OrganizationItCore or CareTeam or RelatedPerson)

* effective[x] 1..
* effective[x].extension contains $SD-data-absent-reason named dataAbsentReason 0..1
* effective[x].extension[dataAbsentReason] ^short = "Motivo per cui non è disponibile il valore di tempo relativo all'osservazione."

* value[x] ^short = "Risultato dell'osservazione."
* valueQuantity ^short = "Risultato misurabile tramite una quantità."
* valueQuantity only QuantityLab
* valueRatio only RatioLab
* valueRatio ^short = "Rapporto di misura."
* valueRange only RangeLab
* valueRange ^short = "Intervallo di misura."
* valueCodeableConcept from $valueset-valuecodeableconcept-obs-it (preferred)

* hasMember only Reference(ObservationRefertoLabIt)
* hasMember ^short = "Osservazioni correlate alla risorsa."

* component
  * ^requirements = "EHDSObservation.component"
  * extension contains $ext-valueR5 named value-r5 0..1
  * extension[value-r5]
    * value[x] only Attachment or Reference(MolecularSequence)
    * ^short = "only for Diagrams or Pictures"
    * ^definition = "When the result is a Diagram or Picture (Microbiology), then the Attachment data type should be used. In FHIR R4 this can be done by preadopting the R5 Observation.value[x] element using the cross-version extension."
  * valueQuantity only QuantityLab 
  * valueQuantity ^short = "Risultato misurabile tramite una quantità."
  * valueRatio only RatioLab
  * valueRatio ^short = "Rapporto di misura."
  * valueRange only RangeLab
  * valueRange ^short = "Intervallo di misura."
  * valueCodeableConcept from $valueset-valuecodeableconcept-obs-it (preferred)

* specimen ^short = "Reference al campione su cui si basa l'osservazione."
* specimen only Reference(SpecimenRefertoLabIt)

* device ^short = "Dispositivo utilizzato per ottenere l'osservazione."
* device only Reference(DeviceRefertoLabIt or DeviceMetric)

* interpretation ^short = "Interpretazione del risultato (Alto, Basso, Normale, ecc.)"
* referenceRange ^short = "Range di riferimento per la caratterizzazione dell'osservazione sulla base di un criterio.\nEsempio: Range di normalità per uomo adulto."
* referenceRange.low ^short = "Limite inferiore del range di riferimento, se rilevante."
* referenceRange.high ^short = "Limite superiore del range di riferimento, se rilevante."
* referenceRange.type ^short = "Contesto del range di riferimento. Esempio: Un intervallo atteso in un individuo prima della pubertà."
* referenceRange.appliesTo ^short = "Categoria della popolazione a cui si applica il range di riferimento."
* referenceRange.age ^short = "Età a cui si applica, se rilevante."
* referenceRange.text ^short = "Note testuali."

* hasMember only Reference(ObservationRefertoLabIt)
* derivedFrom only Reference(ObservationRefertoLabIt or MediaRefertoLabIt)
* derivedFrom ^short = "Reference dell'osservazione da cui deriva questo valore di osservazione. Ad esempio, un gap anionico calcolato o una misurazione fetale basata su un'immagine ecografica."
* method ^short = "Metodo di rilevazione dell'osservazione."
* method from $sct-method (preferred)
* bodySite ^short = "Sito corporeo dell'osservazione."







/* * valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^binding.extension[0].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = $results-observation-bloodgroup
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Conformità aggiuntiva vincolante a un valuset di rilevazioni dei gruppi sanguigni per i valori dei risultati di laboratorio da SNOMED CT IPS per l'uso a livello globale (nelle giurisdizioni membri e non membri SNOMED)." 
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"  
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = $results-presence-absence-snomed-ct-ips-free-set
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"  
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Conformità aggiuntiva vincolante a un valuset di rilevazioni di presenza e assenza (valori qualificatori) per i valori dei risultati di laboratorio da SNOMED CT IPS per l'uso a livello globale (nelle giurisdizioni membri e non membri SNOMED)." 
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = $results-microorganism-snomed-ct-ips-free-set
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Conformità aggiuntiva vincolante a un valuset di rilevazioni di microrganismi per i valori dei risultati di laboratorio da SNOMED CT IPS per l'uso a livello globale (nelle giurisdizioni membri e non membri SNOMED)." 
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding" */

/* Invariant: ita-lab-1
Description: "se  \"hasMember\" non è presente allora Observation deve avere un\" value\""
Severity: #error
Expression: "value.exists() or hasMember.exists()" */