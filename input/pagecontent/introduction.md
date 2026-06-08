{%- comment -%}
================================================================================
INTRODUCTION PAGE — introduction.md
================================================================================
CONTENT TO INSERT:
  - Full narrative introduction to the IG (3–6 paragraphs)
  - Problem statement: gaps in SCD data exchange today
  - Purpose and goals of this IG
  - How this IG relates to US Core, USCDI, and other HL7 IGs
    (e.g., US Core Behavioral Health Profiles, mCODE, IPA)
  - Summary of the IG development process (co-authoring organizations,
    stakeholder engagement, ballot history)
  - Glossary of key terms (SCD, VOC, USCDI, FSH, etc.) or link to one
================================================================================
{%- endcomment -%}

### Introduction

<!-- TODO: Insert full introduction narrative (3–6 paragraphs).

     Suggested sub-topics:
       1. The burden of Sickle Cell Disease in the United States
          (prevalence, health disparities, complication types)
       2. The need for standardized clinical data exchange for SCD patients
          who receive care across multiple settings and providers
       3. The role of FHIR R4 and US Core as the foundational framework
       4. How this IG closes identified gaps not addressed by base US Core
       5. Alignment with federal health IT mandates and USCDI data elements
-->

---
Responding to interoperability challenges expressed by federal and non-federal partners, the Assistant Secretary of Technology Policy (ASTP) is leveraging the United States Core Data for Interoperability Plus (USCDI+) service to develop a minimum core dataset for SCD data exchange. USCDI+ extends core data elements in USCDI to meet specific use cases that will benefit from harmonized data elements and help align many related but disparate efforts to collect and exchange SCD-relevant data. By publishing and maintaining a minimum core dataset informed by stakeholder needs, ASTP envisions greater data exchange to improve care coordination, research comparability, and national surveillance, maximizing health outcomes for SCD warriors.
### Purpose and Goals

<!-- TODO: Enumerate 4–8 specific goals of this IG, for example:
       - Define FHIR profiles to represent SCD-specific clinical observations
       - Enable seamless patient data exchange among hematology practices,
         emergency departments, primary care, and care management programs
       - Support quality measurement and population health reporting for SCD
       - Align with USCDI+ SCD data elements identified by ONC/HRSA
-->

---

### Relationship to Other Standards and Guides

<!-- TODO: Describe the relationship and dependencies of this IG, including:
       - US Core 8.0.1 (parent profiles; this IG constrains or extends them)
       - USCDI v4+ (data element alignment)
       - US Core Behavioral Health Profiles IG (modeling precedent)
       - mCODE (if relevant for oncologic complications)
       - Da Vinci IGs (if payer/prior auth relevant)
       - C-CDA on FHIR (document exchange)
       - National Sickle Cell Disease Registry standards
-->

| Standard / Guide | Relationship |
|---|---|
| [US Core 8.0.1](http://hl7.org/fhir/us/core/STU8.0.1/) | Parent profiles; all USCDI-SCD profiles derive from or align with US Core |
| [USCDI v4+](https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi) | Data element requirement source |
| [FHIR R4 (4.0.1)](http://hl7.org/fhir/R4/) | Base specification |
| HL7 Behavioral Health IG | Structural modeling reference |

---

### Glossary

<!-- TODO: Insert or link to a glossary of terms. Suggested entries:
       - **SCD** – Sickle Cell Disease
       - **HbSS, HbSC, HbS-Beta** – SCD genotype subtypes
       - **VOC** – Vaso-Occlusive Crisis
       - **ACS** – Acute Chest Syndrome
       - **USCDI** – United States Core Data for Interoperability
       - **FSH** – FHIR Shorthand
       - **IG** – Implementation Guide
       - **Must Support** – As defined in US Core and this IG
       - **Biologically Derived Product** – FHIR resource covering
         blood products (e.g., packed red blood cells) used in SCD care
-->

---

### How to Read This Guide

<!-- TODO: Insert a brief "How to Read" section explaining the structure of
     the IG and the recommended reading order for different audiences:
       - Clinicians / Clinical Informaticists → Background, Scope, Profiles
       - Developers / Implementers → Conformance, Profiles, Downloads
       - Policy / Program staff → Background, Scope, Audience
-->
