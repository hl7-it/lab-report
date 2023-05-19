Gli scenari previsti per il dominio di Referto di Laboratorio sono descritti di seguito utilizzando la rappresentazione tramite Sequence Diagram. 
I sequence diagram sono diagrammi UML che ci permettono di descrivere uno scenario. Lo scenario rappresenta una sequenza di azioni per una attività.

In questa sezione sono rappresentati i due scenari per la gestione del Referto di Laboratorio:
- *[Interazione con le risorse Singole](./scenario.html#overview-fhir-interazione-con-risorse-sigole)*
- *[Interazione col Documento](./scenario.html#overview-fhir-interazione-con-il-documento)*

### Overview FHIR Interazione con Risorse Sigole
Gli attori coinvolti nella trasmissione e consultazione delle Risorse Singole del Referto di Laboratorio sono il Sender, il Receiver (o Provider) e il Consumer.

<p>{%include scenarioRes.svg -%}</p>

In questo scenario si delineano i seguenti casi d'uso:
- Alimentazione Risorse Singole
- Aggiornamento Risorse Singole
- Consultazione Risorse Singole

I dettagli di ogni scenario sono descritti di seguito.
#### Alimentazione 

<p>{%include alimentazioneRES.svg -%}</p>

L'attore Sender alimenta il Receiver, attraverso il metodo POST, inviando le informazioni racchiuse nel Referto di Laboratorio in risorse FHIR. Le risorse profilate che è possibile trasmettere sono:
- Observation
- Specimen
- DiagnosticReport

In questo scenario, il Sender invia un'unica risorsa FHIR chiamando il metodo: 

```
POST [base_url]/[Risorsa Singola]
```

Il Receiver processa la richiesta ottenuta e, se non riscontra errori, invia al Sender un messaggio di "OperationOutcome" positivo, creando la nuova istanza della Risorsa Singola inviata all'interno del Receiver. Se invece la pubblicazione fallisce, il Receiver invia al Sender un messaggio di "OperationOutcome" negativo, e il relativo codice di errore.

#### Consultazione Risorsa Singola

<p>{%include consultazioneRES.svg -%}</p>

Un attore Consumer può consultare una Risorsa singola all'interno del Receiver inviando una richiesta che può essere basata sui metodi GET o POST:

```
GET [base_url]/[Risorsa Singola]/?Parametro_di_ricerca1=valoreParametro1&Parametro_di_ricerca2=valoreParametro2&...
```
In questo scenario, i parametri di ricerca sono quello definiti dallo standard FHIR per ogni risorsa.

Il Receiver processa la richiesta ottenuta e, se non riscontra errori, restituisce una Bundle di tipo searchset contenente le risorse conformi ai parametri di ricerca specificati (vedi: *[Bundle searchset](https://hl7.org/fhir/R4/http.html#search)*). 

#### Aggiornamento FHIR Document Referto di Laboratorio

<p>{%include aggiornamentoRES.svg -%}</p>

L’attore Sender aggiorna il contenuto delle Risorse Singole inviando una richiesta al Receiver basata sul metodo PUT.

Per il corretto aggiornamento delle Risorse Singole, il Sender invia la seguente richiesta HTTP:

```
PUT [base_url]/[Risorsa Singola]/[Logical ID-Risorsa Singola]
```

Il Receiver processa la richiesta ottenuta e, se non riscontra errori, invia al Sender un messaggio di "OperationOutcome" positivo, aggiornando la Risorsa Singola  all'interno del server. Se invece la pubblicazione fallisce, il Receiver invia al Sender un messaggio di "OperationOutcome" negativo, e il relativo codice di errore.

### Overview FHIR Interazione con il Documento

Gli attori coinvolti nella trasmissione e consultazione del documento FHIR nativo Referto di Laboratorio sono il Sender, il Receiver (o Provider) e il Consumer.

<p>{%include scenarioDoc.svg -%}</p>

In questo scenario si delineano i seguenti casi d'uso:
- Alimentazione del documento
- Aggiornamento del documento
- Consultazione del documento

I dettagli di ogni scenario sono descritti di seguito.
#### Alimentazione 
Questa transazione è utilizzata per alimentare il repository.
<p>{%include alimentazioneDOC.svg -%}</p>

La creazione del documento è un attività del "document constructor", che per semplicità è incluso nell'attore Sender, è un applicazione. Il documento è creato instaurando una cooperazione tra "document constructor" e "autore" che devono assicurare l'accuratezza e la coerenza del documento lato machine readable e human readable. Prima di inviare il FHIR Document, il Sender deve assicurarsi la conformità ai profili delle risorse che vuole inviare e attestarla (vedi: *[Author/Constructor Obligations](https://www.hl7.org/fhir/documents.html#3.4.3.1)*). 

L’attore Sender alimenta il Receiver trasmettendo, utilizzando il metodo POST, la risorsa Bundle di type `document`. Le informazioni relative al Referto di Laboratorio sono contenute all'interno delle risorse Composition, DiagnosticReport, Observation, Specimen raccolte della risorsa Bundle per mezzo dell'elemento `Bundle.entry.resource`.

Per la corretta alimentazione del Receiver, il Sender invia la seguente richiesta HTTP:

```
POST [base_url]/Bundle
```
<span style="background-color: LightYellow;">Nota: [base_url] è valorizzato con l'indirizzo del Receiver.</span>


Il Receiver processa la richiesta ottenuta e, se non riscontra errori, invia al Sender un messaggio di "OperationOutcome" positivo, creando la nuova istanza della Bundle inviata all'interno del server. Se invece la pubblicazione fallisce, il Receiver invia al Sender un messaggio di "OperationOutcome" negativo, e il relativo codice di errore.
#### Consultazione FHIR Document Referto di Laboratorio

Questa transazione è utilizzata per consultare le risorse presenti nel repository. 
<p>{%include consultazioneDOC.svg -%}</p>

La consultazione della Bundle avviene tramite interrogazione dell'interfaccia FHIR predisposta dal server utilizzando il metodo GET o POST. Il formato della richiesta è strutturato nel seguente modo:

```
GET [base_url]/Bundle?Parametro_di_ricerca1=valoreParametro1&Parametro_di_ricerca2=valoreParametro2&...
```

Come riportato, é possibile esprimere in modo dettagliato una richiesta aggiungendo le coppie parametro di ricerca e valore parametro separate dall'operatore logico `&` (AND).  

Il Receiver processa la richiesta ottenuta e, se non riscontra errori, restituisce una Bundle di tipo searchset contenente le risorse conformi ai parametri di ricerca specificati (vedi: *[Bundle searchset](https://hl7.org/fhir/R4/http.html#search)*). 
#### Aggiornamento FHIR Document Referto di Laboratorio

Questa transazione è utilizzata per aggiornare le risorse presenti nel repository.
<p>{%include aggiornamentoDOC.svg -%}</p>

Nell'eventualità di errori che non rendono più affidabili le risorse della Bundle di tipo document, viene data la possibilità al Sender di aggiornare tali risorse. 
L'aggiornamento richiede la necessità di essere in possesso dell'id univoco della risorsa di tipo Bundle (vedi: *[Logical ID](https://www.hl7.org/fhir/resource.html#id)*).

Per il corretto aggiornamento delle risorse Bundle di tipo *document*, il Sender invia la seguente richiesta HTTP:

```
PUT [base_url]/Bundle/[Logical ID-Bundle]
```

Per evitare la perdita di dati, il processo di aggiornamento deve prevedere l'invio della risorsa Bundle aggiornata correttamente e la dismissione della versione precedente.
Una casistica di aggiornamento della Bundle document è l'aggiunta di risorse (APPEND) alla Bundle. 

Un'altra casistica è la creazione errata della risorsa Composition nel flusso di lavoro: ovvero se la Composition riguarda il paziente sbagliato o è scritta dall'autore sbagliato, e l'errore viene rilevato solo dopo che la Composition è stata consultata o è già stata utilizzata per la creazione di un documento. 
Per supportare la risoluzione di questo caso, la risorsa Composition è aggiornata per essere contrassegnata come "entered-in-error" e può essere creato un nuovo documento derivato. Ciò significa che l'intera serie di documenti derivati è ora considerata creata per errore e i sistemi che ricevono documenti derivati basati su Composition modificate DOVREBBERO rimuovere i dati presi dai documenti precedenti dall'uso di routine e/o intraprendere altre azioni appropriate. 

<span style="background-color: LightYellow;">Nota: Qualora il sender invii anche le risorse contenute nella Bundle in modo atomico, allora queste devono essere aggiornate conseguentemente all'aggiornamento della Bundle cui appartengono.</span>

Il Receiver processa la richiesta ottenuta e, se non riscontra errori, invia al Sender un messaggio di "OperationOutcome" positivo, creando la nuova istanza della Bundle inviata all'interno del server. Se invece la pubblicazione fallisce, il Receiver invia al Sender un messaggio di "OperationOutcome" negativo, e il relativo codice di errore.