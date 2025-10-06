---
title: Crates (RO-Crates)
---

## EMO-BON Crates
EMO-BON Crates are RO-crates that contain EMO-BON associated data, like logsheets from observatories, MetaGOflow runs, sequencing metadata, etc.  


> **What is an RO-Crate?**  
> An RO-Crate is a structured collection of data files, metadata, and contextual information designed to make research data easy to share, reuse, and understand - both by humans and machines.  



> **What is an `ro-crate-metadata.json` file?**  
> The `ro-crate-metadata.json` file is the central metadata file in an RO-Crate. It:
> - Describes the contents of the crate
> - Defines relationships between files and their associated metadata
> - Provides traceability, context, and purpose
> - Adheres to the RO-Crate specification
> - Is structured as JSON-LD, enabling integration with knowledge graphs


### Types of EMO-BON Crates
In EMO-BON context, there are various types of emo-bon ro-crates identifiable. Usually, an EMO-BON Crate corresponds to a single (GitHub) repository, but in some cases, a (GitHub) repository can contain multiple EMO-BON Crates.  

- ### Governance Crate
  - **Purpose**: Central coordination and configuration for the EMO-BON data system.
  - **Contents**:
    - List of observatories
    - Logsheet registry (logsheets.csv)
    - Overall project configuration
    - Cross-cutting metadata
  - **URI**: https://data.emobon.embrc.eu/governance-data 
  (Maintained at: https://github.com/emo-bon/governance-data)

  > 

- ### Observatory Crate
  - **Purpose**: Store and publish data collected by individual observatories.

  - **Contents**:
    - Logsheet data (CSV files from Google Sheets)
    - Sample and sampling event metadata
    - Environmental measurements
    - Links to related sequences
    - RDF triples describing the data

  - **URI pattern**: `{{base}}/observatory-{observatory_id}-crate`  
  Example: https://data.emobon.embrc.eu/observatory-bpns-crate/  
  (Maintained at: https://github.com/emo-bon/observatory-bpns-crate)


- ### Analysis Results Crate
  - **Purpose**: Store and publish results from bioinformatics analysis of sequences.
  - **Contents**:
    - MetaGOflow analysis outputs
    - Processed sequences (OTUs/ASVs)
    - Taxonomic summaries
    - Functional annotations
    - Large files managed via DVC and S3
  - **URI pattern**: `{{base}}/analysis-results-{cluster}-crate/{materialSampleId}`  
  Examples: 
    - overview of batch: 
    https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/  
    (Maintained at https://github.com/emo-bon/analysis-results-cluster-01-crate)
    - analysis results of a sample:
    https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/EMOBON_NRMCB_Wa_24-ro-crate/  
  (Maintained at: https://github.com/emo-bon/analysis-results-cluster-01-crate/EMOBON_NRMCB_Wa_24-ro-crate/)  


- ### *Sequencing Crate - TBD*
  - **Purpose**: Track sequencing operations and link samples to their sequences.
  - **Contents**:
    - Sequencing metadata
    - Batch information
    - Links to sequences in ENA
    - Sequence run details
  - **URI pattern**: `sequencing-crate`
  Example: ...
  (Maintained at: ...)
