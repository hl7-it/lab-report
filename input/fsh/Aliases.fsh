// GC: Suggest to reoganzie the entries (not always included in the right block )

//------Valueset------//
Alias: $conf = http://terminology.hl7.org/ValueSet/v3-Confidentiality
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $lab-type = http://hl7.eu/fhir/laboratory/ValueSet/lab-reportType-eu-lab
Alias: $diagn-status = http://hl7.org/fhir/ValueSet/diagnostic-report-status
Alias: $diagnosticreport-category = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $diagnosticreport-category-valueset = http://hl7.org/fhir/ValueSet/diagnostic-service-sections 
Alias: $ucum = http://unitsofmeasure.org
// Alias: $istat-titoloStudio = http://hl7.it/fhir/lab-report/ValueSet/istat-titoloStudio 
Alias: $istat-professione = http://hl7.it/fhir/itcore/ValueSet/vs-istatprofessioni
//Alias: $istat-cittadinanza = http://hl7.it/fhir/lab-report/ValueSet/istat-cittadinanza
Alias: $istat-cittadinanza = http://hl7.it/fhir/itcore/ValueSet/vs-istat-cittadinanza
//Alias: $istat-luogoNascita = http://hl7.it/fhir/lab-report/ValueSet/istat-luogoNascita
Alias: $istat-luogoNascita = http://hl7.it/fhir/itcore/ValueSet/vs-istat-luogoNascita
Alias: $practitionerRole-code = http://terminology.hl7.org/CodeSystem/practitioner-role
Alias: $laboratory-accredited = http://hl7.eu/fhir/StructureDefinition/laboratory-accredited
Alias: $specimen-container-device-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.container.device
Alias: $ext-annotation = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.note
Alias: $ext-annotationnote = http://hl7.org/fhir/StructureDefinition/annotationType|5.3.0
Alias: $diagnosticReport-link-xver = http://hl7.org/fhir/StructureDefinition/alternate-reference|5.3.0
Alias: $ext-composition = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition
//Alias: $asl = 	http://hl7.it/fhir/lab-report/ValueSet/uri-idAslRegione
Alias: $asl = http://hl7.it/fhir/itcore/ValueSet/vs-mds-asl
Alias: $tipo-org = http://hl7.it/fhir/itcore/ValueSet/vs-tipo-organizzazione
Alias: $Codice-Observation = http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips
//Alias: $tipoIdentificatore = http://hl7.it/fhir/lab-report/ValueSet/VstipoIdentificatore
Alias: $tipoIdentificatore = http://hl7.it/fhir/itcore/ValueSet/vs-tipoIdentificatore
Alias: $data-absent-reason = 	http://hl7.org/fhir/ValueSet/data-absent-reason
Alias: $MMG-PLS-code-lab-it = 	http://hl7.it/fhir/lab-report/ValueSet/mmgOrPls
Alias: $ucum-valueset = http://hl7.org/fhir/ValueSet/ucum-units
Alias: $results-observation-bloodgroup = http://hl7.it/fhir/lab-report/ValueSet/results-observation-bloodgroup
Alias: $tipo-campione-lab-it = http://hl7.it/fhir/lab-report/ValueSet/tipo-campione-lab-it
Alias: $valueset-valuecodeableconcept-obs-it = http://hl7.it/fhir/lab-report/ValueSet/valueset-valuecodeableconcept-obs-it
Alias: $results-microorganism-snomed-ct-ips-free-set = http://hl7.it/fhir/lab-report/ValueSet/results-microorganism-snomed-ct-ips-free-set
//Alias: $results-presence-absence-snomed-ct-ips-free-set = http://hl7.it/fhir/lab-report/ValueSet/results-presence-absence-snomed-ct-ips-free-set
Alias: $additivo-campione-it = http://hl7.it/fhir/lab-report/ValueSet/additivo-campione-it
Alias: $sezione-referto-laboratorio = http://hl7.it/fhir/lab-report/ValueSet/sezione-referto-laboratorio
Alias: $risultato-osservazione = http://hl7.it/fhir/lab-report/ValueSet/risultato-osservazione
Alias: $media-type = http://terminology.hl7.org/CodeSystem/media-type
Alias: $results-laboratory-observations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips
Alias: $campione-container-lab-it = http://hl7.it/fhir/lab-report/ValueSet/campione-container-lab-it
//------Profile------//
Alias: $sct-device = http://hl7.org/fhir/ValueSet/device-type
Alias: $observation-status = http://hl7.org/fhir/ValueSet/observation-status
Alias: $encounter-class = http://terminology.hl7.org/ValueSet/encounter-class
Alias: $encounter-status = http://hl7.org/fhir/ValueSet/encounter-status
Alias: $entityCode = http://terminology.hl7.org/ValueSet/v3-EntityCode
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $gender-code = http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender
Alias: $uri-idRegionali = http://hl7.it/fhir/lab-report/ValueSet/vs-anagrafi-regionali
//Alias: $uri-idEni = http://hl7.it/fhir/lab-report/ValueSet/uri-idEni 
//Alias: $uri-idStp = http://hl7.it/fhir/lab-report/ValueSet/URI-idStp
Alias: $cf = http://hl7.it/fhir/itcore/CodeSystem/cs-codicefiscale
//Alias: $anpr = http://hl7.it/sid/anpr
Alias: $anpr = http://hl7.it/fhir/itcore/CodeSystem/cs-anpr
Alias: $common-language = 	http://hl7.org/fhir/ValueSet/languages
// Alias: $istat-stato = http://hl7.it/fhir/lab-report/ValueSet/istat-stato
// Alias: $istat-comune = http://hl7.it/fhir/lab-report/ValueSet/istat-comune
// Alias: $istat-provincia = http://hl7.it/fhir/lab-report/ValueSet/istat-provincia
// Alias: $istat-regione = http://hl7.it/fhir/lab-report/ValueSet/istat-regione
// Alias: $istat-stati = http://hl7.it/fhir/lab-report/CodeSystem/istat-unitaAmministrativeTerritorialiEstere
Alias: $istat-stato = http://www.hl7.it/fhir/itcore/ValueSet/vs-istatunitaAmministrativeTerritorialiEstere
Alias: $istat-comune = http://hl7.it/fhir/itcore/ValueSet/vs-istatcomune
Alias: $cs-provincia = http://hl7.it/fhir/itcore/CodeSystem/cs-province-istat
Alias: $istat-provincia = http://hl7.it/fhir/lab-report/ValueSet/istat-provincia
Alias: $istat-regione = http://hl7.it/fhir/itcore/ValueSet/vs-minsan-regione
Alias: $istat-stati = http://hl7.it/fhir/itcore/CodeSystem/istat-unitaAmministrativeTerritorialiEstere

Alias: $iso21090-SC-coding = http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding
Alias: $iso21090-ADXP-streetName = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName
Alias: $iso21090-ADXP-streetNameBase = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase
Alias: $iso21090-ADXP-streetNameType = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType
Alias: $iso21090-ADXP-houseNumber = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber
//Alias: $istat-dug = 	http://hl7.it/fhir/lab-report/CodeSystem/dug
Alias: $istat-dug = http://hl7.it/fhir/itcore/ValueSet/vs-istatdug
//Alias: $tipoEntita = http://hl7.it/fhir/lab-report/CodeSystem/it-tipoEntita
Alias: $tipoEntita = http://hl7.it/fhir/itcore/CodeSystem/it-tipoEntita
Alias: $location-type = http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType
Alias: $intent-code = http://hl7.org/fhir/ValueSet/request-intent
Alias: $sct-method = http://hl7.org/fhir/ValueSet/observation-methods
Alias: $MediaType = http://hl7.org/fhir/ValueSet/media-type
Alias: $typeName-device = http://hl7.org/fhir/ValueSet/device-nametype
Alias: $practitionerrole-code-lab-it = http://hl7.org/fhir/ValueSet/practitioner-role
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $v3-SpecimenType = http://terminology.hl7.org/CodeSystem/v3-SpecimenType

//-- HL7 EU Profiles
Alias: $Observation-resultslab-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab
Alias: $Specimen-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Specimen-eu-lab
Alias: $Patient-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab
Alias: $Quantity-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Quantity-eu-lab
Alias: $Practitioner-eu-lab  = http://hl7.eu/fhir/laboratory/StructureDefinition/Practitioner-eu-lab 
Alias: $PractitionerRole-eu-lab  = http://hl7.eu/fhir/laboratory/StructureDefinition/PractitionerRole-eu-lab
Alias: $Organization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Alias: $Composition-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab
Alias: $Bundle-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab
Alias: $DiagnosticReport-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab
Alias: $ServiceRequest-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab
Alias: $Substance-additive-specimen-it-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Substance-additive-eu-lab // The name will be changed
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $SD-data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $Range-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Range-uv-ips
Alias: $Ratio-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Ratio-uv-ips
Alias: $Quantity-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Quantity-uv-ips
Alias: $iso21090-uncertainty = http://hl7.org/fhir/StructureDefinition/iso21090-uncertainty
Alias: $iso21090-uncertaintyType = http://hl7.org/fhir/StructureDefinition/iso21090-uncertaintyType
Alias: $cs-regioni = http://hl7.it/fhir/itcore/CodeSystem/cs-minsan-regione
Alias: $cs-istat-comune = http://hl7.it/fhir/itcore/CodeSystem/istat-unitaAmministrativeTerritoriali
Alias: $cs-istat-dug = http://hl7.it/fhir/itcore/CodeSystem/cs-istatdug
//Alias: $cs-istatprofessione = http://hl7.it/fhir/itcore/CodeSystem/istat-professioni
Alias: $cs-titoloStudio = http://hl7.it/fhir/itcore/CodeSystem/istat-ctsi03
//---Example
Alias: $serviceRequest-category = http://example.it/FHIR/schema/serviceRequest-category
Alias: $servicerequest-lab = http://example.it/FHIR/schema/servicerequest-englab
//Alias: $istat-DUG-CS = 	http://hl7.it/fhir/lab-report/CodeSystem/dug
Alias: $patient-url = http://example.it/Patient/1
Alias: $obs-interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
//---Extension 
Alias: $ext-dataEnterer-time = dataEnterer-time
Alias: $sequelTo = http://hl7.org/fhir/StructureDefinition/observation-sequelTo
Alias: $diagnostic-report-composition-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition
Alias: $note = http://hl7.org/fhir/StructureDefinition/note
Alias: $patient-citizenship = http://hl7.org/fhir/StructureDefinition/patient-citizenship
//---ClinicalDocument
Alias: $clinical-document = http://hl7.org/fhir/StructureDefinition/clinicaldocument
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
//---EU
Alias: $basedOnOrder = http://hl7.eu/fhir/StructureDefinition/composition-basedOn-order-or-requisition
Alias: $informationRecipient = http://hl7.eu/fhir/StructureDefinition/information-recipient
//Alias: $it-tipoEntita = http://hl7.it/fhir/lab-report/CodeSystem/it-tipoEntita
//Alias: $it-tipoEntita = http://hl7.it/fhir/itcore/CodeSystem/it-tipoEntita

Alias: $minsan-regione = http://hl7.it/fhir/lab-report/CodeSystem/minsan-regione
//Alias: $UriHsp =  http://hl7.it/fhir/lab-report/CodeSystem/cs-mds-idStruttureInterne
Alias: $minsan-idStruttureInterne = http://hl7.it/fhir/lab-report/ValueSet/minsan-idStruttureInterne

Alias: $cs_strttureInterne = http://hl7.it/fhir/lab-report/CodeSystem/cs-mds-idStruttureInterne

Alias: $uri = urn:ietf:rfc:3986
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $iso3166 = urn:iso:std:iso:3166
//Alias: $CS_tipoEntita = http://hl7.it/fhir/lab-report/CodeSystem/it-tipoEntita
Alias: $UriHsp = http://hl7.it/fhir/lab-report/CodeSystem/minsan-hsp
Alias: $LOINC = http://loinc.org
Alias: $oid = urn:ietf:rfc:1155

Alias: $v3-NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
//Alias: $minsan-esenzioni = http://hl7.it/fhir/lab-report/CodeSystem/minsan-esenzioni
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
//Alias: $asl = http://hl7.it/fhir/lab-report/CodeSystem/cs-asl
Alias: $cs-asl = http://hl7.it/fhir/itcore/CodeSystem/cs-mds-asl
//Alias: $statoCivile = http://hl7.it/fhir/lab-report/CodeSystem/istat-statoCivile
//Alias: $CS_TitoloStudioIstat = http://hl7.it/fhir/lab-report/CodeSystem/istat-ctsi03
Alias: $it-V3RoleCode = http://hl7.it/fhir/lab-report/CodeSystem/it-V3RoleCode
// Alias: $it-V3RoleCode = http://hl7.it/fhir/lab-repor/CodeSystem/it-V3RoleCode
//Alias: $CS_ProfessioniIstat = http://hl7.it/fhir/lab-report/CodeSystem/istat-professioni
Alias: $CS_ProfessioniIstat = http://hl7.it/fhir/itcore/CodeSystem/istat-professioni
Alias: $V3RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $MinSanRegioni = http://hl7.it/fhir/lab-report/CodeSystem/minsan-regione
Alias: $strutturePub = http://hl7.it/fhir/lab-report/CodeSystem/minsan-hsp
//Alias: $aic = http://hl7.it/fhir/lab-report/CodeSystem/aifa-aic
Alias: $aic = http://hl7.it/fhir/itcore/CodeSystem/cs-aifa-aic
Alias: $aifa-nota = http://hl7.it/fhir/lab-report/CodeSystem/aifa-nota
Alias: $icd-9-cm = http://hl7.org/fhir/sid/icd-9-cm
Alias: $atc = http://www.whocc.no/atc

//extension observation
Alias: $ext-bodyStructure = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure
Alias: $ext-triggeredBy = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy
Alias: $ext-valueR5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value
Alias: $ext-supportingInfo = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
Alias: $ext-labTestKit = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-deviceLabTestKit
Alias: $ext-certifiedRefMaterialCodeable = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterialCodeable
Alias: $ext-CertifiedRefMaterialIdentifer = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterialIdentifer
Alias: $ext-Labaccredited = http://hl7.eu/fhir/StructureDefinition/laboratory-accredited
Alias: $vs-observation-category = http://hl7.org/fhir/ValueSet/observation-category
Alias: $ext-performerFunction = http://hl7.org/fhir/StructureDefinition/event-performerFunction

Alias: $ext-versionNumber = http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version
Alias: $ext-DiagnReportReference = http://hl7.eu/fhir/extensions/StructureDefinition/composition-diagnosticReportReference
Alias: $ext-bodySite = http://hl7.org/fhir/StructureDefinition/bodySite

//Alias: $cnd = http://www.dati.salute.gov.it/dataset/CND.jsp
Alias: $cs-cnd =  http://hl7.it/fhir/lab-report/CodeSystem/cs-cnd
Alias: $vs-cnd =  http://hl7.it/fhir/lab-report/ValueSet/vs-cnd
Alias: $cs-participationtype = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $cs-coveragetype = 	http://terminology.hl7.org/CodeSystem/v3-ActCode

Alias: $cs-role-it = http://hl7.it/fhir/itcore/CodeSystem/it-V3RoleCode
