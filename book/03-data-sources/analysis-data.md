---
title: Analysis Data
---



### Types of Analysis data 
Analysis data are generated trough batch analyses of samples collected during a single sampling event.  
Each batch analysis runs the MetaGOflow workflow analysis of metagenomic data from EMBRC *([paper](https://academic.oup.com/gigascience/article/doi/10.1093/gigascience/giad078/7321054))* on the samples collected during a single sampling event.  

The Analysis data includes/consists of (~ MetaGoFlow metagenomics data products) ...  [*DNA metabarcoding, chemical profiling, or other lab-based methods, depending on the type of sample and the research question*].
== the types of analysis data

### Availability of Analysis data

DVC/S3 references of the analysis data are available in the following repository, where the repository structure reflects the batches formation in which samples were analysed:

🔗 [https://github.com/emo-bon/analysis-results-cluster-01-crate](https://github.com/emo-bon/analysis-results-cluster-01-crate)

~ certain parts of the analysis data (~ data products) are used as input for semantic uplifting.

example:  
- [./EMOBON_BPNS_So_34-ro-crate/EMOBON_BPNS_So_34-ro-crate](https://github.com/emo-bon/EMOBON_BPNS_So_34-ro-crate/blob/main/EMOBON_BPNS_So_34-ro-crate)  
contains results data from a MetaGOflow workflow analysis of metagenomic data from samples collected during the 'EMOBON_BPNS_So_34' Sampling Event.
  - [`./taxonomy-summary/SSU/DBH.merged_SSU.fasta.mseq.tsv.dvc`](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/taxonomy-summary/SSU/DBH.merged_SSU.fasta.mseq.tsv.dvc) 
  - [`./taxonomy-summary/SLU/DBH.merged_LSU.fasta.mseq.tsv.dvc`](https://github.com/emo-bon/analysis-results-cluster-01-crate/blob/main/EMOBON_BPNS_So_34-ro-crate/taxonomy-summary/LSU/DBH.merged_LSU.fasta.mseq.tsv.dvc) 
  - [``]() 


