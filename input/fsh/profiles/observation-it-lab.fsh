Profile: ObservationRefertoLabIt
Parent:  $Observation-resultslab-eu-lab //  Observation
Id: observation-it-lab
Title:    "Observation - Lab Report"
Description: "Descrizione delle rilevazioni cliniche tramite il profilo della risorsa Observation per il referto di laboratorio."
* . ^short = "Observation Referto di Laboratorio"
* insert SetFmmandStatusRule ( 1, trial-use)
/* * obeys ita-lab-1 */ // Non allineato con il vincolo in HL7 EU

* code from $risultato-osservazione (preferred)
* code ^short = "Tipo di osservazione tramite codice."
* status from $observation-status (required)
* status ^short = "Descrizione attributo: Stato dell'osservazione. Possibili valori: registered | preliminary | final | amended +"
* category ^short = "Codice che classifica il tipo di osservazione."
* category ^definition = "La categoria di osservazione può definire la classificazione tramite diversi livelli di dettaglio, a partire da laboratory."

* category[laboratory] ^short = "Indica genericamente che si riferisce ad un esame di Laboratorio"
* category[studyType] ^short = "Classificazione per tipo di studio"
* category[specialty] ^short = "Classificazione per specialità"

* subject 1..
* subject ^short = "Soggetto della rilevazione clinica."
* subject only Reference(PatientRefertoLabIt)

* encounter 0..1
* encounter only Reference(EncounterRefertoLabIt)
* encounter ^short = "Contesto in cui è stata prodotta l'osservazione."

* performer 1..
* performer ^short = "Soggetto responsabile dell'osservazione."
* performer only Reference(PractitionerRefertoLabIt or PractitionerRoleRefertoLabIt or OrganizationRefertoLabIt or CareTeam or RelatedPerson)

* effective[x] 1..

* value[x] ^short = "Risultato dell'osservazione."
/* * value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed
* valueQuantity ^sliceName = "valueQuantity"  */
* valueQuantity ^short = "Risultato misurabile tramite una quantità."
* valueQuantity only QuantityLab

* hasMember only Reference(ObservationRefertoLabIt)
* hasMember ^short = "Osservazioni correlate alla risorsa."
* specimen ^short = "Reference al campione su cui si basa l'osservazione."
* specimen only Reference(SpecimenRefertoLabIt)

* interpretation ^short = "Interpretazione del risultato (Alto, Basso, Normale, ecc.)"
* referenceRange ^short = "Range di riferimento per la caratterizzazione dell'osservazione sulla base di un criterio.\nEsempio: Range di normalità per uomo adulto."
* referenceRange.low ^short = "Limite inferiore del range di riferimento, se rilevante."
* referenceRange.high ^short = "Limite superiore del range di riferimento, se rilevante."
* referenceRange.type ^short = "Contesto del range di riferimento. Esempio: Un intervallo atteso in un individuo prima della pubertà."
* referenceRange.appliesTo ^short = "Categoria della popolazione a cui si applica il range di riferimento."
* referenceRange.age ^short = "Età a cui si applica, se rilevante."
* referenceRange.text ^short = "Note testuali."
* device ^short = "Dispositivo utilizzato per ottenere l'osservazione."
* device only Reference(DeviceRefertoLabIt or DeviceMetric)
* method ^short = "Metodo di rilevazione dell'osservazione."


* method from $sct-method (preferred)
* bodySite ^short = "Sito corporeo dell'osservazione."
* derivedFrom only Reference(ObservationRefertoLabIt or MediaRefertoLabIt)
* derivedFrom ^short = "Reference dell'osservazione da cui deriva questo valore di osservazione. Ad esempio, un gap anionico calcolato o una misurazione fetale basata su un'immagine ecografica."

* valueCodeableConcept from $valueset-valuecodeableconcept-obs-it (preferred)

// => Gia presente nel profilo parent...

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