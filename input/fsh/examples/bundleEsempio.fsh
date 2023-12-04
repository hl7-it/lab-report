Instance: Bundle-Lab-Esempio
InstanceOf: bundle-it-lab
Title: "Bundle document - Referto di Medicina di Laboratorio"
Description: "Esempio di un Bundle rappresentante un FHIR document completo di Referto di Medicina di Laboratorio."
Usage: #example

* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
* type = #document
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[composition].fullUrl = "urn:uuid:2ae95a5c-9094-41a3-a437-ce6d34c55a54" 
* entry[composition].resource = Composition-Lab-Esempio
* entry[patient].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5" 
* entry[patient].resource = Paziente-SSN
* entry[diagnosticReport].fullUrl = "urn:uuid:56f19992-e73e-45b5-bbdd-6d9aeb60b15a" 
* entry[diagnosticReport].resource = DiagnosticReport-Lab-Esempio
* entry[encounter].fullUrl = "urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6" 
* entry[encounter].resource = Encounter-Lab-Esempio
* entry[specimen].fullUrl = "urn:uuid:168d4960-0a0b-43af-8025-180f0965f325" 
* entry[specimen].resource = Specimen-Lab-Esempio
* entry[observation][+].fullUrl = "urn:uuid:7e2f354b-de83-4472-bd07-1571cdb50fde" 
* entry[observation][=].resource = Observation-Lab-Esempio-Glucosio
// * entry[observation][+].fullUrl = "urn:uuid:5ea6e05a-e271-4ef9-bcc1-0bd10e55c90c" 
// * entry[observation][=].resource = Observation-Lab-Esempio-Cloruro
// * entry[observation][+].fullUrl = "urn:uuid:a8a27a81-4543-45a9-8859-fa17053d963e" 
// * entry[observation][=].resource = Observation-TimedTest-T3-Lab-Esempio
// * entry[observation][+].fullUrl = "urn:uuid:a7d1b3b0-9aee-4bc7-b0f2-46d441ba6244" 
// * entry[observation][=].resource = Observation-TimedTest-T0-Lab-Esempio
// * entry[observation][+].fullUrl = "urn:uuid:a7d1b3b0-9aee-4bc7-b0f2-46d441ba6245" 
// * entry[observation][=].resource = Observation-TimedTest-T1-Lab-Esempio
// * entry[observation][+].fullUrl = "urn:uuid:9474efca-8c8a-436d-a1a4-5706a1dd057a" 
// * entry[observation][=].resource = Observation-TimedTest-T2-Lab-Esempio
// * entry[observation][+].fullUrl = "urn:uuid:a7d1b3b0-9aee-4bc7-b0f2-46d441ba6246" 
// * entry[observation][=].resource = Observation-Lab-Esempio-Elettroforesi
* entry[serviceRequest].fullUrl = "urn:uuid:463ae6fe-60d4-4b38-84b3-1008e0925678" 
* entry[serviceRequest].resource = ServiceRequest-Lab-Esempio
* entry[practitionerRole].fullUrl = "urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c" 
* entry[practitionerRole].resource = PractitionerRole-Lab-Esempio
* entry[practitioner][+].fullUrl = "urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803d" 
* entry[practitioner][=].resource = Practitioner-Lab-Esempio
* entry[practitioner][+].fullUrl = "urn:uuid:134a0bb1-aa0a-46b9-aa1e-a5d0e379e77c" 
* entry[practitioner][=].resource = Infermiere-Lab-Esempio
* entry[organization][+].fullUrl = "urn:uuid:5fd3f1a6-b2c8-44cb-8237-0b5f0a81f2a8" 
* entry[organization][=].resource = Organization-Lab-Esempio
* entry[organization][+].fullUrl = "urn:uuid:ae0365ea-d8a1-45e0-a39d-f14fac4ccfe8" 
* entry[organization][=].resource = OrganizationOperatore-Lab-Esempio
* entry[substance].fullUrl = "urn:uuid:168d4960-0a0b-43af-8025-180f0965f326" 
* entry[substance].resource = Specimen-Additive-Substance-Lab-Esempio
* entry[location].fullUrl = "urn:uuid:f148e54a-2046-4534-b9e9-54e7e9632224" 
* entry[location].resource = Location-Lab-Esempio
* entry[device].fullUrl = "urn:uuid:168d4960-0a0b-43af-8025-180f0965f324" 
* entry[device].resource = Device-Lab-Esempio
* entry[media].fullUrl = "urn:uuid:059927b1-7e17-409e-ae60-68cc3c0b3aea" 
* entry[media].resource = Media-Lab-Esempio








