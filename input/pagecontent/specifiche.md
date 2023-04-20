### Processo di Alimentazione 
<p>{%include alimentazione.svg -%}</p>
L’attore Sender alimenta il Receiver trasmettendo, attraverso il metodo POST, la risorsa Bundle di type "document". Le informazioni del documento sono contenute nelle risorse Composition, DiagnosticReport, Observation, Specimen, Encounter e ServiceRequest contenute all'interno della risorsa Bundle tramite Bundle.entry.resource.

Il Receiver processa la richiesta ottenuta e, se non riscontra errori, invia al Sender un messaggio di "OperationOutcome" positivo, creando la nuova istanza della Bundle nel server. Se invece la pubblicazione fallisce, il Receiver invia al Sender un messaggio di "OperationOutcome" negativo, con il relativo codice di errore.

### Processo di Aggiornamento 
<p>{%include aggiornamento.svg -%}</p>
L'attore Sender ha la possibilità di aggiornare un FHIR document, attraverso il metodo PUT, indicando l'identificativo univoco della risorsa Bundle nella richiesta.
Il processo di aggiornamento deve includere due step:
1. Invio della risorsa Bundle precedente con indicazione, tramite l'attributo status="entered-in-error", sulla risorsa affetta da errore o che necessita una modifica.
2. Invio della risorsa Bundle corretta.

Lo step 1 risulta propedeutico per i sistemi sottoscritti al servizio. Infatti, l'aggiornamento dello status permette l'attivazione del processo di notifica per i sistemi che hanno consultato la Bundle in una versione precedente;

Il Receiver processa la richiesta ottenuta e, se non riscontra errori, invia al Sender un messaggio di "OperationOutcome" positivo, creando la nuova istanza della Bundle inviata all'interno del server. Se invece la pubblicazione fallisce, il Reciver invia al Sender un messaggio di "OperationOutcome" negativo, con il relativo codice di errore.

### Processo di Consultazione
<p>{%include consultazione.svg -%}</p>
L'attore Consumer ha la possibilità di ricercare specifici Bundle all'interno del server utilizzando i searchParameter. 
Le ricerche sono di due tipologie:

1. Filtrando rispetto un paziente specifico (Patient.identifier):
- Ricerca per identificativo paziente e identificativo richiesta (ServiceRequest.identifier);
- Ricerca per identificativo paziente e NRE prescrizione(ServiceRequest.requisition);
- Ricerca per identificativo paziente e codice esame (Observation.code);
- Ricerca per identificativo paziente e tipo campione (Specimen.type);
- Ricerca per identificativo paziente e data (Composition.date);
- Ricerca per identificativo paziente e dati identificativi incontro (Encounter.period, Encounter.type e Encounter.identifier);
2. Utilizzando l'identificativo univoco del FHIR document (Bundle.identifier);
3. Utilizzando altri parametri di ricerca (work in progress).