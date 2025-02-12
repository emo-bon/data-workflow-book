---
title: URI Namespace
author: VLIZ OpenScience team
date: 2025-02-06
category: Jekyll
layout: post
---

Below is a comprehensive overview of the URI namespaces used within EMO-BON, including defined patterns for RO-profile, RO-Crate, and data entity URIs. While ensuring consistency and interoperability, these URI patterns are designed for dereferenceability and publication of EMO-BON Data as static content, (without reliance on a triple store).

### Overview

Base URL: `http(s)://data.emobon.embrc.eu`

| Category         | Entity                  | (preliminary) URI Format |
|-----------------|-------------------------|------------|
| **RO-Profiles** | Profile         | `{base-url}/{name}-profile/{version}` |
| **RO-Crates**   | Governance Crate        | `{base-url}/governance-crate/` |
|                 | Observatory Crate       | `{base-url}/observatory-{obsid}-crate` |
|                 | Analysis-Results Crate  | `{base-url}/analysis-results-{cluster}-crate/` |
|                 | Sequencing Crate        | `{base-url}/sequencing-crate` |
| **Data Entities** | Observatory            | `{base-url}/observatory-{obs_id}-crate/{env_package}/observatory/{obs_id}` |
|                 | Sampling Event          | `{base-url}/observatory-{obs_id}-crate/{env_package}/sampling/{sampling_event}` |
|                 | Sample                  | `{base-url}/observatory-{obs_id}-crate/{env_package}/measured/{source_mat_id}` |
|                 | Sample Replicate        | `{base-url}/observatory-{obs_id}-crate/{env_package}/sampling/{source_mat_id}` |
|                 | Observation             | `{base-url}/observatory-{obs_id}-crate/{env_package}/measured/{source_mat_id}#{observedProperty}` |
|                 | Batch                   | `{base-url}/shipment/batch/{batchID}` |
|                 | Sequence Run            | `{base-url}/shipment/batch/{batchID}#SequenceAnalysis` |
|                 | Taxon                   | N/A |
|                 | FunctionalAnnotation    | N/A |

---
# RO-Profiles

RO-profiles encapsulate Research Object (RO) profiles that describe conformity to a fixed set of expectations for data structures. They ensure consistency in the way research data is formatted and provide practical assets such as templates, SHACL files, documentation, and other reference materials. (More information available at: [Ro Crate profiles](https://www.researchobject.org/ro-crate/specification/1.2-DRAFT/profiles.html))

- **URI Format**:  
`https://data.embon.embrc.eu/{name}-profile/{version}`
  - `{name}`: [ observatory \| sequencing \| analysis-results ]
  - `{version}`: `latest` or a specific version vM.m.p. (e.g., `v1.0.0`)
- **References**:  
Used as metadata descriptors for crates that comply with specific profile expectations.
- **Creation & Management**:  
`https://github.com/emo-bon/{name}-profile`

---
# RO-Crates

Crates are structured data packages that encapsulate various types of research data. They serve as containers for datasets, metadata, and other related information, ensuring consistency, traceability, and compliance with RO-profiles. Within the EMO-BON ecosystem, we categorize crates into different types, each serving a specific purpose:

## Governance Crate
- **Concept**:  
Contains information relating to the governance of EMO BON GitHub activities and actions.
- **URI Format**:  
`https://data.emobon.embrc.eu/governance-crate/`
- **Included Graph Entities**:  
tbd
- **Creation & Management**:  
`https://github.com/emo-bon/governance-crate/`

## Observatory Crate
- **Concept**:  
Holds information about an EMOBON Observatory, its associated sampling events, and the data generated from those events.
- **URI Format**:  
`https://data.emobon.embrc.eu/observatory-{obsid}-crate`
  - `{obsid}` = ...
- **Generated Files**:
  - `http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/observatory/{obs_id}`
    - Data entities: Observatory
  - `http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/measured/{source_mat_id}`
    - Data entities: Observations
  - `http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/sampling/{source_mat_id}`
    - Data entities: Sampling event, Sample, Sample replicate
- **Included Data Entities**:  
  - Observatory
  - Sample
  - Sample Replicate
  - Observation
- **Creation & Management**:  
`https://github.com/emo-bon/observatory-{obsid}-crate/`

## Analysis-Results Crate
- **Concept**:  
Holds information and data resulting from MetaGOFlow data analysis processes.
- **URI format**:  
`https://data.emobon.embrc.eu/analysis-results-{cluster}-crate/`
  - `{cluster}` = ...
- **Included Graph Entities**:
  - Sample Replicate
  - Taxon
  - FunctionalAnnotation
- **Creation & Management**:  
`https://github.com/emo-bon/analysis-results-{cluster}-crate/`

## Sequencing Crate
- **Concept**:  
Holds information and data resulting from sequencing runs.
- **URI format**:  
`https://data.emobon.embrc.eu/sequencing-crate`
- **Included Graph Entities**:
  - Sample Replicate
  - Batch
  - Sequence Run
- **Creation & Management**:  
`https://github.com/emo-bon/sequencing-crate`
---

# Data Entities

The RDF-based triple files within each crate collectively form the EMO-BON data graph, with entities as its core components. Each entity has a unique URI and is defined by properties and connections to other entities. This ensures structured data, consistent referencing within the knowledge graph, and allows for efficient data retrieval and analysis within the EMO-BON ecosystem. Below is an overview of the primary entities, their roles, and their respective URI formats.

## Observatory
- **Concept**:  
An EMO BON organisational unit linked to the collection of a specific sample type (e.g. water column, soft sediment) from a fixed, pre-determined location.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/observatory/{obs_id}`
  - `{obsid}`: ...
  - `{env_package}`: ...

## Sampling Event
- **Concept**:  
A sampling action performed at a particular observatory at a specific time, resulting in the collection of one or more samples.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/sampling/{sampling_event}`
  - `{obsid}`: ...
  - `{env_package}`: ...
  - `{sampling_event}`: ...

## Sample
- **Concept**:  
A material sample collected during a sampling event.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/measured/{source_mat_id}`
  - `{obsid}`: ...
  - `{env_package}`: ...
  - `{source_mat_id}`: ...

## Sample Replicate
- **Concept**:  
A material sample collected during a sampling event.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/sampling/{source_mat_id}`
  - `{obsid}`: ...
  - `{env_package}`: ...
  - `{source_mat_id}`: ...

## Observation
- **Concept**:  
A measurement or observations made from a sample.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/measured/{source_mat_id}#{observedProperty}`
  - `{obsid}`: ...
  - `{env_package}`: ...
  - `{source_mat_id}`: ...
  - `{observedProperty}`: ...

## Batch 
- **Concept**:  
...
- **URI Format**:  
`http://data.emobon.embrc.eu/shipment/batch/{batchID}`
  - `{batchID}`: ...

## Sequence Run
- **Concept**:  
...
- **URI Format**:  
`http://data.emobon.embrc.eu/shipment/batch/{batchID}#SequenceAnalysis`
  - `{batchID}`:  ...

## Taxon
- **Concept**:  
...
- **URI Format**:  
N/A  

## FunctionalAnnotation
- **Concept**:  
...
- **URI Format**:  
N/A  