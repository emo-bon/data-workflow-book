---
title: Knowledge Graph Building (Semantic Uplifting)
---

This section describes how EMO-BON data is transformed into linked data and integrated into a knowledge graph.

## Semantic Uplifting Process

### RO-Crate SemBench Setup

The [rocrate-sembench-setup](https://github.com/vliz-be-opsci/rocrate-sembench-setup) action makes preparations for semantic uplifting by:

- Initializing an RO-Crate from a default profile if necessary
- Assembling required files and variables into the `~sembench_data_cache` folder (files coming from the [observatory-profile](https://github.com/emo-bon/observatory-profile))
- Creating the `~sembench_kwargs.json` file with configuration parameters

These steps separate RO-Crate-specific logic from pysembench logic on a conceptual level. The utility files produced by this action are untracked via the `.gitignore`.

### Semantify Action

The [semantify](https://github.com/vliz-be-opsci/semantify) action performs:

- **Generate TTL** (Turtle format RDF) using pysubyt task
- **Validate TTL** using pyshacl task
- **Generate LDES feed** for linked data event streams
- **Create list of generated items** for reuse by rocrate-validate

**Generating TTL**
    $$
    CSV file(s) + Template \longrightarrow TTL file(s)
    $$

- SAMPLING DATA (see data-sources)

    - *CSV file*  
    = CSV file(s) of the Quality controlled data;  
    available at `observatory-{obs_id}-crate/transformed/...`  

    - *Template*  
    = jinja template file, with required input files specified at the top;  
    available at [observatory-profile](https://github.com/emo-bon/observatory-profile)  
 
    - *TTL file(s)*  
    = RDF representation of input data in TTL, input data translated into data graph entities;  
    available at `observatory-{obs_id}-crate/{env_package}/*`  


    - **Concrete Examples of Entities:**

        - Observatory  
        [BPNS-sediment-observatory.csv](https://github.com/emo-bon/observatory-bpns-crate/tree/main/logsheets/transformed) + 
        [Template sediment_observatory](https://github.com/emo-bon/observatory-profile/blob/main/templates/sediment_observatory.ldt.ttl) 
        → [BPNS observatory.ttl](https://github.com/emo-bon/observatory-bpns-crate/blob/main/sediment/observatory/BPNS)  

        - Sampling  
        [BPNS-water-sampling.csv](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/transformed/water_sampling.csv) & [BPNS-water-observatory.csv](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/transformed/water_observatory.csv) + 
        [Template water_sampling](https://github.com/emo-bon/observatory-profile/blob/main/templates/water_sampling.ldt.ttl) 
        → [ttl files in BPNS-water-sampling-event](https://github.com/emo-bon/observatory-bpns-crate/tree/main/water/sampling-event)

        - Sample  
        [BPNS-sediment-sampling.csv](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/transformed/sediment_sampling.csv) & [BPNS-sediment-observatory.csv](https://github.com/emo-bon/observatory-bpns-crate/tree/main/logsheets/transformed) + [Template water_sample](https://github.com/emo-bon/observatory-profile/blob/main/templates/water_sample.ldt.ttl) 
        → [ttl files of BPNS-sediment-samples](https://github.com/emo-bon/observatory-bpns-crate/tree/main/sediment/sample)

        - Observation  
        [BPNS-water-measured.csv](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/transformed/water_measured.csv) & [BPNS-water-observatory.csv](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/transformed/water_observatory.csv) & [logsheet_schema_extended.csv](https://github.com/emo-bon/observatory-profile/blob/main/logsheet_schema_extended.csv) + 
        [Template water_measured](https://github.com/emo-bon/observatory-profile/blob/main/templates/water_measured.ldt.ttl) 
        → [ttl files of BPNS-water-observations](https://github.com/emo-bon/observatory-bpns-crate/tree/main/water/observation)
 

- ANALYSIS DATA
    - *Input file(s)*  
    = FASTA files of the various functional annotation data,  
    available in `./analysis-results-{clusterID}-crate/{source_mat_id}-ro-crate/...`  

    - *Template*  
    = jinja template file, with required input files specified at the top  
    available at [analysis-results-profile](https://github.com/emo-bon/analysis-results-profile)  

    - *TTL file(s)*  
    = RDF representation of input data in TTL, input data translated into data graph entities;  
    available at `./analysis-results-{clusterID}-crate/{source_mat_id}-ro-crate/...`  

    - **Concrete Examples of Entities:**

        - Taxonomic annotation  
        [taxinfo LSU](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/taxonomy-summary/LSU/DBH.merged_LSU.fasta.mseq.tsv.dvc) + 
        [Template taxon-info](https://github.com/emo-bon/analysis-results-profile/blob/main/templates/taxon-info.ldt.ttl)
        → [taxonomy-summary-LSU.ttl](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/88/871874142ee6704b7e478dfffd1119)  
        [taxinfo SSU](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/taxonomy-summary/SSU/DBH.merged_SSU.fasta.mseq.tsv.dvc) + 
        [Template taxon-info](https://github.com/emo-bon/analysis-results-profile/blob/main/templates/taxon-info.ldt.ttl)
        → [taxonomy-summary-SSU.ttl](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/f8/66aaaf56010991b37f6ebbd0b607e5)  

        - Functional annotation  
        [GO annotations](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/functional-annotation/DBH.merged.summary.go.dvc) + 
        [GO_slim annotations](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/functional-annotation/DBH.merged.summary.go_slim.dvc) + 
        [IPS annotations](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/functional-annotation/DBH.merged.summary.ips.dvc) + 
        [KO annotations](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/functional-annotation/DBH.merged.summary.ko.dvc) + 
        [PFAM annotations](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/functional-annotation/DBH.merged.summary.pfam.dvc) + 
        [Template functional-annotation](https://github.com/emo-bon/analysis-results-profile/blob/main/templates/functional-annotation.ldt.ttl)
        → [functional annotation.ttl](https://s3.mesocentre.uca.fr/mgf-data-products/files/md5/04/97554f5bd38da6433cd12820b4ccd7)

### RO-Crate Validation

The rocrate-validate process:
- Validates the RO-Crate structure and content
- Repairs issues where possible
- Reports validation results

### Publishing to Pages

The rocrate-to-pages process:
- Converts RO-Crate to HTML for GitHub Pages
- Generates human-readable views of the data

## Triple Store Construction

The EMO-BON triple store is built through a dockerized stack that:

1. **Harvests links** to datasets from data.emobon.embrc.eu/
2. **Applies extensive harvest tricks** to assemble ALL linked triples (including data turtle inside RO-Crates)
3. **Exposes the triple store** / SPARQL-endpoint at public URL (e.g., sparql.- or api.emobon.embrc.eu)

## Catalogue Integration

Metadata is integrated into catalogues (e.g., FAIR EASE IDDAS) through:

1. Dockerized process execution
2. Harvesting links to datasets from data.emobon.embrc.eu/
3. Applying semantic harvest tricks to assemble linked triples (minimally ro-crate-metadata.json)
4. Exporting harvest result into dump file for import in asset catalogue
