Questa pagina descrive i requisiti di conformità per l'utilizzo dei diversi attori descritti in questa Implementation Guide (vedi: *[Scenario](./scenario.html)*).

### Conformità Laboratory Report IG
In questa Implementation Guide sono descritti due livelli di confromità:
- Conformità ai profili
- Conformità ai profili e le interazioni tra essi

Gli *[Artefatti](./artifacts.html)* descritti in questa Implementation Guide definiscono il set minimo, le obbligatorietà e le restrizioni sugli elementi che devono essere supportati da Client e Server. 

Laboratory Report IG definisce tre tipologie di attori coinvolti nel processo di interoperabilità dei dati:
- Sender
- Receiver
- Consumer

Per ogni tipologia di attore è stato definito un file di Capability Statement (vedi: *[Capabilities](./artifacts.html#behavior-capability-statements)*).

### Definizione dei Profili

Per supportare i profili descritti nell'Implementation Guide Laboratory Report il server deve:
- Essere in grado di valorizzare tutti gli elementi obbligatori o Must Support dei profili specificati;
- Dichiarare che è capace di supportare i profili modificando l'elemento `CapabilityStatement.rest.resource.supportedProfile` del CapabilityStatement con il canonicalUrl della risorsa che si vuole supportare;
- Dichiarare che è capace di supportare i parametri di ricerca modificando l'elemento `CapabilityStatement.rest.resource.searchParam` del CapabilityStatement con il canonicalUrl della risorsa che si vuole supportare;
- Dichiarare la conformità con le implementation guide del Laboratory Report (vedi: *[Capabilities](./artifacts.html#behavior-capability-statements)*), modificando l'elemento `CapabilityStatement.instantiates`.

### Conformità ai profili

```
{
  "resourceType": "CapabilityStatement",
  ...
  "rest": [
    {
      "mode": "server",
      ...
      "resource": [
        ...
        {
          "type": "Bundle",
          "supportedProfile": [
            "http://hl7.it/fhir/lab-report/StructureDefinition/BundleRL"
          ],
          ...
        }
      ]
    }
  ]
}
```
