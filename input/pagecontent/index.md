{%- comment -%}
================================================================================
HOME PAGE — index.md
================================================================================
This is the landing page of the USCDI-SCD Implementation Guide.
It should provide a brief orienting summary and quick navigation links.

CONTENT TO INSERT:
  - A concise (2–4 paragraph) executive summary of the IG's purpose
  - A high-level statement of scope (who uses it, what it covers)
  - A prominent "Where to Start" or "Quick Navigation" section
  - Acknowledgements / credits / sponsoring organizations
  - Official HL7 ballot/publication status notice (if applicable)
  - Any disclaimers (e.g., terminology licensing notices for SNOMED, LOINC)
================================================================================
{%- endcomment -%}

### Overview

<!-- TODO: Insert 2–4 paragraph executive summary describing the purpose,
           goals, and context of the USCDI + Sickle Cell Disease IG here. -->

The **USCDI + Sickle Cell Disease Implementation Guide (USCDI-SCD)** specifies
FHIR R4 (4.0.1) profiles and supporting artifacts to enable standardized
exchange of clinical and administrative data relevant to patients living with
Sickle Cell Disease (SCD). This guide extends and aligns with
[US Core 8.0.1](http://hl7.org/fhir/us/core/STU8.0.1/).

<!-- TODO: Insert mission statement / clinical rationale paragraph. -->

<!-- TODO: Insert brief paragraph on the relationship to USCDI and federal
           interoperability mandates (e.g., ONC 21st Century Cures Rule). -->

---

### Quick Navigation

| Section | Description |
|---|---|
| [Introduction](introduction.html) | Purpose, goals, and relationship to other standards |
| [Background](background.html) | Clinical and policy context for Sickle Cell Disease data exchange |
| [Scope and Usage](scope_and_usage.html) | What is in and out of scope; use cases |
| [Overview](overview.html) | Architectural overview of profiles and interactions |
| [Audience](audience.html) | Intended readers and implementers |
| [Conformance Requirements](conformance.html) | Must Support, obligations, and capability statements |
| [Profiles](profiles.html) | All FHIR profiles defined or constrained in this IG |
| [Extensions](extensions.html) | Custom extensions introduced by this IG |
| [Terminology](terminology.html) | Value sets and code systems |
| [Security and Privacy](security.html) | Guidance on protecting sensitive SCD data |
| [Downloads](downloads.html) | Downloadable artifacts |

---

### Acknowledgements

<!-- TODO: Insert acknowledgements for:
           - Sponsoring HL7 work group(s)
           - Sickle Cell Disease clinical subject matter experts
           - Patient advocacy organizations (e.g., Sickle Cell Disease Association of America)
           - Federal partners (e.g., CDC, HRSA, NIH NHLBI)
           - Contributing organizations and individuals
-->

---

### Dependencies

This implementation guide relies on the following published FHIR packages:

{% include dependency-table.xhtml %}

---

### Intellectual Property Statements

{% include ip-statements.xhtml %}
