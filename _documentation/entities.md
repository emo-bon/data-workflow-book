---
title: Entities
author: VLIZ OpenScience team
date: 2025-02-06
category: Jekyll
layout: post
---

# RO-Profiles

#### Concept
RO-profiles encapsulate Research Object (RO) profiles that describe conformity to a fixed set of expectations for data structures. They ensure consistency in the way research data is formatted and provide practical assets such as templates, SHACL files, documentation, and other reference materials. (More information available at: [Ro Crate profiles](https://www.researchobject.org/ro-crate/specification/1.2-DRAFT/profiles.html))

#### URI Format
`https://data.embon.embrc.eu/{name}-profile/{version}`
- `{name}`: One of `observatory`, `sequencing`, `analysis-results`
- `{version}`: `latest` or a specific version vM.m.p. (e.g., `v1.0.0`)

#### Creation & Management
- Managed at: `https://github.com/emo-bon/{name}-profile`

#### References
- Used as metadata descriptors for crates that comply with specific profile expectations.

---
# Crates

### Concept
Crates are structured data packages that encapsulate various types of research data. They serve as containers for datasets, metadata, and other related information, ensuring consistency, traceability, and compliance with RO-profiles.

### Types
## Governance Crate
- **Concept**:  
Contains information relating to the governance of EMO BON GitHub activities and actions.
- **Creation & Management**:  
`https://github.com/emo-bon/governance-crate/`
- **URI Format**:  
`https://data.emobon.embrc.eu/governance-crate/`
- **References**:  
?

## Observatory Crate
- **Concept**:  
Holds information about an EMOBON Observatory, its associated sampling events, and the data generated from those events.
- **Creation & Management**:  
`https://github.com/emo-bon/observatory-{obsid}-crate/`
- **URI Format**:  
`https://data.emobon.embrc.eu/observatory-{obsid}-crate/`
  - `{obsid}`: Name of the EMOBON observatory 
- **References**:  
?


## Analysis-Results Crate
- **Concept**:  
Holds information and data resulting from MetaGOFlow data analysis processes.
- **Creation & Management**:  
`https://github.com/emo-bon/analysis-results-{cluster}-crate/{genoscope-code}/`
- **URI Format**:  
`https://data.emobon.embrc.eu/analysis-results-{cluster}-crate/{genoscope-code}/`
- **References**:

## Sequencing Crate
- **Concept**:  
Holds information and data resulting from sequencing runs.
- **Creation & Management**:  
`https://github.com/emo-bon/sequencing-crate/??/{material_sample_id}`
- **URI Format**:  
`https://data.emobon.embrc.eu/sequencing-crate/??/{material_sample_id}`
- **References**:


---

# Data Entities

## Dataset ?
- **Concept**:  
A curated collection of data, potentially with a persistent identifier and versioning.
- **Creation & Management**: Created when structured data is published for reuse.
- **URI Format**:
- **References**: 

## Observatory
- **Concept**:  
An EMO BON organisational unit linked to the collection of a specific sample type (e.g. water column, soft sediment) from a fixed, pre-determined location.
- **Creation & Management**:  
`https://github.com/emo-bon/observatory-{obsid}-crate/`
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obsid}-crate/{env_package}/observatory/{obsid}`
  - `{obsid}`: ...
  - `{env_package}`: ...
- **References**:  
?

## Sampling Event
- **Concept**:  
A sampling action performed at a particular observatory at a specific time, resulting in the collection of one or more samples.
- **Creation & Management**:  
`https://github.com/emo-bon/observatory-{obsid}-crate/tree/main/{env_package}/sampling` 
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obsid}-crate/{env_package}/sampling/{source_mat_id}`
- **References**:  
?

## Sample
- **Concept**:  
A material sample collected during a sampling event.
- **Creation & Management**:  
`https://github.com/emo-bon/observatory-{obsid}-crate/tree/main/{env_package}/sampling`
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obsid}-crate/{env_package}/measured/{source_mat_id}`
- **References**: 
?


## Measurements/Observations
- **Concept**: 
A measurement or observations made from a sample.
- **Creation & Management**:  
`https://github.com/emo-bon/observatory-{obsid}-crate/tree/main/{env_package}/measured` 
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obsid}-crate/{env_package}/measured/{source_mat_id}#{observedProperty}`
- **References**:
?

## Sequencing Run
- **Concept**: 
- **Creation & Management**:
- **URI Format**: `https://data.emobon.embrc.eu/sequencing-run/{run-id}/`
- **References**: Found in sequencing crates and analysis workflows.

## Batch 
- **Concept**:  
...
- **Creation & Management**:  
``
- **URI Format**:  
`https://data.emobon.embrc.eu/batch/{batch-id}/`
- **References**:  
?

## Sequence
- **Concept**:  
...
- **Creation & Management**:  
`` 
- **URI Format**:  
`https://data.emobon.embrc.eu/sequence/{sequence-id}/`
- **References**: 

## Analysis Result
- **Concept**:  
...
- **Creation & Management**:  
``
- **URI Format**:  
`https://data.emobon.embrc.eu/analysis-result/{result-id}/`
- **References**: 
?