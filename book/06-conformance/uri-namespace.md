---
title: URI Namespace
---

This section provides a comprehensive overview of the URI namespaces used within the EMO-BON ecosystem.

## URI Design Principles

EMO-BON URI patterns are designed for:
- **Consistency**: Predictable structure across entity types
- **Dereferenceability**: URIs can be resolved to get information about entities
- **Interoperability**: Compatible with linked data standards
- **Publication**: Suitable for static content hosting without requiring a triple store


## Overview - URI Path Patterns

Base URI: ```https://data.emobon.embrc.eu```

Each URI is further extended with a path specific to the entity type:

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
| Taxon summary | `/analysis-results-{cluster}-crate` | `{source_mat_id}-ro-crate/taxonomy-summary-{geneticMarker}` | `#{OTU-ID}` |
| Functional annotation | `/analysis-results-{cluster}-crate` | `{source_mat_id}-ro-crate/functional-annotation` | `#{rowID}` |
|  |  |  |  |
| *batch* | *`/sequencing-crate`* | *`/shipment/batch/{batchID}`* |  |
| *sequence-run* | *`/sequencing-crate`* | *`/shipment/batch/{batchID}`* | *`#SequenceAnalysis`* |

## Detailed Specifications - URI Path Patterns 

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

URI pattern: 
- `{base}/analysis-results-{cluster}-crate`

| Parameter   | Description                   | Allowed Values | Example |
|-------------|-------------------------------|----------------|---------|
| `{cluster}` | Unique analysis cluster ID    | free-text IDs  | cluster-01   |

**Example**: 
[https://data.emobon.embrc.eu/analysis-results-cluster-01-crate](https://data.emobon.embrc.eu/analysis-results-cluster-01-crate)


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

### Taxononmy Annotation

URI pattern: `{base}/analysis-results-{cluster}-crate/{source_mat_id}-ro-crate/taxonomy-summary/{geneticMarker}/{geneticMarker}-taxonomy-summary#{OTU-ID}`

| Parameter   | Description                   | Allowed Values | Example |
|-------------|-------------------------------|----------------|---------|
| `{cluster}` | Unique analysis cluster ID    | free-text IDs  | cluster-01   |
| `{source_mat_id}` | Unique sample ID | free-text IDs  | EMOBON_AAOT_Wa_42 |
| `{geneticMarker}` | Genetic marker used during analysis | SLU / SSU  | SSU   |
| `{OTU-ID}` | OTU ID | integer IDs  | 2157 |

**Example**: [https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/EMOBON_AAOT_Wa_42-ro-crate/taxonomy-summary/SSU/SSU-taxonomy-summary#2157](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/d3/470a9073b9810baff0e1d5a9f75418)

### Functional Annotation

URI pattern: `{base}/analysis-results-{cluster}-crate/{source_mat_id}-ro-crate/functional-annotation/functional-annotation#{rowID}`

| Parameter   | Description                   | Allowed Values | Example |
|-------------|-------------------------------|----------------|---------|
| `{cluster}` | Unique analysis cluster ID    | free-text IDs  | cluster-01   |
| `{source_mat_id}` | Unique sample ID | free-text IDs  | EMOBON_AAOT_Wa_42 |
| `{rowID}` | An identifier for the functional annotation | row index  | 0055085 |

**Example**: [https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/EMOBON_AAOT_Wa_42-ro-crate/functional-annotation/functional-annotation#GO:0055085](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/9f/0b9bb0f1f867f954f27cc05900879c)

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
