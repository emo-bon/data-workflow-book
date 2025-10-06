---
title: Ontologies
---

# EMO-BON Ontologies

The EMO-BON data model is designed with a strong emphasis on interoperability and reuse. To support this, it incorporates terms from established, widely adopted ontologies wherever possible. This approach ensures consistency and enhances the integration of EMO-BON data within broader semantic frameworks.

The following is a preliminary list of ontologies reused within the EMO-BON model:

- [**SOSA (Sensor, Observation, Sample, and Actuator)**](http://www.w3.org/ns/sosa/)  
  Modeling observations, samples, and sampling events.  
  e.g. `Observation`, `Sample`, `Sampling`, `hasResult`, `isResultOf`, ...

- [**Dublin Core**](http://purl.org/dc/terms/)  
  General metadata properties.  
  e.g. `title`, `description`, `creator`, `date`, `isPartOf`, ...

- [**Schema.org**](https://schema.org/)  
  General-purpose metadata for describing entities.  
  e.g. `name`, `description`, `url`, `identifier`, ...

- [**PROV-O (Provenance Ontology)**](https://www.w3.org/TR/prov-o/)  
  Representing provenance metadata.  
  e.g. `Activity`, `Entity`, ...

- ...


Not all concepts relevant to EMO-BON could be adequately represented using existing ontologies. To address these gaps and ensure a complete and coherent data model, EMO-BON defines its own suite of ontologies, available at:

[https://data.emobon.embrc.eu/ns/](https://data.emobon.embrc.eu/ns/)

These ontologies are organized into thematic namespaces, each covering a specific aspect of the data lifecycle - from observatory metadata and sampling events to analytical outputs and organizational processes. Together, they provide a structured and interoperable foundation for describing marine biodiversity observations, supporting rich, consistent, and machine-readable data integration across the EMO-BON ecosystem:

- [**core ontology**](https://data.emobon.embrc.eu/ns/core/)  
Defines core metadata related to observatories, sampling events, and samples.
e.g. `Observatory`, `SampleType`, `hasBiome`, `waterColumnDepth`, ...

- [**core vocabulary**](https://data.emobon.embrc.eu/ns/core/)  
Describes basic environmental concepts used in sampling.  
e.g. `Hard`, `Soil`, `Water`

- [**product ontology**](https://data.emobon.embrc.eu/ns/product/)  
Terms for describing outputs from taxonomic and functional analyses of samples.   
e.g. `Product`, `TaxonomicAnnotation`, `FunctionalAnnotation`, `ofSample`, ...

- [**product vocabulary**](https://data.emobon.embrc.eu/ns/product_vocab/)  
Defines terms used within functional and taxonomic annotations.  
e.g. `GO`, `InterPro`, ...

- [**sampling ontology**](https://data.emobon.embrc.eu/ns/sampling/)  
Metadata for describing sampling activities and sample characteristics.  
e.g. `tidalStage`, `minSamplingDepth`, `longStorage`, `hasSampleSize`, ...

- [**sequence ontology**](https://data.emobon.embrc.eu/ns/sequence/)  
Describes sequencing-related data and analyses.  
e.g. `SequencingRun`, `associatedBatch`, ....

> ⚠️ *Relevance and usage of this namespace should be confirmed.*

- [**governance ontology**](https://data.emobon.embrc.eu/ns/governance/)  
Terms related to governance processes and organizational structures in EMO-BON.
e.g. `SOP`, ....

> ⚠️ *Relevance and usage of this namespace should be confirmed.*