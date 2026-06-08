{%- comment -%}
TERMINOLOGY PAGE — terminology.md
CONTENT TO INSERT: Value sets, code systems, SNOMED/LOINC/ICD-10 mapping tables
{%- endcomment -%}

### Terminology

This page describes the value sets and code systems used in the USCDI-SCD
Implementation Guide.

<!-- TODO: Insert 1–2 paragraphs on terminology governance:
       - Preferred code systems (SNOMED CT, LOINC, RxNorm, ICD-10-CM)
       - How VSAC-hosted value sets are referenced
       - UMLS licensing notice
       - Terminology maintenance process
-->

---

### Value Sets

<!-- TODO: For each value set, provide:
       - OID / URL
       - Purpose
       - Code system(s) included
       - Binding context (which profile element binds to it)
       - Whether it is extensible or required

     Key value sets to define or reference:

     DIAGNOSIS / CONDITION VALUE SETS
     ---------------------------------
     1. SCD Diagnosis Codes (ICD-10-CM D57.x; SNOMED CT SCD codes)
     2. SCD Acute Complications (VOC, ACS, splenic sequestration, stroke)
     3. SCD Chronic Complications (avascular necrosis, CKD, retinopathy, PHT)
     4. SCD Genotype Codes (HbSS, HbSC, HbS-Beta0, HbS-Beta+, etc.)

     MEDICATION VALUE SETS
     ----------------------
     5. SCD Disease-Modifying Medications (hydroxyurea, L-glutamine,
        crizanlizumab, voxelotor; RxNorm codes)
     6. SCD Gene Therapy Products (exagamglogene autotemcel, lovotibeglogene)
     7. Iron Chelation Agents (deferasirox, deferoxamine, deferiprone)

     LABORATORY VALUE SETS
     ----------------------
     8. SCD Laboratory Panel (LOINC codes for CBC, Hgb fractionation,
        LDH, bilirubin, ferritin, creatinine, reticulocyte count)
     9. Hemoglobin Fractionation Result Codes

     PROCEDURE VALUE SETS
     --------------------
    10. SCD Transfusion Procedures (simple transfusion, exchange transfusion)
    11. SCD Surgical/Interventional Procedures

     BIOLOGICALLY DERIVED PRODUCT VALUE SETS
     ----------------------------------------
    12. Blood Product Types (packed RBCs, apheresis RBCs, HPC graft)
    13. Red Cell Antigen Systems (ABO, Rh, Kell, Duffy, Kidd, MNS)

     VITAL SIGNS VALUE SETS
     ----------------------
    14. Pain Assessment Scale Codes (Numeric Rating Scale, Wong-Baker FACES)

     ENCOUNTER VALUE SETS
     --------------------
    15. SCD Encounter Types (hematology outpatient, day hospital/infusion,
        ED encounter for VOC, HSCT admission)
-->

---

### Code Systems

The following code systems are used in this IG:

| Code System | URI | Version | Purpose |
|---|---|---|---|
| SNOMED CT | http://snomed.info/sct | US Edition | Diagnoses, procedures, findings |
| LOINC | http://loinc.org | Current | Laboratory tests, vital signs, assessments |
| RxNorm | http://www.nlm.nih.gov/research/umls/rxnorm | Current | Medications |
| ICD-10-CM | http://hl7.org/fhir/sid/icd-10-cm | Current | Diagnoses (billing) |
| CPT | http://www.ama-assn.org/go/cpt | Current | Procedures |
| ISBT 128 | <!-- TODO: add URI --> | Current | Blood product coding |
| HL7 ActCode | http://terminology.hl7.org/CodeSystem/v3-ActCode | Current | Encounter class |

<!-- TODO: Define any custom CodeSystems needed for SCD concepts not
     adequately covered by the code systems above (e.g., extended antigen
     match scores, SCD-specific functional status scales). -->
