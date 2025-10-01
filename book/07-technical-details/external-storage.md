---
title: External Storage (ENA)
---

This section describes how EMO-BON sequences are stored and accessed at ENA (European Nucleotide Archive).

## What is ENA?

The European Nucleotide Archive (ENA) is one of the world's primary repositories for nucleotide sequence data.

**Website**: https://www.ebi.ac.uk/ena/

**Operated By**: European Bioinformatics Institute (EMBL-EBI)

## EMO-BON and ENA

All EMO-BON sequences are archived at ENA for:
- **Long-term preservation**: Guaranteed storage
- **Public access**: Open data for research community
- **Standardization**: ENA metadata standards
- **Citability**: Stable accession numbers
- **Compliance**: Meeting data management requirements

## EMO-BON Project Structure at ENA

### Umbrella Project

All EMO-BON data is grouped under a single umbrella project:

**Accession**: PRJEB51688

**URL**: https://www.ebi.ac.uk/ena/browser/view/PRJEB51688

### Observatory Projects

Each observatory has its own ENA project:

**Pattern**: Each observatory receives a unique project accession

**Examples**:
- Observatory BPNS: PRJEB[NUMBER]
- Observatory HCMR-1: PRJEB[NUMBER]

**Managed In**: [governance-data/observatories.csv](https://github.com/emo-bon/governance-data/blob/main/observatories.csv)

## Data Submission Process

### Sequence Generation

1. **Sample Collection**: Observatory collects samples
2. **Sample to Genoscope**: Samples sent to sequencing facility
3. **Sequencing**: Genoscope performs sequencing
4. **Raw Data**: Sequences stored on Genoscope cloud

### Submission to ENA

:::{note}
Details of the submission process and agreements with Genoscope are under development.
:::

**General Process**:
1. Prepare sequence files
2. Prepare metadata (sample information)
3. Submit to ENA via their API or web interface
4. Receive accession numbers
5. Link accessions to EMO-BON crates

### Metadata Requirements

ENA requires extensive metadata:
- **Sample metadata**: Collection location, date, depth, etc.
- **Experiment metadata**: Library preparation, sequencing method
- **Run metadata**: Instrument, read length, quality scores
- **Study metadata**: Project description, publications

EMO-BON logsheets provide much of this information.

## Accessing ENA Data

### By Accession Number

Each sequence or sample has a unique accession:

**Formats**:
- Study: PRJEB[NUMBER]
- Sample: SAMEA[NUMBER]
- Run: ERR[NUMBER]
- Analysis: ERZ[NUMBER]

**URL Pattern**: `https://www.ebi.ac.uk/ena/browser/view/{ACCESSION}`

### Via ENA Portal

**Search**: https://www.ebi.ac.uk/ena/browser/advanced-search

**Filters**:
- By project (PRJEB51688)
- By taxonomy
- By location
- By date range

### Programmatic Access

**ENA API**: REST API for querying and downloading

**Example**:
```bash
curl "https://www.ebi.ac.uk/ena/portal/api/search?query=study_accession%3DPRJEB51688"
```

**ENA Browser API**: Direct file downloads

## Integration with EMO-BON

### Linking Sequences to Samples

EMO-BON maintains links between:
- **Observatory samples** (in observatory crates)
- **ENA accessions** (in sequencing crate)
- **Analysis results** (in analysis results crates)

### Sequencing Crate

**Repository**: `sequencing-crate` (planned)

**Purpose**: Central registry linking samples to their sequences

**Contents**:
- Sample ID to ENA accession mappings
- Batch information
- Sequencing run metadata
- Links to raw data on ENA

### Metadata Flow

```
Logsheets (Google Sheets)
    ↓
Observatory Crates (GitHub)
    ↓
Sample Metadata
    ↓
ENA Submission
    ↓
ENA Accessions
    ↓
Sequencing Crate (GitHub)
```

## ENA Metadata Standards

### MIxS (Minimum Information about any Sequence)

ENA requires MIxS-compliant metadata.

**EMO-BON Uses**:
- MIMARKS (environmental markers)
- MIxS environmental packages

**Fields Include**:
- Geographic location
- Collection date
- Environmental context
- Sample processing

### Darwin Core

EMO-BON also aligns with Darwin Core for biodiversity data:
- Occurrence records
- Taxonomic information
- Event details

## Data Updates and Corrections

### Metadata Updates

If metadata needs correction:
1. Update in ENA via their interface
2. Update in EMO-BON crates
3. Maintain synchronization

### Data Withdrawal

In rare cases, data may need withdrawal:
- Contact ENA support
- Follow their withdrawal process
- Update EMO-BON records

## Benefits of ENA Storage

### For Researchers

- **Free access**: No cost to download
- **Stable URLs**: Accessions never change
- **Searchable**: Integrated with other databases
- **Standardized**: Common metadata format

### For EMO-BON

- **Reliable**: ENA ensures long-term preservation
- **Trusted**: Recognized by research community
- **Compliant**: Meets funder requirements
- **Visible**: Increases data discoverability

## Future Plans

### Automation

- Automated submission pipeline
- Regular synchronization
- Validation before submission

### Enhanced Integration

- Richer links between EMO-BON and ENA
- Bidirectional metadata flow
- Integrated search across both systems
