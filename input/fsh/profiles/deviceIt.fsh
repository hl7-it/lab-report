Profile: DeviceRefertoLabIt 
Parent: Device
Id: device-it-lab
Title: "Device - Lab Report"
Description: "Descrive la risorsa Device che descrive un dispositivo."
/* * ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2023-03-09T16:43:56.519+01:00"
* ^publisher = "HL7 Italia"
* ^copyright = "HL7 Italia" */
* insert SetFmmandStatusRule ( 1, draft )

* . ^short = "Dispositivo coinvolto nel dominio di Referto di Laboratorio"
* . ^definition = "Il dispositivo coinvolto nel dominio di Referto di Laboratorio può essere il dispositivo di raccolta del contenuto multimediale (Media) o utilizzato nella rilevazione dell'Observation." 

* identifier ^short = "Identificativo del dispositivo, se presente."

* deviceName ^short = "Il nome del dispositivo fornito dal produttore."
* deviceName.name ^short = "Il nome che identifica il dispositivo."
* deviceName.type ^short = "Descrizione attributo: Tipologia di nome. Possibili valori:  udi-label-name | user-friendly-name | patient-reported-name | manufacturer-name | model-name | other"
* deviceName.type from $typeName-device (required)
* type ^short = "Il tipo di dispositivo"
* type from $sct-device (preferred)