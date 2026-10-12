Instance: OrganizationOperatore-Lab-Esempio
InstanceOf: OrganizationItCore
Usage: #example
Title: "Esempio di risorsa Organization che descrive le informazioni dell' operatore sanitario/socio sanitario"
Description: "Esempio di organizzazione ASL rappresentata tramite il profilo OrganizationItCore"


* id = "3c75bf31-bd32-4c0f-9e4a-585d20c08ce4"
* identifier[aslRegione].system = $cs-asl 
* identifier[aslRegione].value = #120202
* active = 	true
//* type = $CS-tipoEntita#asl "Azienda Sanitaria Locale"
* name = "ASL ROMA 2"
* telecom[0].system = #phone
* telecom[0].value = "0651004555"
* telecom[1].system = #url
* telecom[1].value = "http://www.aslroma2.it"

