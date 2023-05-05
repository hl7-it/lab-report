### Introduzione
La seguente pagina ha l'obiettivo di mostrare uno scenario esemplificativo di creazione e recupero delle risorse da una server FHIR tramite le richieste HTTP. Le richieste e le risorse coinvolte  nel seguente esempio sono concordi alle specifiche tecniche definite in questa Implementation Guide (vedi: *[Specifiche Tecniche](./specifiche.html)*).  

### Implementazione

Per l'esecuzione delle chimate HTTP mostrate in questa pagina è possibile utilizzare, come applicativo Client, uno dei seguenti:
- *[Postman](https://www.postman.com/downloads/)*
- *[VS Code REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)* 
- *[Insomnia](https://insomnia.rest/download)*    

Il framework FHIR mette anche a disposizione un server di prova *[HAPI FHIR Test Server](https://hapi.fhir.org/)*, capace di ricevere le chiamate HTTP e generare una risposta. È possibile utilizzare l'URL fornito dal server per testare gli esempi di chiamate sotto riportate (di seguito chiamato [url_base]).

### Richiesta per  la Creazione Documento

```
Richiesta HTTP:
    POST [base_url]/Bundle

Header:
    Content-Type: application/json
    Accept: application/json

Body:
    {
    "resourceType" : "Bundle",
    "id" : "Bundle-Lab-Esempio",
    "meta" : {
        "profile" : [
        "http://hl7.it/fhir/lab-report/StructureDefinition/BundleRL"
        ]
    },
    "identifier" : {
        "system" : "urn:ietf:rfc:39861",
        "value" : "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
    },
    "type" : "document",
    "timestamp" : "2023-02-25T14:30:00+01:00",
    "entry" : [
        {
        "fullUrl" : "urn:uuid:2ae95a5c-9094-41a3-a437-ce6d34c55a54",
        "resource" : {
            "resourceType" : "Composition",
            "id" : "2ae95a5c-9094-41a3-a437-ce6d34c55a54",
            "meta" : {
            "profile" : [
                "http://hl7.it/fhir/lab-report/StructureDefinition/CompositionRL"
            ]
            } ...

```    
Vedi *[Bundle](./Bundle-Bundle-Lab-Esempio.json.html)* per un esempio di Body da passare alla richiesta HTTP.

### Richiesta per la Consultazione Documento

```
Richiesta HTTP:
    GET [base_url]/Bundle?document-servicerequest=12345

Header:
    Content-Type: application/json
    Accept: application/json
```

<blockquote class="stu-note">
  <p>
    <b>Nota per gli Sviluppatori:</b>
     in un caso reale, per il corretto funzionamento della ricerca secondo i parametri definiti da questa IG, è necessario rendere
     il Server FHIR conforme alle Capabilities descritte in questa Implementation Guide.  
  </p>

  <p>
    A scopo puramente dimostrativo, è possibile inserire all'interno del CapabilityStatement di default il SearchParameter che si vuole utilizzare. In questo modo è possibile eseguire la richiesta HTTP sopra riportata. di seguito è riportato la chiamata per l'inserimento del search parameter "document-servicerequest":
  </p>

  <pre>
      Richiesta HTTP:
          POST [base_url]/SearchParameter

      Header:
          Content-Type: application/json
          Accept: application/json

      Body:
          {
            "resourceType": "SearchParameter",
            "status": "active",
            "name": "document-servicerequest", 
            "url": "http://acme.com/document-composition-search-parameter", 
            "code": "document-servicerequest",
            "base": [ "Bundle" ],
            "type": "token",
            "expression": "Bundle.entry.resource.as(ServiceRequest).identifier",
            "target": [ "ServiceRequest" ]
          }
  </pre>
</blockquote>  

Vedi  *[search-parameter-RL](./artifacts.html#behavior-search-parameters)* per il set completo dei parametri di richiesta disponibili in questa Implementation Guide.

Noto il nome del parametro (`document-servicerequest`) e il suo valore, il Client manda al server l'opportuna richiesta di GET.

### Richiesta per l'Aggiornamento Documento

L'aggiornamento della risorsa Bundle è previsto in caso di errore di compilazione del documento. A titolo esemplificativo, viene riportato l'aggiornamento della *[risorsa Bundle creata precedentemente](./esempio.html#Richiesta-per-la-Consultazione-Documento)*.

Per segnalare che una risorsa di un FHIR document è stata modificata, sia il suo stato che quello della risorsa Composition che la referenzia sono aggiornati con il valore `entered-in-error`.

```
Richiesta HTTP:
    PUT [base_url]/Bundle/Bundle-Lab-Esempio

Header:
    Content-Type: application/json
    Accept: application/json

Body:
  {
    "resourceType" : "Bundle",
    "id" : "Bundle-Lab-Esempio",
    "meta" : {
      "profile" : [
        "http://hl7.it/fhir/lab-report/StructureDefinition/BundleRL"
      ]
    },
    "identifier" : {
      "system" : "urn:ietf:rfc:39861",
      "value" : "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
    },
    "type" : "document",
    "timestamp" : "2023-02-25T14:30:00+01:00",
    "entry" : [
      {
        "fullUrl" : "urn:uuid:2ae95a5c-9094-41a3-a437-ce6d34c55a54",
        "resource" : {
          "resourceType" : "Composition",
          "id" : "2ae95a5c-9094-41a3-a437-ce6d34c55a54",
          "meta" : {
            "profile" : [
              "http://hl7.it/fhir/lab-report/StructureDefinition/CompositionRL"
            ]
          },
          "language" : "it",
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "dataEnterer",
                  "valueReference" : {
                    "reference" : "PractitionerRole/dc5842a1-83b6-43c7-b063-75ae989b803c"
                  }
                },
                {
                  "url" : "http://hl7.it/fhir/lab-report/StructureDefinition/dataEnterer-time",
                  "valueDateTime" : "2023-02-25T10:45:00+01:00"
                }
              ],
              "url" : "http://hl7.it/fhir/lab-report/StructureDefinition/composition-dataenterer-it"
            }
          ],
          "identifier" : {
            "use" : "official",
            "value" : "urn:uuid:10b545ea-725c-446d-9b95-8aeb444eddf3"
          },
          "status" : "entered-in-error" ...

```    

