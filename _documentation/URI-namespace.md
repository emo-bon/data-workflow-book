---
title: URI Namespace
author: VLIZ OpenScience team
date: 2025-02-06
category: Jekyll
layout: post
---

Below is a comprehensive overview of the URI namespaces used within EMO-BON, including defined patterns for RO-profile, RO-Crate, and data entity URIs. While ensuring consistency and interoperability, these URI patterns are designed for dereferenceability and publication of EMO-BON Data as static content, (without reliance on a triple store).

### Overview

base-url: `http(s)://data.emobon.embrc.eu`

| Category         | Entity                  | (preliminary) URI Format |
|-----------------|-------------------------|------------|
| **[RO-Profiles](#ro-profiles)** | [Profile](#ro-profiles)         | `{base-url}/{name}-profile/{version}` |
| **[RO-Crates](#ro-crates)**   | [Governance Crate](#governance-crate)        | `{base_url}/governance-crate/` |
|                 | [Observatory Crate](#observatory-crate)       | `{base_url}/observatory-{obsid}-crate` |
|                 | [Analysis-Results Crate](#analysis-results-crate)  | `{base_url}/analysis-results-{cluster}-crate/` |
|                 | [Sequencing Crate](#sequencing-crate)        | `{base_url}/sequencing-crate` |
| **[Data Entities](#data-entities)** | [Observatory](#observatory)            | `{base_url}/observatory-{obs_id}-crate/{env_package}/observatory/{obs_id}` |
|                 | [Sampling Event](#sampling-event)          | `{base_url}/observatory-{obs_id}-crate/{env_package}/sampling/{sampling_event}` |
|                 | [Sample](#sample)                  | `{base_url}/observatory-{obs_id}-crate/{env_package}/measured/{source_mat_id}` |
|                 | [Sample Replicate](#sample-replicate)        | `{base_url}/observatory-{obs_id}-crate/{env_package}/sampling/{source_mat_id}` |
|                 | [Observation](#observation)             | `{base_url}/observatory-{obs_id}-crate/{env_package}/measured/{source_mat_id}#{observedProperty}` |
|                 | [Batch](#batch)                   | `{base_url}/shipment/batch/{batchID}` |
|                 | [Sequence Run](#sequence-run)            | `{base_url}/shipment/batch/{batchID}#SequenceAnalysis` |
|                 | [Taxon](#taxon)                   | N/A |
|                 | [FunctionalAnnotation](#functionalannotation)    | N/A |

---
# RO-Profiles

RO-profiles encapsulate Research Object (RO) profiles that describe conformity to a fixed set of expectations for data structures. They ensure consistency in the way research data is formatted and provide practical assets such as templates, SHACL files, documentation, and other reference materials. Used as metadata descriptors for crates that comply with specific profile expectations, RO-profiles help standardize research data management. More information is available at: [Ro Crate profiles](https://www.researchobject.org/ro-crate/specification/1.2-DRAFT/profiles.html).
- **Creation & Management**:  
`https://github.com/emo-bon/{name}-profile`
- **URI Format**:  
`https://data.embon.embrc.eu/{name}-profile/{version}`
  - `{name}`:  observatory \| sequencing \| analysis-results 
  - `{version}`: `latest` or a specific version vM.m.p. (e.g., `v1.0.0`)

---
# RO-Crates

Crates are structured data packages that encapsulate various types of research data. They serve as containers for datasets, metadata, and other related information, ensuring consistency, traceability, and compliance with RO-profiles. Within the EMO-BON ecosystem, we categorize crates into different types, each serving a specific purpose:

## Governance Crate
- **Concept**:  
Contains information relating to the governance of EMO BON GitHub activities and actions.
- **URI Format**:  
`https://data.emobon.embrc.eu/governance-crate/`
- **Creation & Management**:  
`https://github.com/emo-bon/governance-crate/`

## Observatory Crate
- **Concept**:  
Holds information about an EMOBON Observatory, its associated sampling events, and the data generated from those events.
- **Creation & Management**:  
`https://github.com/emo-bon/observatory-{obsid}-crate/`
- **URI Format**:  
`https://data.emobon.embrc.eu/observatory-{obsid}-crate`
  - `{obsid}` = ...


## Analysis-Results Crate
- **Concept**:  
Holds information and data resulting from MetaGOFlow data analysis processes.
- **Creation & Management**:  
`https://github.com/emo-bon/analysis-results-{cluster}-crate/`
- **URI format**:  
`https://data.emobon.embrc.eu/analysis-results-{cluster}-crate/`
  - `{cluster}` = ...

## Sequencing Crate
- **Concept**:  
Holds information and data resulting from sequencing runs.
- **Creation & Management**:  
`https://github.com/emo-bon/sequencing-crate`
- **URI format**:  
`https://data.emobon.embrc.eu/sequencing-crate`


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
tbd  

## FunctionalAnnotation
- **Concept**:  
...
- **URI Format**:  
tbd  