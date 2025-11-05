---
title: Analysis Data
---

### Types of Analysis data 
Analysis data are currently generated for the sequences produced from the samples collected during sampling events. For this we use the [MetaGOflow](https://academic.oup.com/gigascience/article/doi/10.1093/gigascience/giad078/7321054) workflow on the metagenomic data. A single sequence is processed in each run, and we are making our way through each of the [sequencing batches](https://github.com/emo-bon/sequencing-crate/tree/main/shipment) that are managed by EMO BON.   

The Analysis data are all the outputs of MetaGoFlow: *ASK CYMON to fill in here*.

### Availability of Analysis data

As the outputs of MetaGOflow are large, they are not themselves stored on GitHub, rather on *ASK CYMON to fill in details here*. These outputs for each run on MetaGOflow can be found in the folders in [https://github.com/emo-bon/analysis-results-cluster-01-crate](https://github.com/emo-bon/analysis-results-cluster-01-crate), each having the name of the material sample that is the source of the processed sequence.  Within those folders are the DVC/S3 file references, organised following the structure of MetaGOflows outputs. A RO-Crate json file then describes and links each file in each folder. 

example:  *ASK CYMON to edit here*
- [./EMOBON_BPNS_So_34-ro-crate/EMOBON_BPNS_So_34-ro-crate](https://github.com/emo-bon/EMOBON_BPNS_So_34-ro-crate/blob/main/EMOBON_BPNS_So_34-ro-crate)  
contains results data from a MetaGOflow workflow analysis of metagenomic data from samples collected during the 'EMOBON_BPNS_So_34' Sampling Event.
  - [`./taxonomy-summary/SSU/DBH.merged_SSU.fasta.mseq.tsv.dvc`](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/taxonomy-summary/SSU/DBH.merged_SSU.fasta.mseq.tsv.dvc) ~ taxonomic annotations found by small ribosomal subunit amplification ???
  - [`./taxonomy-summary/SLU/DBH.merged_LSU.fasta.mseq.tsv.dvc`](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/taxonomy-summary/LSU/DBH.merged_LSU.fasta.mseq.tsv.dvc) ~ taxonomic annotations found by large ribosomal subunit amplification ???
  - [``]() ~ functional annotation results of ... family of proteins/enzymes
  - [``]() ~ functional annotation results of ... family of proteins/enzymes
  - [``]() ~ functional annotation results of ... family of proteins/enzymes
  - [``]() ~ functional annotation results of ... family of proteins/enzymes
  - [``]() ~ functional annotation results of ... family of proteins/enzymes

