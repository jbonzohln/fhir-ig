{%- comment -%}
SECURITY AND PRIVACY PAGE — security.md
{%- endcomment -%}

### Security and Privacy

<!-- TODO: Insert 1–2 paragraph overview of the sensitivity of SCD data,
     noting that SCD disproportionately affects marginalized communities
     and that data breaches could lead to discrimination in employment,
     insurance, or social contexts. Reference HIPAA and 42 CFR Part 2
     if applicable. -->

---

### General Security Guidance

<!-- TODO: Reference and summarize the applicable HL7 FHIR security guidance:
       - [FHIR Security](http://hl7.org/fhir/R4/security.html)
       - [US Core Security Guidance](http://hl7.org/fhir/us/core/security.html)
       - SMART on FHIR for authentication and authorization
       - TLS 1.2+ for transport security
       - Audit logging (AuditEvent resource)
-->

---

### Sensitive Data Considerations for SCD

<!-- TODO: Describe SCD-specific privacy considerations:
       1. Genetic information (genotype) — covered by GINA (Genetic Information
          Nondiscrimination Act); may require additional access controls
       2. Substance use / pain medication history — sensitivity around opioid
          prescribing records for SCD patients
       3. Mental health comorbidities documented alongside SCD
       4. Race and ethnicity data used for health equity reporting —
          de-identification requirements
       5. Pediatric patient data — COPPA considerations for minors
       6. Social determinants of health (housing, food insecurity) —
          stigmatization risk
-->

---

### Recommendations for Implementers

<!-- TODO: List concrete security and privacy recommendations:
       - Implement role-based access control (RBAC) for SCD records
       - Apply data segmentation for sensitive elements (genetic, substance use)
       - Obtain patient consent before sharing genotype data
       - Log all access to SCD patient records via FHIR AuditEvent
       - Implement break-glass procedures for emergency access
       - Follow NIST SP 800-53 security controls for health data systems
-->
