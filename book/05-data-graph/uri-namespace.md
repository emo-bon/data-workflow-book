---
title: URI Namespace
---

This section provides a comprehensive overview of the URI namespaces used within EMO-BON.

## Base URI

All EMO-BON entities use the base URI:
```
https://data.emobon.embrc.eu
```

## URI Design Principles

EMO-BON URI patterns are designed for:
- **Consistency**: Predictable structure across entity types
- **Dereferenceability**: URIs can be resolved to get information about entities
- **Interoperability**: Compatible with linked data standards
- **Publication**: Suitable for static content hosting without requiring a triple store

## Overview - URI Path Patterns

Each URI begins with the base and is extended with a path segment specific to the entity type:

| Entity type | `/repository` | `/path-to/file.extension` | `#fragment-identifier` | 
|----------------------|-----------------------------------|--------------------------|-----------------------------|
| **RO-Profiles** |  |  |  |
| ro-profiles | `/{name}-profile` | `/{version}` |  |
| **RO-Crates** |  |  |  |
| governance-crate | `/governance-crate` |  |  |
| observatory-crate | `/observatory-{obsid}-crate` |  |  |
| analysis-results-crate | `/analysis-results-{cluster}-crate` |  |  |
| sequencing-crate | `/sequencing-crate` |  |  |
| **Data Entities** |  |  |  |
| Observatory | `/observatory-{obs_id}-crate` | `/{env_package}/observatory/{obs_id}` |  |
| Sampling event | `/observatory-{obs_id}-crate` | `/{env_package}/sampling-event/{sampling_event}` |  |
| Sample | `/observatory-{obs_id}-crate` | `/{env_package}/sample/{source_mat_id}` |  |
| Observation | `/observatory-{obs_id}-crate` | `/{env_package}/observation/{source_mat_id}` | `#{observedProperty}` |
|  |  |  |  |
| Taxon summary | `/analysis-results-{cluster}-crate` | `/taxonomy-summary` | `#{OTU-ID}` |
| Functional annotation | `/analysis-results-{cluster}-crate` | `/functional-annotation` | `#{rowID}` |
|  |  |  |  |
| batch | `/sequencing-crate` | `/shipment/batch/{batchID}` |  |
| sequence-run | `/sequencing-crate` | `/shipment/batch/{batchID}` | `#SequenceAnalysis` |

## Detailed URI Path Specifications

### RO-Profiles

URI pattern: `{base}/{name}-profile/{version}`

| Parameter    | Description                  | Allowed Values                               | Example URI |
|--------------|------------------------------|----------------------------------------------|---------|
| `{name}`     | Name of the profile          | observatory, sequencing, analysis-results    | observatory |
| `{version}`  | Profile version              | `latest` or specific version (`vM.m.p`)      | latest, v1.0.0 |

**Examples**: 
- [https://data.emobon.embrc.eu/observatory-profile/latest/](https://data.emobon.embrc.eu/observatory-profile/latest/)
- [https://data.emobon.embrc.eu/analysis-results-profile/latest/](https://data.emobon.embrc.eu/analysis-results-profile/latest/)

:::{note}
sequencing-profile doesn't exist yet
:::

### Governance Crate

URI: `{base}/governance-crate`

**Example**: https://data.emobon.embrc.eu/governance-crate/

:::{warning}
Not yet dereferenceable
:::

### Observatory Crate

URI pattern: `{base}/observatory-{obsid}-crate`

| Parameter  | Description              | Allowed Values | Example(s) |
|------------|--------------------------|----------------|---------|
| `{obsid}`  | Unique observatory ID    | free-text IDs  | hcmr-1, BPNS  |

**Example**: [https://data.emobon.embrc.eu/observatory-hcmr-1-crate](https://data.emobon.embrc.eu/observatory-hcmr-1-crate)

### Analysis-Results Crate

URI pattern: `{base}/analysis-results-{cluster}-crate`

| Parameter   | Description                   | Allowed Values | Example |
|-------------|-------------------------------|----------------|---------|
| `{cluster}` | Unique analysis cluster ID    | free-text IDs  | cluster-01   |

**Example**: [https://data.emobon.embrc.eu/analysis-results-cluster-01-crate](https://data.emobon.embrc.eu/analysis-results-cluster-01-crate)

### Sequencing Crate

URI: `{base}/sequencing-crate`

:::{note}
Doesn't exist yet
:::

### Observatory

URI pattern: `{base}/observatory-{obs_id}-crate/{env_package}/observatory/{obs_id}`

| Parameter      | Description              | Allowed Values          | Example |
|----------------|--------------------------|-------------------------|---------|
| `{obs_id}`     | Unique observatory ID    | free-text IDs           | hcmr-1, BPNS |
| `{env_package}`| Environment package      | water / sediment / soil   | water, sediment |

**Example**: http://data.emobon.embrc.eu/observatory-hcmr-1-crate/water/observatory/HCMR-1

:::{note}
Currently not directly dereferenceable - see [all-triples.ttl](https://raw.githubusercontent.com/emo-bon/observatory-hcmr-1-crate/refs/heads/main/all-triples.ttl)
:::

### Sampling Event

URI pattern: `{base}/observatory-{obs_id}-crate/{env_package}/sampling-event/{sampling_event}`

| Parameter         | Description                  | Allowed Values | Example |
|-------------------|------------------------------|----------------|---------|
| `{obs_id}`        | Unique observatory ID        | free-text IDs  | hcmr-1, BPNS |
| `{env_package}`   | Environment package          | water, sediment | water, sediment |
| `{sampling_event}`| Unique sampling event ID     | free-text IDs  | HCMR-1_Wa_221027 |

**Example**: http://data.emobon.embrc.eu/observatory-hcmr-1-crate/water/sampling-event/HCMR-1_Wa_221027

### Sample

URI pattern: `{base}/observatory-{obs_id}-crate/{env_package}/sample/{source_mat_id}`

| Parameter        | Description              | Allowed Values | Example |
|------------------|--------------------------|----------------|---------|
| `{obs_id}`       | Unique observatory ID    | free-text IDs  | hcmr-1, BPNS |
| `{env_package}`  | Environment package      | water, sediment | water, sediment |
| `{source_mat_id}`| Unique sample ID         | free-text IDs  | EMOBON_HCMR-1_Wa_1 |

**Example**: http://data.emobon.embrc.eu/observatory-hcmr-1-crate/water/sample/EMOBON_HCMR-1_Wa_1

### Observation

URI pattern: `{base}/observatory-{obs_id}-crate/{env_package}/observation/{source_mat_id}#{observedProperty}`

| Parameter           | Description                  | Allowed Values      | Example |
|---------------------|------------------------------|---------------------|---------|
| `{obs_id}`          | Unique observatory ID        | free-text IDs       | hcmr-1, BPNS |
| `{env_package}`     | Environment package          | water, sediment     | water, sediment |
| `{source_mat_id}`   | Unique sample ID             | free-text IDs       | EMOBON_HCMR-1_Wa_1 |
| `{observedProperty}`| Name of the observed property| temperature, pH     | chlorophyll, sea_subsurf_salinity |

**Example**: http://data.emobon.embrc.eu/observatory-hcmr-1-crate/water/observation/EMOBON_HCMR-1_Wa_1#chlorophyll

### Taxon Summary

URI pattern: `{base}/analysis-results-{cluster}-crate/taxonomy-summary#{OTU-ID}`

| Parameter     | Description                     | Allowed Values | 
|---------------|---------------------------------|----------------|
| `{cluster}`   | Unique analysis cluster ID      | free-text IDs  |
| `{OTU-ID}`    | Unique OTU identifier           | free-text IDs  |

### Functional Annotation

URI pattern: `{base}/analysis-results-{cluster}-crate/functional-annotation#{rowID}`

| Parameter      | Description                     | Allowed Values | 
|----------------|---------------------------------|----------------|
| `{cluster}`    | Unique analysis cluster ID      | free-text IDs  |
| `{rowID}`      | Row ID for functional annotation| index IDs      |

### Batch

URI pattern: `{base}/sequencing-crate/shipment/batch/{batchID}`

| Parameter  | Description                  | Allowed Values | 
|------------|------------------------------|----------------|
| `{batchID}`| Unique batch identifier      | free-text IDs  |

:::{note}
Doesn't exist yet
:::

### Sequence Run

URI pattern: `{base}/sequencing-crate/shipment/batch/{batchID}#SequenceAnalysis`

| Parameter  | Description                  | Allowed Values | 
|------------|------------------------------|----------------|
| `{batchID}`| Batch ID for sequence run    | free-text IDs  |

:::{note}
Doesn't exist yet
:::

## EMO-BON Ontologies

A collection of ontologies and vocabularies is maintained and published under:
[https://data.emobon.embrc.eu/ns/](https://data.emobon.embrc.eu/ns/)

These resources define terms specific to the EMO-BON domain and provide a shared language for describing entities, metadata, and results.

The collection is organized into thematic namespaces:

- **governance** — terms relevant to EMO-BON governance, processes, and organizational structures
- **product** — terms used to describe taxonomic and functional outputs from analyses of samples
- **sampling** — terms for metadata about EMO-BON sampling activities and resulting samples
- **core** — terms defining metadata related to EMO-BON observatories
- **sequence** — terms used to describe results from sequence analyses

Each vocabulary provides standard concepts tailored to its context, ensuring consistent, interoperable descriptions throughout the EMO-BON knowledge graph.
