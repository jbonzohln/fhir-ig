{%- comment -%}
================================================================================
BACKGROUND PAGE — background.md
================================================================================
CONTENT TO INSERT:
  - Clinical background on Sickle Cell Disease
      · Epidemiology (prevalence, affected populations, health disparities)
      · Pathophysiology overview (hemoglobin S, sickling, organ damage)
      · Key SCD subtypes (HbSS, HbSC, HbS-Beta-thalassemia, etc.)
      · Common complications (VOC, ACS, stroke, renal disease, etc.)
      · Standard treatments (hydroxyurea, transfusion, chelation, SCT)
      · Biologically derived products used in SCD care (pRBCs, exchange
        transfusion, apheresis products)
  - Policy and regulatory background
      · USCDI+ Sickle Cell Disease initiative (HRSA, ONC)
      · 21st Century Cures Act interoperability provisions
      · Sickle Cell Disease and Other Heritable Blood Disorders Research,
        Surveillance, Prevention, and Treatment Act (2018)
      · CDC SCD Data Collection Program (SCDIC)
  - Health IT landscape
      · Current state of SCD data in EHRs
      · Identified interoperability gaps
      · Related initiatives and programs
================================================================================
{%- endcomment -%}

### Background

<!-- TODO: Insert a 2–3 paragraph clinical introduction to Sickle Cell Disease,
     including its prevalence in the U.S. (~100,000 people), affected populations,
     and significance as a chronic, multi-system disease disproportionately
     affecting Black/African American and Hispanic communities. -->

---
Sickle cell disease (SCD) is the most common form of an inherited blood disorder affecting about 100,000 people in the United States.1[CS((1.1][KE1.2] SCD impacts African Americans at disproportionate rates, and all SCD patients face difficulties in accessing and receiving high-quality care.2 From birth to death, patients living with SCD interact with healthcare and public health systems. Limited interoperability across these systems, however, contributes to fragmented care and hampers efforts to estimate the disease burden and the quality of care patients receive.

Patients’ access to care is often fragmented.3 The rarity of SCD results in a lack of general provider training and consolidation of SCD treatment to a limited number of specialty clinics distributed across the country. Though pediatric patients may receive coordinated care, that care easily disrupts as patients age into adulthood with competing life priorities and changes in insurance coverage. Acute pain crises can result in SCD patients being stigmatized for drug-seeking behavior in emergency rooms, further limiting access to appropriate care and treatment. Multiple SCD-related data systems have grown independently from one another to describe patient experiences and outcomes across fragmented healthcare interactions and develop new treatment protocols. Without a minimum core dataset to reference, stakeholders developed systems to meet specific data exchange needs, creating problems with data interoperability, including siloed data sources, inconsistent use of data standards, variation of EHR integration, jurisdiction-specific surveillance, and limited collection of longitudinal and patient-reported outcomes. 

The current state of SCD data exchange does not satisfy the information needs of patients, providers, researchers, and public health agencies to improve health outcomes at a national scale effectively. Though broad interoperability standards to promote care coordination and multiple systems exist to collect SCD patient data, a lack of standardized data elements to identify SCD patients and describe their care limits insights into patients’ experiences and therapy effectiveness. Standardizing a list of minimum core data elements for SCD data exchange can benefit an array of patient interactions, like diagnosis, treatment management, surveillance, and research[CS.


### Clinical Overview of Sickle Cell Disease

#### Pathophysiology

<!-- TODO: Insert a brief, accessible description of the molecular basis of SCD
     (point mutation in HBB gene → hemoglobin S → red cell sickling under
     hypoxic conditions → vaso-occlusion, hemolysis, end-organ damage).
     This should be written for a clinical informatics and developer audience,
     not a medical textbook. -->

#### SCD Subtypes

<!-- TODO: Describe the major genotypes and their clinical implications:
       - HbSS (sickle cell anemia — most severe)
       - HbSC
       - HbS-Beta0-thalassemia
       - HbS-Beta+-thalassemia
       - Less common variants (HbSD, HbSE, HbSOArab)
     Note how genotype affects severity and treatment decisions, and how
     this IG's Condition and Laboratory profiles should capture genotype. -->

#### Common Complications

<!-- TODO: Table or list of key SCD complications this IG's profiles are
     designed to capture, such as:
       - Vaso-Occlusive Crisis (VOC) / Acute Pain Episode
       - Acute Chest Syndrome (ACS)
       - Stroke and silent cerebral infarction
       - Avascular necrosis (AVN)
       - Splenic sequestration
       - Priapism
       - Pulmonary hypertension
       - Chronic kidney disease
       - Retinopathy
       - Iron overload (from chronic transfusion)
-->

#### Treatments and Biologically Derived Products

<!-- TODO: Describe standard SCD treatments relevant to this IG:
       - Disease-modifying therapies: hydroxyurea, L-glutamine, crizanlizumab,
         voxelotor, gene therapy
       - Chronic transfusion therapy (simple and exchange transfusion)
       - Hematopoietic stem cell transplantation
       - Supportive care (pain management, penicillin prophylaxis, vaccines)

     Specifically explain the role of Biologically Derived Products in SCD:
       - Packed red blood cells (pRBCs) — simple transfusion
       - Apheresis red blood cells — automated exchange transfusion
       - The importance of extended red cell antigen matching (Rh, Kell, Duffy,
         Kidd, MNS) to prevent alloimmunization
       - How BiologicallyDerivedProduct (FHIR 4.0.1) is used in this IG
         to represent these products and transfusion events
-->

---

### Policy and Regulatory Context

<!-- TODO: Describe the policy landscape driving this IG's development:
       1. USCDI+ Sickle Cell Disease Program (HRSA, ONC) — describe the
          data elements identified in the USCDI+ SCD initiative
       2. 21st Century Cures Act Final Rule and ONC HTI-1 Rule —
          interoperability requirements relevant to SCD
       3. Sickle Cell Disease and Other Heritable Blood Disorders Act (2018)
       4. Healthy People 2030 objectives related to SCD
       5. CDC Sickle Cell Data Collection (SCDC) program
       6. HRSA Sickle Cell Disease Treatment Demonstration Program
-->

---

### Health Information Technology Landscape

<!-- TODO: Describe the current state of SCD data in health IT:
       - Inconsistent coding of SCD diagnoses (ICD-10, SNOMED CT)
       - Fragmented records across hematology, ED, PCP, specialty care
       - Lack of structured data for SCD-specific observations
         (e.g., pain scores, transfusion history, hydroxyurea adherence)
       - Gaps in existing standards (US Core does not fully address SCD)
       - Prior interoperability efforts and their limitations
-->

---

### Related Initiatives and Standards

<!-- TODO: Cross-reference related efforts:
       - HL7 Gravity Project (SDOH) — social determinants relevant to SCD
       - mCODE — if stem cell transplant workflows overlap
       - National Sickle Cell Disease Registry
       - ASH (American Society of Hematology) SCD guidelines
       - NHLBI Evidence-Based Management of SCD guidelines
-->
