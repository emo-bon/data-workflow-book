---
title: Crates (RO-Crates)
---

This section describes the various RO-Crate products maintained in the EMO-BON project.

## What are RO-Crates?

An RO-Crate is a collection of data files, metadata, and contextual information that organizes research data in a structured format, enabling easy sharing, reuse, and understanding in both machine-readable and human-readable forms.

EMO-BON RO-Crates contain data associated with: logsheets from observatories, MetaGOflow runs, and sequencing metadata. Usually, our RO-Crates are single repositories, but for some, one repository contains multiple RO-Crates. An RO-Crate is manifest via a `ro-crate-metadata.json` file.

## Types of EMO-BON Crates

### Observatory Crates

Repository pattern: `observatory-{observatory_id}-crate`

Example: https://github.com/emo-bon/observatory-bpns-crate

**Contents**:
- Logsheet data (CSV files from Google Sheets)
- Sample and sampling event metadata
- Environmental measurements
- Links to related sequences
- RDF triples describing the data

**Purpose**: Store and publish data collected by individual observatories.

### Governance Crate

Repository: `governance-data`

**Contents**:
- List of observatories
- Logsheet registry (logsheets.csv)
- Overall project configuration
- Cross-cutting metadata

**Purpose**: Central coordination and configuration for the EMO-BON data system.

### Analysis Results Crates

Repository pattern: `analysis-results-{cluster}-crate`

Example: https://github.com/emo-bon/analysis-results-cluster-01-crate

**Contents**:
- MetaGOflow analysis outputs
- Processed sequences (OTUs/ASVs)
- Taxonomic summaries
- Functional annotations
- Large files managed via DVC and S3

**Purpose**: Store and publish results from bioinformatics analysis of sequences.

### Sequencing Crate

Repository: `sequencing-crate`

**Contents**:
- Sequencing metadata
- Batch information
- Links to sequences in ENA
- Sequence run details

**Purpose**: Track sequencing operations and link samples to their sequences.

## RO-Crate Metadata

Each crate contains a `ro-crate-metadata.json` file that:
- Describes the contents of the crate
- Maps relationships between files and their metadata
- Ensures traceability, context, and purpose
- Follows the RO-Crate specification
- Can be consumed as JSON-LD for knowledge graph integration

## RO-Crate Profiles

EMO-BON defines specific profiles that describe the expected structure and content of different crate types:

- **Observatory Profile**: https://github.com/emo-bon/observatory-profile
- **Analysis Results Profile**: (in development)
- **Sequencing Profile**: (planned)

Profiles are themselves RO-Crates that formally describe the layout/structure of crates that declare conformance to them.

## Accessing Crates

Crates are accessible through:
- **GitHub Pages**: Human-readable HTML views at https://data.emobon.embrc.eu/
- **GitHub Repositories**: Raw data and metadata files
- **SPARQL Endpoint**: Querying the integrated knowledge graph
