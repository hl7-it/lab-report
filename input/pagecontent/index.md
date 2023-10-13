### Scopo
L'obiettivo della seguente guida è quello di definire, secondo lo standard HL7 FHIR versione R4, le specifiche per l'implementazione dei profili che verranno utilizzati nel referto di medicina di laboratorio nel contesto italiano.   

### Definizione del Referto di Medicina di Laboratorio
Il referto di laboratorio appartiene al nucleo minimo dei documenti del Fascicolo Sanitario Elettronico.
Ai sensi dell'articolo 27, comma 1, lettera d), del  decreto n. 178 del 29 settembre 2015,  il referto di laboratorio e' il documento redatto dal medico di medicina di laboratorio. 
Il contenuto informativo del Referto di Laboratorio è disciplinato all'art.2 dal Decreto del 18 maggio 2022 del Ministero della Salute ([Decreto Contenuti](https://www.gazzettaufficiale.it/eli/id/2022/07/11/22A03960)). 

### Contesto
La guida intende fornire delle specifiche adeguate al contesto italiano secondo lo standard HL7 FHIR, per assicurare l’accuratezza dei risultati degli esami di laboratorio e la trasmissione degli stessi, al paziente o ad altra figura professionale, in modo chiaro e corretto.
Questa guida implementativa è stata creata per descrivere in modo più completo gli elementi standard necessari per supportare lo scambio sia semantico che sintattico di informazioni inerenti al referto di laboratorio e viene sviluppata considerando come soggetto la risorsa Patient. 

La guida può essere utilizzata  per descrivere i risultati di laboratorio nei settori chiave della diagnostica in vitro, come:
- biochimica clinica
- ematologia 
- medicina trasfusionale
- microbiologia 
- immunologia.

### Navigazione
Questa guida implementativa utilizza come metodo di pubblicazione i tool web-based offerti dallo standard FHIR. Ciò consente una facile navigazione tra le varie risorse, i data type, i set di valori e altri componenti offerti dallo standard FHIR. 
Questo approccio consente inoltre agli implementatori di accedere facilmente alle informazioni necessarie per lo sviluppo di sistemi di interoperabilità.

### Dipendenze
{% include dependency-table.xhtml %}

### Autori e contributori

<table>
<thead>
<tr class="header">
<th>Ruolo</th>
<th>Nome</th>
<th>Organizzazione</th>
<th>Contatto</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Autore</td>
<td>Leonardo Alcaro</td>
<td>HL7 Italia</td>
<td>leonardo.alcaro@teamdigitale.governo.it</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Mario Sicuranza</td>
<td>HL7 Italia</td>
<td>mario.sicuranza@icar.cnr.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Ilenia Centonze</td>
<td>EY Advisory S.p.A.</td>
<td>ilenia.centonze@it.ey.com</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Davide Spanu</td>
<td>EY Advisory S.p.A.</td>
<td>davide.spanu@it.ey.com</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Maria Giovanna Antida Preziosi</td>
<td>SOGEI</td>
<td>mpreziosi@sogei.it</td>
</tr>
<tr class="odd">
<td>Contributore</td>
<td>Giorgio Cangioli</td>
<td>HL7 Italia</td>
<td>giorgio.cangioli@gmail.com</td>
</tr>
</tbody>
</table>