Instance: Bundle-Lab-Esempio
InstanceOf: bundle-it-lab
Title: "Bundle document - Referto di Medicina di Laboratorio"
Description: "Esempio di un Bundle rappresentante un FHIR document completo di Referto di Medicina di Laboratorio."
Usage: #example

* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
* type = #document
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[+].fullUrl = "/Composition" //"urn:uuid:2ae95a5c-9094-41a3-a437-ce6d34c55a54"
* entry[=].resource = Composition-Lab-Esempio
* entry[+].fullUrl = "/Patient" //urn:uuid:168d4960-0a0b-43af-8025-180f0965f324
* entry[=].resource = Paziente-SSN
* entry[+].fullUrl = "/DiagnosticReport" //urn:uuid:56f19992-e73e-45b5-bbdd-6d9aeb60b15a
* entry[=].resource = DiagnosticReport-Lab-Esempio
* entry[+].fullUrl = "/Encounter" //urn:uuid:7b06368c-7089-4f66-acc8-29e1fcbd31f6
* entry[=].resource = Encounter-Lab-Esempio
* entry[+].fullUrl = "/Specimen" //urn:uuid:168d4960-0a0b-43af-8025-180f0965f324
* entry[=].resource = Specimen-Lab-Esempio
* entry[observation].fullUrl = "/Observation" //urn:uuid:333b62b2-47b0-43b5-9745-abec1f0c4656
* entry[=].resource = Observation-Lab-Esempio-Glucosio
* entry[+].fullUrl = "/ServiceRequest" //urn:uuid:463ae6fe-60d4-4b38-84b3-1008e0925678
* entry[=].resource = ServiceRequest-Lab-Esempio
* entry[+].fullUrl = "/PractitionerRole" //urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c
* entry[=].resource = PractitionerRole-Lab-Esempio
* entry[+].fullUrl = "/Practitioner" //urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c
* entry[=].resource = Practitioner-Lab-Esempio
* entry[+].fullUrl = "/PractitionerInfermiere1" //urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c
* entry[=].resource = Infermiere-Lab-Esempio
* entry[+].fullUrl = "/Organization" //urn:uuid:dc5842a1-83b6-43c7-b063-75ae989b803c
* entry[=].resource = Organization-Lab-Esempio

