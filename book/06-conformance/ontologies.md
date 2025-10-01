---
title: Ontologies
---

This section describes the ontologies and vocabularies used in EMO-BON.

## EMO-BON Ontologies

A collection of ontologies and vocabularies is maintained and published under:
[https://data.emobon.embrc.eu/ns/](https://data.emobon.embrc.eu/ns/)

These resources define terms specific to the EMO-BON domain and provide a shared language for describing entities, metadata, and results across the ecosystem.

## Namespaces

The collection is organized into several thematic namespaces:

### Governance

**Namespace**: `https://data.emobon.embrc.eu/ns/governance/`

**Purpose**: Terms relevant to EMO-BON governance, processes, and organizational structures.

**Example Terms**:
- Observatory organizations
- Partner relationships
- Governance roles
- Project structure

### Product

**Namespace**: `https://data.emobon.embrc.eu/ns/product/`

**Purpose**: Terms used to describe taxonomic and functional outputs from analyses of samples.

**Example Terms**:
- Taxonomic annotations
- Functional annotations
- OTUs/ASVs
- Analysis results

### Sampling

**Namespace**: `https://data.emobon.embrc.eu/ns/sampling/`

**Purpose**: Terms for metadata about EMO-BON sampling activities and resulting samples.

**Example Terms**:
- Sampling events
- Sample types
- Collection methods
- Environmental conditions

### Core

**Namespace**: `https://data.emobon.embrc.eu/ns/core/`

**Purpose**: Terms defining metadata related to EMO-BON observatories.

**Example Terms**:
- Observatory definitions
- Station information
- Location metadata
- Temporal coverage

### Sequence

**Namespace**: `https://data.emobon.embrc.eu/ns/sequence/`

**Purpose**: Terms used to describe results from sequence analyses.

**Example Terms**:
- Sequence runs
- Sequencing methods
- Quality metrics
- Batch information

## External Ontologies

EMO-BON also uses terms from established ontologies:

### SOSA (Sensor, Observation, Sample, and Actuator)

- **Namespace**: `http://www.w3.org/ns/sosa/`
- **Usage**: Modeling observations, samples, and sampling events
- **Key Terms**: `Observation`, `Sample`, `Sampling`, `hasResult`, `isResultOf`

### Dublin Core

- **Namespace**: `http://purl.org/dc/terms/`
- **Usage**: General metadata properties
- **Key Terms**: `title`, `description`, `creator`, `date`, `isPartOf`

### Schema.org

- **Namespace**: `https://schema.org/`
- **Usage**: General web metadata
- **Key Terms**: `name`, `description`, `url`, `identifier`

### Darwin Core

- **Namespace**: `http://rs.tdwg.org/dwc/terms/`
- **Usage**: Biodiversity data standards
- **Key Terms**: Species occurrence, taxonomic information

## Ontology Design Principles

EMO-BON ontologies follow these principles:

1. **Reuse**: Use existing ontologies where appropriate
2. **Extension**: Define new terms only when necessary
3. **Alignment**: Align with domain standards (e.g., Darwin Core for biodiversity)
4. **Documentation**: Provide clear definitions and examples
5. **Versioning**: Track changes and maintain backward compatibility

## Using Ontologies

Ontologies are used in EMO-BON for:

- **RDF Generation**: Semantic templates use ontology terms to structure triples
- **Validation**: SHACL shapes reference ontology terms
- **Querying**: SPARQL queries use ontology terms to find data
- **Integration**: External systems can understand EMO-BON data through standard ontologies
