Profile: ObservationRefertoLabIt
Parent:  $Observation-resultslab-eu-lab //  Observation
Id: observation-it-lab
Title:    "Observation - Lab Report"
Description: "Descrive come rappresentare la risorsa Observation per le rilevazioni cliniche nel dominio di Lab Report."
* . ^short = "Observation Referto di Laboratorio"
* insert SetFmmandStatusRule ( 1, draft )
* obeys ita-lab-1
* code from $risultato-osservazione (preferred)
* code ^short = "Tipo di osservazione tramite codice."
* status from $observation-status (required)
* status ^short = "Descrizione attributo: Stato dell'osservazione. Possibili valori: registered | preliminary | final | amended +"
/* * category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this.coding.system"
* category ^slicing.rules = #open */
* category ^short = "Codice che classifica il tipo di osservazione."
* category ^definition = "La categoria di osservazione può definire la classificazione tramite diversi livelli di dettaglio, a partire da laboratory."
* category contains 
    esame-laboratorio 1..1 and
    specialita-esame-laboratorio 0..*
* category[esame-laboratorio] ^short = "Classificazione del tipo di osservazione."
* category[esame-laboratorio].coding ^short = "Codice definito da un sistema terminologico."
* category[esame-laboratorio].coding.system ^short = "Terminologia utilizzata."
* category[esame-laboratorio].coding.system = $observation-category
* category[esame-laboratorio].coding.code = #laboratory
* category[esame-laboratorio].coding.code ^short = "Codice della terminologia per descrivere il dominio di laboratorio."

* category[specialita-esame-laboratorio] ^short = "Codice o testo della specialità dell'esame di laboratorio."
* category[specialita-esame-laboratorio] from $sezione-referto-laboratorio (preferred)
* category[specialita-esame-laboratorio].coding ^short = "Codice della terminologia per dettagliare la specialità di laboratorio"
* category[specialita-esame-laboratorio].coding.system ^short = "Terminologia utilizzata."
* category[specialita-esame-laboratorio].coding.system = $loinc

* subject 1..
* subject ^short = "Soggetto della rilevazione clinica."
* subject only Reference(patient-it-lab)

* encounter 0..1
* encounter only Reference(encounter-it-lab)
* encounter ^short = "Contesto in cui è stata prodotta l'osservazione."

* performer 1..
* performer ^short = "Soggetto responsabile dell'osservazione."
* performer only Reference(PractitionerRefertoLabIt or PractitionerRefertoLabIt or OrganizationRefertoLabIt or CareTeam or RelatedPerson)

* value[x] ^short = "Risultato dell'osservaizone."

* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed


* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity ^short = "Risultato misurabile tramite una quantità."
* valueQuantity only quantity-it-lab

* hasMember only Reference(observation-it-lab)
* hasMember ^short = "Osservazioni correlate alla risorsa."
* specimen ^short = "Reference al campione su cui si basa l'osservazione."
* specimen only Reference(specimen-it-lab)

* interpretation ^short = "Interpretazione del risultato (Alto, Basso, Normale, ecc.)"
* referenceRange ^short = "Range di riferimento per la caratterizzazione dell'osservazione sulla base di un criterio.\nEsempio: Range di normalità per uomo adulto."
* referenceRange.low ^short = "Limite inferiore del range di riferimento, se rilevante."
* referenceRange.high ^short = "Limite superiore del range di riferimento, se rilevante."
* referenceRange.type ^short = "Contesto del range di riferimento. Esempio: Un intervallo atteso in un individuo prima della pubertà."
* referenceRange.appliesTo ^short = "Categoria della popolazione a cui si applica il range di riferimento."
* referenceRange.age ^short = "Età a cui si applica, se rilevante."
* referenceRange.text ^short = "Note testuali."
* device ^short = "Dispositivo utilizzato per ottenere l'osservazione."
* device only Reference(device-it-lab or DeviceMetric)
* method ^short = "Metodo di rilevazione dell'osservazione."
// * method from $sct-method (example)
//  the binding is preferred in the EU guide
* method from $sct-method (preferred)
* bodySite ^short = "Sito corporeo dell'osservazione."
* derivedFrom only Reference(observation-it-lab or MediaRefertoLabIt)
* derivedFrom ^short = "Reference dell'osservazione da cui deriva questo valore di osservazione. Ad esempio, un gap anionico calcolato o una misurazione fetale basata su un'immagine ecografica."

* valueCodeableConcept from $valueset-valuecodeableconcept-obs-it (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
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
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

Invariant: ita-lab-1
Description: "se  \"hasMember\" non è presente allora Observation deve avere un\" value\""
Severity: #error
Expression: "value.exists() or hasMember.exists()"