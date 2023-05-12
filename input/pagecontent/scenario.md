Gli scenari previsti per il dominio di Referto di Laboratorio sono descritti di seguito utilizzando la rappresentazione tramite Sequence Diagram. 
I sequence diagram sono diagrammi UML che ci permettono di descrivere uno scenario. Lo scenario rappresenta una sequenza di azioni per una attività.

In questa sezione sono rappresentati i due scenari per la gedtione del Referto di Labvoratorio:
- *[Interazione con le risorse Singole](./scenario.html#overview-fhir-interazione-con-risorse-sigole)*
- *[Interazione col Documento](./scenario.html#overview-fhir-interazione-col-docuemtno)*

### Overview FHIR Interazione con Risorse Sigole
Gli attori coinvolti nella trasmissione e consultazione delle Risorse Singole del Referto di Laboratorio sono il Sender, il Receiver e il Consumer.

<p>{%include scenarioRes.svg -%}</p>

In questo scenario si delineano i seguenti casi d'uso:
- Alimentazione Risorse Singole
- Aggiornamento Risorse Singole
- Consultazione Risorse Singole

I dettagli di ogni scenario sono descritti di seguito.

### Overview FHIR Interazione col Docuemtno

Gli attori coinvolti nella trasmissione e consultazione del documento FHIR nativo Referto di Laboratorio sono il Sender, il Receiver (o Provider) e il Consumer.

<p>{%include scenarioDoc.svg -%}</p>


In questo scenario si delineano i seguenti casi d'uso:
- Alimentazione del documento
- Aggiornamento del documento
- Consultazione del documento

I dettagli di ogni scenario sono descritti di seguito.
### Alimentazione 
Questa transazione è utilizzata per alimentare il repository.
<p>{%include alimentazione.svg -%}</p>

#### Consultazione FHIR Document Referto di Laboratorio

Questa transazione è utilizzzata per consultare le risorse presenti nel repository. 
<p>{%include consultazione.svg -%}</p>

#### Aggiornamento FHIR Document Referto di Laboratorio

<p>{%include aggiornamento.svg -%}</p>
Questa transazione è utilizzata per aggiornare le risorse presenti nel repository.
<!-- ### Esempio di workflow per la creazione delle risorse utili a definire il Referto di Laboratorio
Quarto opzionale -->

