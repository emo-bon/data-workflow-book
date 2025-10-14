---
title: Core Entities
---

> Core Entities Diagram
> ![Core Entity relationships diagram](../assets/core-entity-relations-diagram.png)

### Observatory

An EMO-BON organizational unit linked to the collection of a specific sample type (e.g., water column, soft sediment) from a fixed, pre-determined location.
- **Class**  
`core:Observatory`
- **URI Pattern**:  
`{{base}}/observatory-{obs_id}-crate/{env_package}/observatory/{obs_id}`  
Example: http://data.emobon.embrc.eu/observatory-bpns-crate/sediment/observatory/BPNS 


### Sampling Event

A sampling action performed at a particular observatory at a specific time, resulting in the collection of one or more samples.

- **Class:**  
`sosa:Sampling`, `prov:Activity`
- **Relationships**:
    - Sampling event → `sampling:linkedToObservatory` → Observatory
    - Sampling event → `sosa:hasResult` → Sample(s)
- **URI Pattern**:  
`{{base}}/observatory-{obs_id}-crate/{env_package}/sampling-event/{sampling_event}`  
Example: http://data.emobon.embrc.eu/observatory-bpns-crate/sediment/sampling-event/BPNS_So_210701 

### Sample (Material Sample)

A material sample collected during a sampling event. Each unique material sample has a unique material sample ID.

- **Class:**  
`sosa:Sample`, `prov:Activity`
- **Relationships**:
  - Sample → `sosa:isResultOf` → Sampling Event
- **URI Pattern**:  
`{{base}}/observatory-{obs_id}-crate/{env_package}/sample/{source_mat_id}`  
Example: http://data.emobon.embrc.eu/observatory-bpns-crate/sediment/sample/EMOBON_BPNS_So_1

- ### Observation

A measurement or observation made on a sample.

- **Class:**  
`sosa:Observation`, `schema:Observation`
- **Relationships**:
  - Observation → `sosa:hasFeatureOfInterest` → Sample
- **URI Pattern**:  
`{{base}}/observatory-{obs_id}-crate/{env_package}/observation/{source_mat_id}#{observedProperty}`  
Example: http://data.emobon.embrc.eu/observatory-bpns-crate/sediment/observation/EMOBON_BPNS_So_1


## Analysis Result Entities

### Taxonomy Annotation Collection

Collection of taxonomy annotations

- **URI Pattern**:  
`{{base}}/analysis-results-{cluster}-crate/{source_mat_id}-ro-crate/taxonomy-summary-{geneticMarker}`  
Example:  
- [https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/EMOBON_AAOT_Wa_42-ro-crate/taxonomy-summary-LSU](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/f5/c7a71924e1cfb10410331f27636b52)
- [https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/EMOBON_AAOT_Wa_42-ro-crate/taxonomy-summary-SSU](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/d3/470a9073b9810baff0e1d5a9f75418) 

> ! mismatch between entity url and derefearable url

### Taxonomy Annotation

Taxonomic annotation results from sequence analysis.

- **Class:**  
`prod:TaxonomicAnnotation`
- **Relationships**:
  - Taxonomic annotation → `prod:ofSample` → Sample
  - Taxonomic annotation → `dct:isPartOf` → Taxonomy Summary collection
- **URI Pattern**:  
`{{base}}/analysis-results-{cluster}-crate/{source_mat_id}-ro-crate/taxonomy-summary-{geneticMarker}#{OTU-ID}`  
Example: 
- [https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/EMOBON_AAOT_Wa_42-ro-crate/taxonomy-summary-LSU#2157](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/f5/c7a71924e1cfb10410331f27636b52)
- [https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/EMOBON_AAOT_Wa_42-ro-crate/taxonomy-summary-SSU#2157](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/d3/470a9073b9810baff0e1d5a9f75418)

> ! mismatch between entity url and derefearable url


### Functional Annotation Collection

Collection of functional annotations

- **URI Pattern**:  
`/analysis-results-{cluster}-crate/{source_mat_id}-ro-crate/functional-annotation`  
Example: 
- [https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/EMOBON_AAOT_Wa_42-ro-crate/functional-annotation](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/9f/0b9bb0f1f867f954f27cc05900879c) 

> ! mismatch between entity url and derefearable url


### Functional Annotation

Functional annotation results from sequence analysis.

- **Class:**  
`prod:FunctionalAnnotation` 
- **Relationships**:
  - Functional annotation → `prod:ofSample` → Sample
  - Functional annotation → `dct:isPartOf` → Functional Annotation collection
- **URI Pattern**:  
`{{base}}/analysis-results-{cluster}-crate/{source_mat_id}-ro-crate/functional-annotation#{rowID}`  
Example: 
- [https://data.emobon.embrc.eu/analysis-results-cluster-01-crate/EMOBON_AAOT_Wa_42-ro-crate/functional-annotation#GO:0055085](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/9f/0b9bb0f1f867f954f27cc05900879c)

> ! mismatch between entity url and derefearable url


## *Sequencing Entities - TBD*

### *Batch*

...

**URI Pattern**:  
`...`

### *Sequence Run*

Details of a sequencing run.

**URI Pattern**:  
`....`
