---
title: Which Data Sources
---

This section describes the various data sources used in the EMO-BON project.

## Primary Data Sources

### Google Sheets (Logsheets)

Observatories maintain their sampling data in Google Sheets, known as "logsheets". These contain:

- Sample identifiers
- Sampling event information
- Environmental measurements
- Sample processing details
- Metadata about the observatory and location

The master list of logsheets is maintained at: https://github.com/emo-bon/governance-data/blob/main/logsheets.csv

### Sequence Data

Sequence data comes from:

- **Genoscope**: Primary sequencing provider
- Raw sequences are stored on Genoscope's cloud drive
- Sequences are archived at **ENA** (European Nucleotide Archive)

### Analysis Results

Analysis results are produced through:

- **MetaGOflow**: Bioinformatics workflow for sequence analysis
- Post-processing of MetaGOflow outputs
- Semantic uplifting of results using dockerized processes

## Secondary Data Sources

### Reference Data

Reference data sources include:

- Taxonomic reference libraries
- Environmental context data
- Geographic information

### External Repositories

EMO-BON data may reference or integrate with:
- ENA (European Nucleotide Archive)
- OBIS (Ocean Biodiversity Information System)
- Other marine biodiversity databases
