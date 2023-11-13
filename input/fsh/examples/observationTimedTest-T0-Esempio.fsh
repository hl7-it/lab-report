Instance: Observation-TimedTest-T0-Lab-Esempio
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue a digiuno, dopo 30 minuti, dopo 60 minuti, dopo 90 minuti e dopo 120 minuti."

* category[laboratory] = $observation-category#laboratory
* status = #final
* code = $loinc#20448-7 "Insulin [Units/volume] in Serum or Plasma"

* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = $ucum
* valueQuantity.value = 20

* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* subject = Reference(Paziente-SSN)
//* performer = Reference(Practitioner-Lab-Esempio)
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)

Instance: Observation-TimedTest-T1-Lab-Esempio
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 30 minuti."

* category[laboratory] = $observation-category#laboratory

* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* status = #final

* code = $loinc#20448-7   "Insulin [Units/volume] in Serum or Plasma"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = $ucum
* valueQuantity.value = 120




* subject = Reference(Paziente-SSN)
* extension.valueReference = Reference(Observation-TimedTest-T0-Lab-Esempio)
* extension.url = $sequelTo
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)

Instance: Observation-TimedTest-T2-Lab-Esempio
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 60 minuti."

* category[+][laboratory].coding.code = #laboratory
* category[=][laboratory].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][laboratory].coding.display = "Laboratory"





* status = #final
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* code.coding.system = "http://loinc.org"
* code.coding.code = #20448-7 	
* code.coding.display = "Insulin [Units/volume] in Serum or Plasma"
* performer = Reference(PractitionerRole-Lab-Esempio)
* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = $ucum
* valueQuantity.value = 87




* subject = Reference(Paziente-SSN)
* extension.valueReference = Reference(Observation-TimedTest-T1-Lab-Esempio)
* extension.url = $sequelTo
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)


Instance: Observation-TimedTest-T3-Lab-Esempio
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 90 minuti."

* category[+][laboratory].coding.code = #laboratory
* category[=][laboratory].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][laboratory].coding.display = "Laboratory"
* effectiveDateTime = "2022-10-25T13:35:00+01:00"




* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #20448-7 	
* code.coding.display = "Insulin [Units/volume] in Serum or Plasma"

* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = $ucum
* valueQuantity.value = 70




* subject = Reference(Paziente-SSN)
* extension.valueReference = Reference(Observation-TimedTest-T2-Lab-Esempio)
* extension.url = $sequelTo
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)

Instance: Observation-TimedTest-T4-Lab-Esempio
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 120 minuti."

* category[+][laboratory].coding.code = #laboratory
* category[=][laboratory].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=][laboratory].coding.display = "Laboratory"
* effectiveDateTime = "2022-10-25T13:35:00+01:00"




* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #20448-7 	
* code.coding.display = "Insulin [Units/volume] in Serum or Plasma"

* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = $ucum
* valueQuantity.value = 35




* subject = Reference(Paziente-SSN)
* extension.valueReference = Reference(Observation-TimedTest-T3-Lab-Esempio)
* extension.url = $sequelTo
* encounter = Reference(Encounter-Lab-Esempio)
* performer = Reference(PractitionerRole-Lab-Esempio)