Instance: Observation-TimedTest-T0-Lab-Esempio
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue a digiuno, dopo 30 minuti, dopo 60 minuti, dopo 90 minuti e dopo 120 minuti."

* id = "a7d1b3b0-9aee-4bc7-b0f2-46d441ba6244"
* category[laboratory] = $observation-category#laboratory
* status = #final
* code = $loinc#20448-7 "Insulin [Units/volume] in Serum or Plasma"

* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = $ucum
* valueQuantity.value = 20

* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
//* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)

Instance: Observation-TimedTest-T1-Lab-Esempio
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 30 minuti."


* id = "a7d1b3b0-9aee-4bc7-b0f2-46d441ba6245"

* category[laboratory] = $observation-category#laboratory

* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* status = #final

* code = $loinc#20448-7   "Insulin [Units/volume] in Serum or Plasma"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = $ucum
* valueQuantity.value = 120

* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)

//* extension.valueReference = Reference(urn:uuid:a7d1b3b0-9aee-4bc7-b0f2-46d441ba6244)
//* extension.url = $sequelTo

* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)

Instance: Observation-TimedTest-T2-Lab-Esempio
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 60 minuti."

* id = "9474efca-8c8a-436d-a1a4-5706a1dd057a"

* category[laboratory] = $observation-category#laboratory
=======

* status = #final
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* code.coding.system = "http://loinc.org"
* code.coding.code = #20448-7 	
* code.coding.display = "Insulin [Units/volume] in Serum or Plasma"
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)
* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = $ucum
* valueQuantity.value = 87

* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
//* extension.valueReference = Reference(urn:uuid:a7d1b3b0-9aee-4bc7-b0f2-46d441ba6245)
//* extension.url = $sequelTo

* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)


Instance: Observation-TimedTest-T3-Lab-Esempio
InstanceOf: ObservationRefertoLabIt
Usage: #example
Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 90 minuti."

* id = "a8a27a81-4543-45a9-8859-fa17053d963e"

* category[laboratory] = $observation-category#laboratory

* effectiveDateTime = "2022-10-25T13:35:00+01:00"

* status = #final

* code.coding.system = "http://loinc.org"
* code.coding.code = #20448-7 	
* code.coding.display = "Insulin [Units/volume] in Serum or Plasma"

* valueQuantity.unit = "u[IU]/mL"
* valueQuantity.code = #u[IU]/mL
* valueQuantity.system = $ucum
* valueQuantity.value = 70

* subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
//* extension.valueReference = Reference(urn:uuid:9474efca-8c8a-436d-a1a4-5706a1dd057a)
//* extension.url = $sequelTo
* encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
* performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)

// Instance: Observation-TimedTest-T4-Lab-Esempio
// InstanceOf: ObservationRefertoLabIt
// Usage: #example
// Description: "Esempio di un'osservazione: rilevazione di insulina nel sangue dopo 120 minuti."

// * category[laboratory] = $observation-category#laboratory
// * effectiveDateTime = "2022-10-25T13:35:00+01:00"


// * status = #final


// * code.coding.system = "http://loinc.org"
// * code.coding.code = #20448-7 	
// * code.coding.display = "Insulin [Units/volume] in Serum or Plasma"

// * valueQuantity.unit = "u[IU]/mL"
// * valueQuantity.code = #u[IU]/mL
// * valueQuantity.system = $ucum
// * valueQuantity.value = 35


// * subject = Reference(urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5)
// * extension.valueReference = Reference(urn:uuid:a8a27a81-4543-45a9-8859-fa17053d963e)
// * extension.url = $sequelTo
// * encounter = Reference(urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6)
// * performer = Reference(urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c)

