Gli scenari previsti per Referto di Laboratorio sono descritti di seguito utilizzando la rappresentazione tramite Sequence Diagram. 
## Sequence Diagrams
I sequence diagram sono diagrammi UML che ci permettono di descrivere uno scenario. Lo scenario rappresenta una sequenza di azioni per una attività.
### Overview

Gli attori/sistemi coinvolti sono il Sender, il Receiver (o Provider) e il Consumer.
<p>{%include creation.svg -%}</p>
In questo scenario si delineano i seguenti casi d'uso:
- Alimentazione
- Aggiornamento
- Consultazione
I dettagli di ogni scenario sono descritti di seguito.

### Alimentazione Referto di Laboratorio
Questa transazione è utilizzata per alimentare il repository con i referti di medicina di laboratorio.
<p>{%include alimentazione.svg -%}</p>

### Consultazione FHIR Document Referto di Laboratorio

<p>{%include consultazione.svg -%}</p>
Questa transazione è utilizzzata per consultare i referti di medicina di laboratorio utilizzando le principali query previste dallo standard per le risorse coinvolte. 

### Aggiornamento FHIR Document Referto di Laboratorio

<p>{%include aggiornamento.svg -%}</p>
Questa transazione è utilizzzata per aggiornare il referto di medicina di laboratorio.
<!-- ### Esempio di workflow per la creazione delle risorse utili a definire il Referto di Laboratorio
Quarto opzionale -->
