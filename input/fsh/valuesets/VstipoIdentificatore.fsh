ValueSet: VstipoIdentificatore
Id: VstipoIdentificatore
Title: "Tipo identificatore"
Description: "Value set che descrivie i diversi tipi di identificatori. Include i codici della tabella http://terminology.hl7.org/CodeSystem/v2-0203 piu' 'STP' ed 'ENI' "
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 Italia"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.it/fhir"
* $v2-0203#DL "Patente di Guida"
* $v2-0203#PPN "Numero Passaporto"
* $v2-0203#BRN "Breed Registry Number"
* $v2-0203#MR "Medical record number"
* $v2-0203#MCN "Microchip Number"
* $v2-0203#EN "Employer number"
* $v2-0203#TAX "Tax ID number"
* $v2-0203#NIIP "National Insurance Payor Identifier (Payor)"
* $v2-0203#PRN "Provider number"
* $v2-0203#MD "Medical License number"
* $v2-0203#DR "Donor Registration Number"
* $v2-0203#ACSN "Accession ID"
* $v2-0203#UDI "Universal Device Identifier"
* $v2-0203#SNO "Serial Number"
* $v2-0203#SB "Social Beneficiary Identifier"
* $v2-0203#PLAC "Placer Identifier"
* $v2-0203#FILL "Filler Identifier"
* include codes from system CsItIdentifierType