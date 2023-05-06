Questa sezione dell'Implementation Guide del Referto di Laboratorio fornisce una panoramica rispetto l'integrazione tra gli attori Sender, Reciver e Consumer. Sono definite le chiamate HTTP, per la creazione, l'aggiornamento e la consultazione dei FHIR Document e i parametri di ricerca previsti da questa guida. Ad integrazione delle specifiche tecniche, alla pagina *[Esempio](./esempio.html) è descritta uno scenario esemplificativo di implementazione delle casistiche descritte di seguito. 

### Workflow
<p>{%include workflow.svg -%}</p>

Di seguito vengono riportati i concetti chiave per la corretta implementazione della IG di Referto di Laboratorio:
1. Ogni attore deve supportare il corretto set di Capabilities al fine di compiere le opportune richieste HTTP (vedi:*[Capabilities](./artifacts.html#behavior-capability-statements)*, *[CapabilityStatement](https://hl7.org/fhir/R4/capabilitystatement.html)*);
2. Le richieste HTTP devono seguire le specifiche descritte dallo standard FHIR (vedi: *[REST API](https://hl7.org/fhir/R4/http.html)*);
3. Il sender deve creare un Bundle di tipo documento la cui struttura è descritta dallo standard FHIR (vedi: *[Bundle Document](https://www.hl7.org/fhir/R4/documents.html#3.3)*);
4. Il Consumer crea la richiesta HTTP aggiungendo i search parameter messi a disposizione dalla IG di Referto di Laboratorio (vedi: *[search-parameter-RL](./artifacts.html#behavior-search-parameters)*, *[search-parameter](https://www.hl7.org/fhir/R4/search.html#standard)*);
5. Il Consumer riceve in risposta ad una chiamata di lettura un Bundle di tipo searchset che raccoglie i Bundle presenti nel server receiver corrisondenti ai criteri di ricerca (vedi: *[RESTful Search](http://hl7.org/fhir/R4B/bundle.html#searchset)*).

### Creazione del documento

L’attore Sender alimenta il Receiver trasmettendo, utilizzando il metodo POST, la risorsa Bundle di type `document`. Le informazioni relative al Referto di Laboratorio sono contenute all'interno delle risorse Composition, DiagnosticReport, Observation, Specimen, Encounter e ServiceRequest, raccolte della risorsa Bundle per mezzo dell'elemento `Bundle.entry.resource`.

#### Richiesta

Per la corretta alimentazione del Receiver, il Sender invia la seguente richiesta HTTP:

```
POST [base_url]/Bundle
```
<span style="background-color: LightYellow;">Nota: [base_url] è valorizzato con l'indirizzo del Receiver.</span>


#### Risposta

Il Receiver processa la richiesta ottenuta e, se non riscontra errori, invia al Sender un messaggio di "OperationOutcome" positivo, creando la nuova istanza della Bundle inviata all'interno del server. Se invece la pubblicazione fallisce, il Reciver invia al Sender un messaggio di "OperationOutcome" negativo, e il relativo codice di errore.

### Aggiornamento Documento 

Nell'eventualità di errori che non rendono più affidabili le risorse della Bundle di tipo document, viene data la possibilità al Sender di aggiornare tali risorse. 
L'aggiornamento richiede la necessità di essere in possesso dell'id univoco della risorsa di tipo Bundle (vedi: *[Logical ID](https://www.hl7.org/fhir/resource.html#id)*). A tal fine, è necessario una prima fase di lettura della Bundle (vedi: *[Processo di Consultazione](./specifiche.html#processo-di-consultazione)*) per poi una conseguente modifica. 

#### Richiesta

Per il corretto aggiornamento delle risorse Bundle di tipo *document*, il Sender invia la seguente richiesta HTTP:

```
PUT [base_url]/Bundle/[Logical ID-Bundle]
```

Per evitare la perdita di dati, il processo di aggiornamento deve includere due step:
1. Aggiornamento dell'attributo `status` col valore "entered-in-error", sulla risorsa affetta da errore e sul Bundle di tipo document;
2. Invio della risorsa Bundle aggiornata correttamente.

Lo step 1 risulta propedeutico per i sistemi sottoscritti al servizio. L'aggiornamento dello status permette l'attivazione del processo di notifica per i sistemi che hanno consultato la Bundle in una versione precedente.

#### Risposta
Il Receiver processa la richiesta ottenuta e, se non riscontra errori, invia al Sender un messaggio di "OperationOutcome" positivo, creando la nuova istanza della Bundle inviata all'interno del server. Se invece la pubblicazione fallisce, il Reciver invia al Sender un messaggio di "OperationOutcome" negativo, e il relativo codice di errore.

### Consultazione Documento
Consumer e Sender hanno la possibilità di ricercare specifici Bundle all'interno del server utilizzando i parametri di ricerca messi a disposizione dalla Implementation Guide Referto di Laboratorio (vedi: *[search-parameter-RL](./artifacts.html#behavior-search-parameters)*). 

#### Richiesta

La consultazione delle Bundle avviene tramite interrogazione dell'interfaccia FHIR predisposta dal server utilizzando il metodo GET. Il formato della richiesta è strutturato nel seguente modo:

```
GET [base_url]/Bundle?Parametro_di_ricerca1=valoreParametro1&Parametro_di_ricerca2=valoreParametro2&...
```

Come riportato, é possibile esprimere in modo dettagliato una richiesta aggiungendo le coppie parametro di ricerca e valore parametro separate dall'operatore logico `&` (AND).  

Per questa IG sono definiti i seguenti SearchParameter:

1. Filtrando rispetto un paziente specifico (`Patient.identifier`):
- Ricerca per identificativo paziente e identificativo richiesta (`ServiceRequest.identifier`);
- Ricerca per identificativo paziente e NRE prescrizione(`ServiceRequest.requisition`);
- Ricerca per identificativo paziente e codice esame (`Observation.code`);
- Ricerca per identificativo paziente e tipo campione (`Specimen.type`);
- Ricerca per identificativo paziente e data (`Composition.date`);
- Ricerca per identificativo paziente e dati identificativi incontro (`Encounter.period`, `Encounter.type` e `Encounter.identifier`);
2. Utilizzando l'identificativo univoco del FHIR document (`Bundle.identifier`);
3. Utilizzando altri parametri di ricerca (work in progress).

(vedi: *[search-parameter-RL](./scenario.html#consultazione-fhir-document-referto-di-laboratorio)*)

#### Risposta

Il Receiver processa la richiesta ottenuta e, se non riscontra errori, restituisce un Bundle di tipo searchset contenente le risorse conformi ai parametri di ricerca specificati (vedi: *[Bundle searchset](https://hl7.org/fhir/R4/http.html#search)*). 

### Esempio di Richieste e Risposte

Per un esempio completo su come implementare correttamente gli attori di questa IG vedi *[Esempio](./esempio.html)*.