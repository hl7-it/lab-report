ValueSet: LabOrderCodes
Id: lab-orderCodes-it-lab
Title: "Codice Richiesta esame di Laboratorio [LOINC]"
Description: "Codice della richiesta per un esame di Laboratorio."


* insert LOINCCopyrightForVS
* insert SetFmmandStatusRule (1, trial-use)
* include codes from system $loinc and valueset $results-laboratory-observations-uv-ips where ORDER_OBS = "Order"
* include codes from system $loinc and valueset $results-laboratory-observations-uv-ips where ORDER_OBS = "Both"