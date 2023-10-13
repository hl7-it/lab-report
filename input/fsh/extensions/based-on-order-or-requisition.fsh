Extension: CompositionBasedOnOrderOrRequisitionIt
Id:   composition-basedOn-order-or-requisition-it
Title:  "Document Based On Order"
Description: "This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* ^url = "http://hl7.it/fhir/StructureDefinition/composition-basedOn-order-or-requisition-it"
* value[x] only Reference (ServiceRequest) or Identifier