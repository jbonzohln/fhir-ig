# USCDI + Sickle Cell Disease Implementation Guide

**IG Name:** USCDI + Sickle Cell Disease Implementation Guide  
**Abbreviation:** USCDI-SCD  
**Package ID:** `hl7.fhir.us.uscdi-scd`  
**Canonical URL:** `http://hl7.org/fhir/us/uscdi-scd`  
**FHIR Version:** 4.0.1  
**US Core Version:** 8.0.1  
**Status:** STU1 Draft  



## Overview

This repository contains the FHIR Shorthand (FSH) source for the
**USCDI + Sickle Cell Disease (USCDI-SCD) Implementation Guide**, an HL7
FHIR Implementation Guide for structured clinical data exchange for patients
with Sickle Cell Disease (SCD).

The USCDI-SCD IG defines FHIR R4 profiles, extensions, value sets, code systems,
and example instances that extend [US Core 8.0.1](http://hl7.org/fhir/us/core/STU8.0.1/)
to address SCD-specific data exchange needs.



## Repository Structure

```
uscdi-scd-ig/
│
├── sushi-config.yaml               # SUSHI configuration (canonical, deps, pages, menu)
├── ig.ini                          # IG Publisher configuration
├── package.json                    # NPM package manifest
│
├── input/
│   ├── fsh/                        # FHIR Shorthand source files
│   │   ├── SCD_Aliases.fsh         # Code system and URI aliases
│   │   ├── profiles/
│   │   │   ├── SCD_Administrative.fsh      # Patient, Practitioner, Org, Location
│   │   │   ├── SCD_EncounterCondition.fsh  # Encounter, Conditions
│   │   │   ├── SCD_CareManagement.fsh      # AllergyIntolerance, CarePlan, ServiceRequest, Medication
│   │   │   └── SCD_ClinicalData.fsh        # Procedure, Lab, Vital Signs, BiologicallyDerivedProduct
│   │   ├── extensions/
│   │   │   └── SCD_Extensions.fsh          # SCD-specific FHIR extensions
│   │   ├── valuesets/
│   │   │   └── SCD_ValueSets.fsh           # Value set definitions
│   │   ├── codesystems/
│   │   │   └── SCD_CodeSystems.fsh         # Local code system definitions
│   │   └── instances/
│   │       ├── SCD_Examples.fsh            # Clinical example instances
│   │       └── SCD_CapabilityStatements.fsh # Server/Client CapabilityStatements
│   │
│   └── pagecontent/                # Markdown narrative pages
│       ├── index.md                # Home page
│       ├── introduction.md         # Introduction
│       ├── background.md           # Clinical & policy background
│       ├── scope_and_usage.md      # Scope, use cases
│       ├── overview.md             # Architecture overview, data element mapping
│       ├── audience.md             # Intended audiences
│       ├── conformance.md          # Must Support, conformance requirements
│       ├── profiles.md             # Profile narrative descriptions
│       ├── extensions.md           # Extension descriptions
│       ├── terminology.md          # Value sets and code systems
│       ├── security.md             # Security and privacy guidance
│       ├── downloads.md            # Downloadable artifacts
│       └── changes.md              # Change log
│
└── scripts/
    └── build.sh                    # Build script (SUSHI + IG Publisher)
```



## Included Profiles

| Profile | Base Resource | Parent Profile |
||||
| USCDI-SCD Patient | Patient | US Core Patient 8.0.1 |
| USCDI-SCD Practitioner | Practitioner | US Core Practitioner 8.0.1 |
| USCDI-SCD PractitionerRole | PractitionerRole | US Core PractitionerRole 8.0.1 |
| USCDI-SCD Organization | Organization | US Core Organization 8.0.1 |
| USCDI-SCD Location | Location | US Core Location 8.0.1 |
| USCDI-SCD Encounter | Encounter | US Core Encounter 8.0.1 |
| USCDI-SCD Condition Encounter Diagnosis | Condition | US Core Condition Encounter Diagnosis 8.0.1 |
| USCDI-SCD Condition Problems and Health Concerns | Condition | US Core Condition Problems and Health Concerns 8.0.1 |
| USCDI-SCD AllergyIntolerance | AllergyIntolerance | US Core Allergy Intolerance 8.0.1 |
| USCDI-SCD CarePlan | CarePlan | US Core CarePlan 8.0.1 |
| USCDI-SCD ServiceRequest | ServiceRequest | US Core ServiceRequest 8.0.1 |
| USCDI-SCD Medication | Medication | US Core Medication 8.0.1 |
| USCDI-SCD Procedure | Procedure | US Core Procedure 8.0.1 |
| USCDI-SCD Laboratory Result | Observation | US Core Laboratory Result Observation 8.0.1 |
| USCDI-SCD Vital Signs | Observation | US Core Vital Signs 8.0.1 |
| USCDI-SCD BiologicallyDerivedProduct | BiologicallyDerivedProduct | FHIR 4.0.1 Base (no US Core parent) |



## Extensions

| Extension | Context | Purpose |
||||
| `scd-genotype` | Condition | SCD genotype/subtype (HbSS, HbSC, etc.) |
| `scd-transfusion-antigen-match` | BiologicallyDerivedProduct, Procedure | Red cell antigen matching criteria |
| `scd-hydroxyurea-adherence` | MedicationStatement, Observation | Hydroxyurea adherence level and method |
| `scd-voc-frequency` | Condition | VOC episode frequency over a defined period |
| `scd-blood-product-age` | BiologicallyDerivedProduct | Blood product age in days at transfusion |
| `scd-iron-chelation-indication` | MedicationRequest | Iron chelation trigger and threshold |
| `scd-newborn-screen-reference` | Condition, Patient | Link to original newborn screening result |



## Prerequisites

- **[Node.js](https://nodejs.org/) ≥ 18** (required for SUSHI)
- **[SUSHI](https://fshschool.org/)** (FSH compiler): `npm install -g fsh-sushi`
- **Java 17+** (required for IG Publisher)
- **[HL7 IG Publisher](https://github.com/HL7/fhir-ig-publisher/releases)**: place `publisher.jar` in `input-cache/`



## Building the IG

```bash
# 1. Install SUSHI (one-time)
npm install -g fsh-sushi

# 2. Download IG Publisher (one-time)
#    Place publisher.jar in input-cache/

# 3. Validate FSH and compile to FHIR JSON (SUSHI only)
sushi .

# 4. Full build (SUSHI + IG Publisher)
./scripts/build.sh

# 5. View output
open output/index.html
```



## Key TODOs Before Ballot

- [ ] Complete all narrative page content (marked `TODO` in .md files)
- [ ] Submit value sets to VSAC and update canonical URIs
- [ ] Confirm all RxNorm concept IDs for SCD medications
- [ ] Confirm SNOMED CT concept codes (US edition)
- [ ] Add ISBT 128 code system registration and product codes
- [ ] Complete CapabilityStatement search parameter definitions
- [ ] Define SMART on FHIR scope requirements
- [ ] Add CarePlan and ServiceRequest examples
- [ ] Add pediatric patient example
- [ ] Review extensions against hl7.fhir.uv.extensions.r4 for reuse opportunities
- [ ] Conduct clinical SME review of profiles and value sets
- [ ] Submit for HL7 ballot (STU1)



## Contributing

<!-- TODO: Add contributing guidelines, GitHub issue template link,
     HL7 Jira project link, and work group meeting schedule. -->

Issues and pull requests welcome. Please follow [HL7 FHIR IG development conventions](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).



## License

Copyright 2025 HL7 International. Licensed under [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/).

Terminology content (SNOMED CT, LOINC, RxNorm, ICD-10-CM) is subject to
the license terms of the respective owners.
