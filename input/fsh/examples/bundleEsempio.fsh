Instance: Bundle-Lab-Esempio
InstanceOf: bundle-it-lab
Title: "Bundle document - Referto di Medicina di Laboratorio"
Description: "Esempio di un Bundle rappresentante un FHIR document completo di Referto di Medicina di Laboratorio."
Usage: #example

* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
* type = #document
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[composition].fullUrl = "Composition/2ae95a5c-9094-41a3-a437-ce6d34c55a54" 
* entry[composition].resource = Composition-Lab-Esempio
* entry[patient].fullUrl = "Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5" 
* entry[patient].resource = Paziente-SSN
* entry[diagnosticReport].fullUrl = "DiagnosticReport/56f19992-e73e-45b5-bbdd-6d9aeb60b15a" 
* entry[diagnosticReport].resource = DiagnosticReport-Lab-Esempio
* entry[encounter].fullUrl = "Encounter/7b06368c-7089-4f66-acc8-29e1fcbd31f6" 
* entry[encounter].resource = Encounter-Lab-Esempio
* entry[specimen].fullUrl = "Specimen/168d4960-0a0b-43af-8025-180f0965f324" 
* entry[specimen].resource = Specimen-Lab-Esempio
* entry[observation].fullUrl = "Observation/Observation-Lab-Esempio-Glucosio" 
* entry[observation].resource = Observation-Lab-Esempio-Glucosio
* entry[serviceRequest].fullUrl = "ServiceRequest/463ae6fe-60d4-4b38-84b3-1008e0925678" 
* entry[serviceRequest].resource = ServiceRequest-Lab-Esempio
* entry[practitionerRole].fullUrl = "PractitionerRole/dc5842a1-83b6-43c7-b063-75ae989b803c" 
* entry[practitionerRole].resource = PractitionerRole-Lab-Esempio
* entry[practitioner][+].fullUrl = "Practitioner/dc5842a1-83b6-43c7-b063-75ae989b803c" 
* entry[practitioner][=].resource = Practitioner-Lab-Esempio
* entry[practitioner][+].fullUrl = "Practitioner/Infermiere-Lab-Esempio" 
* entry[practitioner][=].resource = Infermiere-Lab-Esempio
* entry[organization].fullUrl = "Organization/Organization-Lab-Esempio" 
* entry[organization].resource = Organization-Lab-Esempio

