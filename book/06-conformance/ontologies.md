---
title: Ontologies
---

This section describes the ontologies and vocabularies used in the EMO-BON data model.

## EMO-BON Ontologies

A collection of ontologies and vocabularies is maintained and published under:
[https://data.emobon.embrc.eu/ns/](https://data.emobon.embrc.eu/ns/)

These resources define terms specific to the EMO-BON domain and provide a shared language for describing entities, metadata, and results across the ecosystem.

## Namespaces

The collection is organized into several thematic namespaces:

### Core

- **Namespace**: https://data.emobon.embrc.eu/ns/core/
- **Purpose**: Terms defining metadata related to EMO-BON observatories, sampling event and samples.
- **Example Classes/Properties**:
  - Observatory
  - SampleType
  - hasBiome
  - waterColumnDepth
  - ...

### Core Vocabulary

- **Namespace**: https://data.emobon.embrc.eu/ns/core/
- **Purpose**: Concepts relevant in context of EMO-BON sampling data.
- **Example Classes/Properties**:
  - Hard 
  - Soil 
  - Water
  - ...

### Product

- **Namespace**: https://data.emobon.embrc.eu/ns/product/
- **Purpose**: Terms used to describe taxonomic and functional outputs from analyses of samples.
- **Example Classes/Properties**:
  - Product
  - TaxonomicAnnotation
  - FunctionalAnnotation
  - ofSample
  - ...

### Product vocabulary

- **Namespace**: https://data.emobon.embrc.eu/ns/product_vocab/
- **Purpose**: Concepts relevant in context of functional and taxonomic annotations.
- **Example Classes/Properties**:
  - GO
  - InterPro
  - ...

### Sampling

- **Namespace**: https://data.emobon.embrc.eu/ns/sampling/
- **Purpose**: Terms for metadata about EMO-BON sampling activities and resulting samples.
- **Example Properties**:
  - tidalStage
  - minSamplingDepth
  - longStorage
  - hasSampleSize
  - ...

### Sequence

- **Namespace**: https://data.emobon.embrc.eu/ns/sequence/
- **Purpose**: Terms used to describe results from sequence analyses.
- **Example Classes/Properties**:
  - SequencingRun
  - associatedBatch
  - ...

! to double check its relevance / use 

### Governance

- **Namespace**: https://data.emobon.embrc.eu/ns/governance/
- **Purpose**: Terms relevant to EMO-BON governance, processes, and organizational structures.
- **Example Classes/Properties**:
  - SOP
  - ...

! to double check its relevance / use 


## External Ontologies

EMO-BON data model also uses terms from established ontologies:

- ### SOSA (Sensor, Observation, Sample, and Actuator)

  - Namespace: http://www.w3.org/ns/sosa/
  - Modeling observations, samples, and sampling events
  - Key Terms: `Observation`, `Sample`, `Sampling`, `hasResult`, `isResultOf`

- ### Dublin Core

  - Namespace: http://purl.org/dc/terms/
  - General metadata properties
  - Key Terms: `title`, `description`, `creator`, `date`, `isPartOf`

- ### Schema.org

  - Namespace: https://schema.org/
  - General metadata properties
  - Key Terms: `name`, `description`, `url`, `identifier`

- ### PROV-O

  - Namespace: https://www.w3.org/TR/prov-o/
  - Provenance metadata 
  - Key Terms: `Activity`, `Entity`


