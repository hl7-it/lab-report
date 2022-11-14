
//====== Profiles =====================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PatientItLabReport
Parent:   $Patient-uv-ips
Id:       Patient-it-labReport
Title:    "Patient"
Description: "This profile defines how to represent Patient in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------
* ^description = "Information about an individual receiving health care services"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationResultsItLabReport
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Id:       Observation-results-it-labReport
Title:    "Observation Results: laboratory"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary. This is the base profile from which the other results profiles are derived."
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationResultsLaboratoryItLabReport
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
Id:       Observation-results-laboratory-it-labReport
Title:    "Observation Results: laboratory"
Description: "This profile constrains the Observation resource to represent results produced by laboratory tests or panels/studies for the X-eHealth project."
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationResultsPathologyItLabReport
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips
Id:       Observation-results-pathology-it-labReport
Title:    "Observation Results: pathology"
Description: "This profile constrains the Observation resource to represent results produced by pathology studies for the X-eHealth project."
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerItLabReport
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id:       Practitioner-it-labReport
Title:    "Practitioner"
Description: "This profile defines how to represent Practitioners in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleItLabReport
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id:       PractitionerRole-it-labReport
Title:    "PractitionerRole"
Description: "This profile defines how to represent Practitioners (with thier roles) in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------
