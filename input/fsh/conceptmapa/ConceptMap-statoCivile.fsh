Instance: ConceptMap-statoCivile
InstanceOf: ConceptMap
Usage: #definition
* version = "4.0.1"
* name = "HL7_ISTAT_StatoCivile"
* title = "Mapping fra VS HL7 e Tabella ISTAT Stato Civile"
* status = #active
* experimental = true
* date = "2012-06-13"
* publisher = "HL7 Italia"
* contact.name = "HL7 Italia"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.it"
* description = "Mapping da Value 'statoCivile' a Tabella Istat Stato Civile."
* jurisdiction = urn:iso:std:iso:3166#IT
* purpose = "Esempio di mapping fra value set."
* sourceCanonical = Canonical(VsStatoCivile) 
* targetCanonical = Canonical(VsIstatStatoCivile) 
* group[0].source = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* group[=].target = Canonical(CsIstatStatoCivile)
* group[=].element[0].code = #S
* group[=].element[=].display = "Never Married"
* group[=].element[=].target.code = #1
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #equivalent
* group[=].element[=].target.display = "Celibe/Nubile"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #M
* group[=].element[=].display = "Married"
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #equivalent
* group[=].element[=].target.code = #2
* group[=].element[=].target.display = "Coniugato/a"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #D
* group[=].element[=].display = "Divorced"
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #equivalent
* group[=].element[=].target.code = #4
* group[=].element[=].target.display = "Divorziato/a"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #W
* group[=].element[=].display = "Widowed"
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #equivalent
* group[=].element[=].target.code = #3
* group[=].element[=].target.display = "Vedovo/a"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #A
* group[=].element[=].display = "Annulled"
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #inexact
* group[=].element[=].target.code = #9
* group[=].element[=].target.display = "Non classificabile/ignoto/n.c"
* group[=].element[=].target.equivalence = #inexact
* group[=].element[=].target.comment = "Concetto non classificato nel target, quindi associato alla classe 9  'Non classificabile/ignoto/n.c'"
* group[=].element[+].code = #L
* group[=].element[=].display = "Legally Separated"
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #inexact
* group[=].element[=].target.code = #9
* group[=].element[=].target.display = "Non classificabile/ignoto/n.c"
* group[=].element[=].target.equivalence = #inexact
* group[=].element[=].target.comment = "Concetto non classificato nel target, quindi associato alla classe 9  'Non classificabile/ignoto/n.c'"
* group[+].source = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[=].target = Canonical(CsIstatStatoCivile)
* group[=].element.code = #UNK
* group[=].element.display = "Unknown"
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #equivalent
* group[=].element.target.code = #9
* group[=].element.target.display = "Non classificabile/ignoto/n.c"
* group[=].element.target.equivalence = #wider
* group[=].element.target.comment = "Il target comprende concetti come 'non classificabile' che corrspondono a nullFlavor tipo UNC e/o OTH"
* group[+].source = Canonical(CsIstatStatoCivile)
* group[=].target = Canonical(CsIstatStatoCivile)
* group[=].element[0].code = #6
* group[=].element[=].display = "Unito civilmente"
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #equivalent
* group[=].element[=].target.code = #6
* group[=].element[=].target.display = "Unito civilmente"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #7
* group[=].element[=].display = "Stato libero a seguito di decesso della parte unita civilmente"
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #equivalent
* group[=].element[=].target.code = #7
* group[=].element[=].target.display = "Stato libero a seguito di decesso della parte unita civilmente"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #8
* group[=].element[=].display = "Stato libero a seguito di scioglimento dell'unione"
* group[=].element[=].target.extension.url = "http://hl7.org/fhir/1.0/StructureDefinition/extension-ConceptMap.element.target.equivalence"
* group[=].element[=].target.extension.valueCode = #equivalent
* group[=].element[=].target.code = #8
* group[=].element[=].target.display = "Stato libero a seguito di scioglimento dell'unione"
* group[=].element[=].target.equivalence = #equivalent