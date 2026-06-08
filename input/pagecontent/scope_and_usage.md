{%- comment -%}
================================================================================
SCOPE AND USAGE PAGE — scope_and_usage.md
================================================================================
CONTENT TO INSERT:
  - In-scope use cases (with brief narrative for each)
  - Out-of-scope items (explicitly stated)
  - Clinical use cases / user stories
  - Exchange scenarios (e.g., referral, care transitions, ED encounters)
  - Data flow diagrams or sequence diagrams
  - Scope boundaries with other IGs (e.g., what mCODE covers vs this IG)
================================================================================
{%- endcomment -%}

### Scope and Usage

<!-- TODO: Insert a 2–3 paragraph narrative framing the scope of this IG.
     State clearly what problem this IG solves and at what level of
     granularity (data exchange, not workflow automation). -->

---

### In Scope

The following use cases and data exchange scenarios are **in scope** for
this Implementation Guide:
Transfer of Care: A SCD patient transitions their care from one provider to another. The new provider creates or updates the SCD diagnosis of the patient.
Emergency Department: An SCD patient presents at an Emergency Department (ED) for immediate, critical care. The new provider retrieves the clinical information needed in order to provide appropriate care to the patient.
<!-- TODO: Expand each item below into a 2–4 sentence narrative describing
     the use case, the actors involved, and the data exchanged.

     Suggested in-scope items:
       1. SCD diagnosis and genotype documentation and exchange
       2. Acute care encounters (ED, urgent care) for VOC and ACS
       3. Scheduled outpatient hematology visits
       4. Chronic transfusion therapy management
          (including BiologicallyDerivedProduct records)
       5. Medication management (hydroxyurea, L-glutamine, crizanlizumab,
          voxelotor, gene therapy follow-up)
       6. Laboratory results exchange (CBC, hemoglobin fractionation,
          LDH, reticulocyte count, ferritin, serum creatinine, TRV)
       7. Vital signs relevant to SCD (SpO2, temperature, blood pressure,
          pain scores)
       8. Allergy and adverse reaction documentation
          (transfusion reactions, drug allergies)
       9. Referral and care coordination (ServiceRequest)
      10. Care plan exchange for SCD disease management programs
      11. Procedures (exchange transfusion, phlebotomy, HSCT)
      12. Care team / provider attribution (Practitioner, PractitionerRole,
          Organization, Location)
-->

| # | Use Case | Key Profiles |
|---|---|---|
| 1 | SCD Diagnosis and Genotype Documentation | Condition (Problems), Patient |
| 2 | Acute Care Encounter (VOC, ACS) | Encounter, Condition (Encounter Dx) |
| 3 | Outpatient Hematology Visit | Encounter, Condition, Observation |
| 4 | Transfusion Therapy Management | BiologicallyDerivedProduct, Procedure |
| 5 | Medication Management | Medication, MedicationRequest |
| 6 | Laboratory Result Exchange | Laboratory Result Observation |
| 7 | Vital Signs Monitoring | Vital Signs Observation |
| 8 | Allergy / Adverse Reaction | AllergyIntolerance |
| 9 | Referral and Care Coordination | ServiceRequest |
| 10 | Care Plan Exchange | CarePlan |
| 11 | Procedure Documentation | Procedure |
| 12 | Care Team Attribution | Practitioner, PractitionerRole, Organization |

---
 
### Out of Scope

The following items are explicitly **out of scope** for this first version of the
USCDI-SCD IG: All registry and research use cases.  

<!-- TODO: Expand each item with a brief rationale for exclusion and, where
     applicable, a pointer to the IG or standard that covers it.

     Suggested out-of-scope items:
       1. Workflow orchestration, task management, or clinical decision support
          (addressed by clinical systems, not FHIR data exchange profiles)
       2. Pediatric-specific dose adjustments or growth charts
          (addressed by base US Core Vital Signs)
       3. Genetic/genomic data beyond SCD genotype classification
          (addressed by HL7 Clinical Genomics IG)
       4. Oncology-specific workflows for HSCT donors
          (addressed by mCODE)
       5. Prior authorization for SCD treatments
          (addressed by Da Vinci IG suite)
       6. Patient-reported outcomes capture (PRO forms)
          (future scope; may reference SDC)
       7. International (non-US) implementations
       8. FHIR R5 or STU-specific R4B constructs
-->

---

### Clinical Use Cases

<!-- TODO: Write 3–5 detailed clinical use case narratives in the format:

     **Use Case N: [Title]**
     *Actors:* Patient, Hematologist, ED Physician, Care Manager, etc.
     *Trigger:* What initiates the exchange?
     *Preconditions:* What data must exist?
     *Flow:* Step-by-step data exchange
     *Profiles Used:* List of FHIR profiles
     *Outcome:* What is achieved?

     Suggested use cases:
       - A patient with HbSS presents to the ED in VOC; the ED queries the
         patient's hematologist's system for active conditions, current
         medications, and transfusion history.
       - A patient starting chronic exchange transfusion therapy; care plan
         and transfusion records shared across sites.
       - A hematology practice generates a FHIR document for a patient
         transitioning from pediatric to adult SCD care.
-->

---

### Relationship to Other Implementation Guides

<!-- TODO: Table or narrative describing boundary conditions with:
       - US Core 8.0.1 (this IG extends; does not replace)
-->
