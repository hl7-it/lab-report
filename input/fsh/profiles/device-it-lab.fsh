Profile: DeviceRefertoLabIt 
Parent: Device
Id: device-it-lab
Title: "Device - Lab Report"
Description: "Descrizione di un dispositivo tramite il profilo della risorsa Device per il referto di laboratorio."

* insert SetFmmandStatusRule ( 1, trial-use)

* . ^short = "Dispositivo coinvolto nel dominio di Referto di Laboratorio"
* . ^definition = "Il dispositivo coinvolto nel dominio di Referto di Laboratorio può essere il dispositivo di raccolta del contenuto multimediale (Media) o utilizzato nella rilevazione dell'Observation." 

* identifier ^short = "Identificativo del dispositivo, se presente."

* deviceName ^short = "Il nome del dispositivo fornito dal produttore."
* deviceName.name ^short = "Il nome che identifica il dispositivo."
* deviceName.type ^short = "Descrizione attributo: Tipologia di nome. Possibili valori:  udi-label-name | user-friendly-name | patient-reported-name | manufacturer-name | model-name | other"
* deviceName.type from $typeName-device (required)
* type ^short = "Il tipo di dispositivo. Si può utilizzare il codice di classificazione nazionale dei dispositivi medici (CND)."
//* type from $sct-device (preferred)
//* type.coding.system = "urn:oid:2.16.840.1.113883.2.9.6.1.48"

* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "mode"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Tipologia di dispositivo."
* type.coding ^short = "Classificazione del dispositivo."
* type.coding ^slicing.ordered = false
* type.coding contains
    CND 0..1 
* type.coding[CND] ^short = "Codice di classificazione nazionale dei dispositivi medici."
* type.coding[CND].system = $cs-cnd 
* type.coding[CND].code from $vs-cnd (preferred)