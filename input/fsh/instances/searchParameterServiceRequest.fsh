Instance: DocumentServiceRequest
InstanceOf: SearchParameter
Usage: #definition
Title: "Bundle-ServiceRequest: identificativo"
* status = #active
* name = "document-servicerequest"
* url = "http://example-it/document-servicerequest"
* code = #document-servicerequest
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.as(ServiceRequest).identifier"
* description = "Permette di ricercare il Bundle in base all'identificativo della richiesta di prestazione."