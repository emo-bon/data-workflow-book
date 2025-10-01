---
title: Entities
---

This section describes the key entities in the EMO-BON knowledge graph and their relationships.

## Entity Relationship Diagram

:::{note}
A diagram showing the relationships between entities will be included here.
:::

## Core Entities

### Observatory

An EMO-BON organizational unit linked to the collection of a specific sample type (e.g., water column, soft sediment) from a fixed, pre-determined location.

**Key Properties**:
- Observatory ID (e.g., BPNS, HCMR-1)
- Associated partners/organizations
- Location information
- Sample types collected

**URI Pattern**: `/observatory-{obs_id}-crate/{env_package}/observatory/{obs_id}`

### Sampling Event

A sampling action performed at a particular observatory at a specific time, resulting in the collection of one or more samples.

**Key Properties**:
- Sampling event ID
- Date and time
- Location
- Environmental conditions
- Associated observatory

**URI Pattern**: `/observatory-{obs_id}-crate/{env_package}/sampling-event/{sampling_event}`

**Relationships**:
- `sampling:linkedToObservatory` → Observatory
- `sosa:hasResult` → Sample(s)

### Sample (Material Sample)

A material sample collected during a sampling event. Each unique material sample has a unique material sample ID.

**Key Properties**:
- Sample ID (e.g., EMOBON_HCMR-1_Wa_1)
- Sample type (water, sediment)
- Collection details
- Associated sampling event

**URI Pattern**: `/observatory-{obs_id}-crate/{env_package}/sample/{source_mat_id}`

**Relationships**:
- `sosa:isResultOf` → Sampling Event

### Observation

A measurement or observation made on a sample.

**Key Properties**:
- Sample ID
- Observed property (e.g., temperature, pH, chlorophyll)
- Measured value
- Units

**URI Pattern**: `/observatory-{obs_id}-crate/{env_package}/observation/{source_mat_id}#{observedProperty}`

**Relationships**:
- `sosa:hasFeatureOfInterest` → Sample

## Analysis Result Entities

### Taxon Summary

Taxonomic annotation results from sequence analysis.

**Key Properties**:
- OTU ID
- Taxonomic classification
- Abundance information
- Associated sample

**URI Pattern**: `/analysis-results-{cluster}-crate/taxonomy-summary#{OTU-ID}`

**Relationships**:
- `prod:ofSample` → Sample
- `dct:isPartOf` → Taxonomy Summary collection

### Functional Annotation

Functional annotation results from sequence analysis.

**Key Properties**:
- Row ID
- Annotation type (GO, IPS, EGGNOG)
- Functional description
- Associated sample

**URI Pattern**: `/analysis-results-{cluster}-crate/functional-annotation#{rowID}`

**Relationships**:
- `prod:ofSample` → Sample
- `dct:isPartOf` → Functional Annotation collection

## Sequencing Entities

### Batch

A group of samples sequenced together.

**Key Properties**:
- Batch ID
- Sequencing date
- Associated samples

**URI Pattern**: `/sequencing-crate/shipment/batch/{batchID}`

### Sequence Run

Details of a sequencing run.

**Key Properties**:
- Associated batch
- Run parameters
- Output details

**URI Pattern**: `/sequencing-crate/shipment/batch/{batchID}#SequenceAnalysis`

## External References

EMO-BON entities also reference external resources:

- **ENA accessions**: `https://www.ebi.ac.uk/ena/browser/view/{accession}`
- **S3 objects** (via DVC): For large files in analysis results crates
