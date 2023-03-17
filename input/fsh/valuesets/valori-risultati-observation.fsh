ValueSet: ResultsLaboratoryObservationUvIps
Id: risultato-osservazione
Title: "Risultato - RL"
Description: "Codice che identifica il risultato dell'osservazione nel contesto del Referto di Laboratorio"
* include codes from system $LOINC where STATUS = "ACTIVE" and CLASSTYPE = "1"
* exclude codes from system $LOINC
    where CLASS regex /CYTO|HL7\.CYTOGEN|HL7\.GENETICS|^PATH(\..*)?|^MOLPATH(\..*)?|NR STATS|H&P\.HX\.LAB|CHALSKIN|LABORDERS/