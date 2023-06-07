ValueSet: ResultsLaboratoryObservation
Id: risultato-osservazione
Title: "Risultato Osservazione"
Description: "Valuset contente i codici che identificano il tipo di osservazione nel referto di laboratorio."
* ^status = #draft
* ^experimental = false

* include codes from system $LOINC where STATUS = "ACTIVE" and CLASSTYPE = "1"
* exclude codes from system $LOINC
    where CLASS regex /CYTO|HL7\.CYTOGEN|HL7\.GENETICS|^PATH(\..*)?|^MOLPATH(\..*)?|NR STATS|H&P\.HX\.LAB|CHALSKIN|LABORDERS/
