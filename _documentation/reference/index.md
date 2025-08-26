---
title: Reference
author: VLIZ OpenScience team
date: 2025-02-06
category: Jekyll
layout: post
permalink: /documentation/reference/
---

# Glossary

A comprehensive list of terms and definitions used throughout the EMO-BON project.

## Physical concepts

- **Partner**:  
An EMO BON member, which is typically but not exclusively an institute.  
- **Station**:  
An EMO BON Station. Stations collect EMO BON samples. Stations may have multiple observatories, and each observatory can involve contributions from one or more partners.  
- **Observatory**:  
An EMO BON organisational unit linked to the collection of a specific sample type (e.g. water column, soft sediment) from a fixed, pre-determined location. While *technically* an observatory is tied to a sample type, this distinction is often ignored in casual use since the observatory's base name (obs_id) is the same for all sample types.  
  - **Notes**: Definition may need an update once the ARMS units are fully incorporated in EMO BON.
- **Sampling event**:  
A sampling action performed at a particular observatory at a specific time, resulting in the collection of one or more samples.  
- **Material Sample**:  
Refers to a material sample collected during a sampling event. Each unique material sample has a unique material sample ID. Also used to refer to the sample material that was sequenced, where the physical sample no longer exists but it is virtually present via its sample ID.  

## Digital concepts

- **Logsheet**:  
The spreadsheets in which the observatories write their sample and event data. The source spreadsheets are on the EMO BON googledrive, from where they are harvested as CSV into EMOBON's GH space. The "transformed" logsheets are those that have been subjected to a date-range selection and a QC.  
- **EMO BON data**:  
Here we mean: the content of the logsheets, which are filled by the observatories to describe their collected samples; the sequences in ENA; the outputs from bioinformatics processing.  
  - **Notes**: And once ARMS units are incorporated, this will also include ARMS images.
- **EMO BON metadata**:  
Here we mean the data that is used specifically to describe EMO BON data, performing the function of allowing discovery, understanding, organising, cataloguing, etc. Metadata are recorded in the rocrate-metadata.json files; they are added to ENA accessions; they are in files in the EMO BON repos governance-data, sequencing-data, observatory-profile, among others.  
- **EMO BON record**:  
A digital representation of a sampling event, capturing the relevant data and metadata associated with it. There is no fixed idea of what is included in an EMO BON record, as that depends on the system that these records are being held in; for example, EMO BON records in EurOBIS and in Blue Cloud will not necessarily be the same.  
- **Catalogue asset**:  
The smallest unit of "EMOBON dataset" that goes into a dataset's metadata catalogue, i.e. a specific "EMO BON record" in a specific catalogue. Can be a single data file or a set of files.  
- **EMO BON Repository**:  
A GitHub repository* that contains EMO BON data and metadata.  
  **A GitHub repository* represents a storage location for files and their version history, managed using Git version control which allows users to track changes, collaborate with others, and maintain a complete record of the project's development over time.
- **EMO BON RO-Crate**:  
EMO BON ro-crates* contain data associated with: logsheets from observatories, MetaGOflow runs, sequencing metadata. Usually, our ro-crates are single repositories, but for some, one repository contains multiple ro-crates. A ro-crate is manifest via a ro-crate-metadata.json file.  
  **An Ro-crate* is a collection of data files, metadata, and contextual information that organizes research data in a structured format, enabling easy sharing, reuse, and understanding in both machine-readable and human-readable forms.
- **EM BON ro-crate-metadata.json**:  
A ro-crate-metadata.json file* that describes the contents of an EMO BON RO-Crate.  
  **A rocrate-metadata.json file* is a JSON-LD file that provides a detailed description of the contents and structure of an RO-Crate. It maps relationships between files and their metadata, ensuring traceability, context, and purpose for data within research workflows.
- **Sequence**:  
A DNA string. Specifically, we mean (raw) sequences as produced from the material samples by Genoscope and held on their cloud drive and then archived on ENA.  
- **processed sequences / OTUs / ASVs**:  
These are sequences that have been processed by a bioinformatics code to a stage where they can be/have been compared to taxonomic reference libraries.  
- **Stub**:  
N/A  

# URI namespace

<style>
table {
  width: 100%;
  margin: 3px 0;
}
</style>

Below is a comprehensive overview of the URI namespaces used within EMO-BON, including defined patterns for RO-profile, RO-Crate, and data entity URIs. While ensuring consistency and interoperability, these URI patterns are designed for dereferenceability and publication of EMO-BON Data as static content, (without reliance on a triple store).

### Overview
All entities in emo-bon follow a consistent URI pattern.  
Each URI begins with the base `http(s)://data.emobon.embrc.eu`
and is extended with a path segment specific to the entity type:


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
| Sampling event | `/observatory-{obs_id}-crate` | `/{env_package}/sampling/{sampling_event}` |  |
| Sample | `/observatory-{obs_id}-crate` | `/{env_package}/sample/{source_mat_id}` |  |
| Observation | `/observatory-{obs_id}-crate` | `/{env_package}/observation/{source_mat_id}` | `#{observedProperty}` |
|  |  |  |  |
| Taxon summary | `/analysis-results-{cluster}-crate` | `/{genoscopeID}/taxonomy-summary` |  |
| Functional annotation | `/analysis-results-{cluster}-crate` | `/{genoscopeID}/functional-annotation` | `#{annotationID}` |
|  |  |  |  |
| *batch* | `/sequencing-crate` | *`/shipment/batch/{batchID}`* |  |
| *sequence-run* | `/sequencing-crate` | *`/shipment/batch/{batchID}`* | *`#SequenceAnalysis`* |

Note - TODO - a similar overview could be useful for the most important external things we refer to
- ena entities by «accession no» :: `https://www.ebi.ac.uk/ena/browser/view/{accession no}` 
- S3 objects stored via dvc :: `https://TBD` 
- other?



---
# RO-Profiles
{: .no_toc_section }

RO-profiles encapsulate Research Object (RO) profiles that describe conformity to a fixed set of expectations for data structures. They ensure consistency in the way research data is formatted and provide practical assets such as templates, SHACL files, documentation, and other reference materials. Used as metadata descriptors for crates that comply with specific profile expectations, RO-profiles help standardize research data management. More information is available at: [Ro Crate profiles](https://www.researchobject.org/ro-crate/specification/1.2-DRAFT/profiles.html).
- **Creation & Management**:  
`https://github.com/emo-bon/{name}-profile`
- **URI Format**:  
`https://data.embon.embrc.eu/{name}-profile/{version}`
  - `{name}`:  observatory \| sequencing \| analysis-results 
  - `{version}`: `latest` or a specific version vM.m.p. (e.g., `v1.0.0`)

---
# RO-Crates
{: .no_toc_section }

Crates are structured data packages that encapsulate various types of research data. They serve as containers for datasets, metadata, and other related information, ensuring consistency, traceability, and compliance with RO-profiles. Within the EMO-BON ecosystem, we categorize crates into different types, each serving a specific purpose:

## Governance Crate
{: .no_toc_section }
- **Concept**:  
Contains information relating to the governance of EMO BON GitHub activities and actions.
- **URI Format**:  
`https://data.emobon.embrc.eu/governance-crate/`
- **Creation & Management**:  
`https://github.com/emo-bon/governance-crate/`

## Observatory Crate
{: .no_toc_section }
- **Concept**:  
Holds information about an EMOBON Observatory, its associated sampling events, and the data generated from those events.
- **Creation & Management**:  
`https://github.com/emo-bon/observatory-{obsid}-crate/`
- **URI Format**:  
`https://data.emobon.embrc.eu/observatory-{obsid}-crate`
  - `{obsid}` = ...


## Analysis-Results Crate
{: .no_toc_section }
- **Concept**:  
Holds information and data resulting from MetaGOFlow data analysis processes.
- **Creation & Management**:  
`https://github.com/emo-bon/analysis-results-{cluster}-crate/`
- **URI format**:  
`https://data.emobon.embrc.eu/analysis-results-{cluster}-crate/`
  - `{cluster}` = ...

## Sequencing Crate
{: .no_toc_section }
- **Concept**:  
Holds information and data resulting from sequencing runs.
- **Creation & Management**:  
`https://github.com/emo-bon/sequencing-crate`
- **URI format**:  
`https://data.emobon.embrc.eu/sequencing-crate`


---

# Data Entities
{: .no_toc_section }

The RDF-based triple files within each crate collectively form the EMO-BON data graph, with entities as its core components. Each entity has a unique URI and is defined by properties and connections to other entities. This ensures structured data, consistent referencing within the knowledge graph, and allows for efficient data retrieval and analysis within the EMO-BON ecosystem. Below is an overview of the primary entities, their roles, and their respective URI formats.

## Observatory
{: .no_toc_section }
- **Concept**:  
An EMO BON organisational unit linked to the collection of a specific sample type (e.g. water column, soft sediment) from a fixed, pre-determined location.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/observatory/{obs_id}`
  - `{obsid}`: ...
  - `{env_package}`: ...

## Sampling Event
{: .no_toc_section }
- **Concept**:  
A sampling action performed at a particular observatory at a specific time, resulting in the collection of one or more samples.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/sampling/{sampling_event}`
  - `{obsid}`: ...
  - `{env_package}`: ...
  - `{sampling_event}`: ...

## Sample
{: .no_toc_section }
- **Concept**:  
A material sample collected during a sampling event.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/measured/{source_mat_id}`
  - `{obsid}`: ...
  - `{env_package}`: ...
  - `{source_mat_id}`: ...

## Sample Replicate
{: .no_toc_section }
- **Concept**:  
A material sample collected during a sampling event.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/sampling/{source_mat_id}`
  - `{obsid}`: ...
  - `{env_package}`: ...
  - `{source_mat_id}`: ...

## Observation
{: .no_toc_section }
- **Concept**:  
A measurement or observations made from a sample.
- **URI Format**:  
`http://data.emobon.embrc.eu/observatory-{obs_id}-crate/{env_package}/measured/{source_mat_id}#{observedProperty}`
  - `{obsid}`: ...
  - `{env_package}`: ...
  - `{source_mat_id}`: ...
  - `{observedProperty}`: ...

## Batch 
{: .no_toc_section }
- **Concept**:  
...
- **URI Format**:  
`http://data.emobon.embrc.eu/shipment/batch/{batchID}`
  - `{batchID}`: ...

## Sequence Run
{: .no_toc_section }
- **Concept**:  
...
- **URI Format**:  
`http://data.emobon.embrc.eu/shipment/batch/{batchID}#SequenceAnalysis`
  - `{batchID}`:  ...

## Taxon
{: .no_toc_section }
- **Concept**:  
...
- **URI Format**:  
tbd  

## FunctionalAnnotation
{: .no_toc_section }
- **Concept**:  
...
- **URI Format**:  
tbd  


## Ontologies 

to contain a description of what we have in this are and where (/ns) they are published

## RO-Profiles

### analysis-results-profile

to describe our analysis-results profile + link to their ro-crate-topages & explain how conforming crates (and their gitrepos) are structured (i.e how content is organized in crate)

### observatory-profile

to describe our observatory profile + link to their ro-crate-topages & explain how conforming crates (and their gitrepos) are structured (i.e how content is organized in crate)

### sequencing-profile

to describe our sequencing profile + link to their ro-crate-topages & explain how conforming crates (and their gitrepos) are structured (i.e how content is organized in crate)

## Software Components

# Context
{: .no_toc_section }

* EMO BON = EMBRC Marine Omics Biodiversity Observation Network
* Environmental DNA (eDNA) metabarcoding is applied to samples taken at sea (either water or sediment)
* Species occurrences may be represented via RDF or DwC-A (species + location + time)

# Relating samples with observatories (Part I)
{: .no_toc_section }

Relevant repositories:

* https://github.com/emo-bon/governance-data
* https://github.com/emo-bon/repo-constructor-action

Samples are taken by [observatories](https://github.com/emo-bon/governance-data/blob/main/observatories.csv). Each observatory has an observatory id and an ENA project accession number (predefined). All observatories are grouped under a single ENA umbrella project number (predefined) PRJEB51688.

A single observatory may be operated by multiple [organizations](https://github.com/emo-bon/governance-data/blob/main/organisations.csv), for example the observatory identified by BPNS is operated by Ghent University (UGENT), Flanders Marine Institute (VLIZ), Royal Belgian Institute of Natural Sciences (RBINS) and Katholieke Universiteit Leuven (KULeuven).

A single observatory may take multiple samples. Therefore, each observatory maintains a list of samples taken (Google Sheets), along with their unique identifier (sample id) and other relevant attributes. These spreadsheets are known as "logsheets" (cfr. https://github.com/emo-bon/governance-data/blob/main/logsheets.csv).

In order to manage the observatories' data on GitHub, a repository is automatically constructed for each observatory via a GitHub action, [repo-constructor-action](https://github.com/emo-bon/repo-constructor-action), acting on the governance-data repository. More specifically, this action reads the `logsheets.csv` file and generates a repository with these properties:

* observatory id (repository name becomes observatory-{observatory_id}-crate)
* Google Sheets URLs
* RO-Crate profile URI
* Downstream GitHub action workflow (see Part II)

The properties are eventually stored in the newly created repo under `./config/workflow_properties.yml`

# Relating samples with observatories (Part II)
{: .no_toc_section }

Relevant repositories:

* https://github.com/emo-bon/observatory-bpns-crate
* https://github.com/emo-bon/observatory-profile

Once the observatory-{observatory_id}-crate repository is generated, a series of GitHub actions will be acting on it:

* [logsheet-downloader-action](https://github.com/emo-bon/logsheet-downloader-action): Downloads the spreadsheets from Google Sheets and stores them under the `./logsheets` folder, with each spreadsheet tab splitted out into a single CSV file. The download is scheduled to occur every 6 months.

* [data-quality-control-action](https://github.com/emo-bon/data-quality-control-action): Reads the `data_quality_control_threshold_date` from `./config/workflow_properties.yml` and runs a data quality control pipeline, repairing data where possible. Initially, the logsheets are filtered up to the threshold date and stored under `./logsheets-filtered`. Next, data rules and corresponding repairs are applied to the filtered data and the results are stored under `./logsheets-transformed`. Violations, errors and warnings are reported under `./data-quality-control`:
  
  * `dqc.csv`: Full list of data rule violations.
  * `logfile`: Full list of errors and warnings.
  * `report.csv`: Reduced list of data rule violations, with only the violations that can't be repaired automatically.

  Eventually, a GitHub issue is created, pointing the end user to the logfile and report.

* [rocrate-sembench-setup](https://github.com/vliz-be-opsci/rocrate-sembench-setup): Makes preparations for the next action, [semantify](https://github.com/vliz-be-opsci/semantify), by initializing a rocrate from a default profile if necessary and assembling the required files and variables into the `~sembench_data_cache` folder (i.e. files coming from the [observatory-profile](https://github.com/emo-bon/observatory-profile)) and `~sembench_kwargs.json` file, respectively. These steps are not handled by semantify, because we wanted to separate rocrate-specific logic from pysembench logic on a conceptual level. The utility files produced by this action and used by semantify are untracked via the `.gitignore`.

* _TODO_ [semantify](https://github.com/vliz-be-opsci/semantify):
  * generate ttl (with pysubyt task)
  * validate ttl (with pyshacl task)
  * generate ldes feed
  * create list of generated items for reuse by rocrate-validate

* _TODO: rocrate-validate_
  * validate
  * repair

* _TODO: rocrate-to-pages_

# Relating samples with sequencing runs
{: .no_toc_section }

Relevant repositories:

* https://github.com/emo-bon/sequencing-data
* https://github.com/emo-bon/sequencing-profile

Samples coming from several observatories are aggregated into a single batch by EMBRC and are sent to Genoscope for DNA sequencing. A batch thus consists of a list of sample identifiers.

For each sample in the batch, an ENA sample accession number needs to be generated and immutably stored

Genoscope will upload the sequencing data under a run accession number below the given sample accession number

_TODO ..._

# Relating samples with species occurrences
{: .no_toc_section }

_TODO_

* _metagoflow_
* _uses existing computational workflow profile_

# References
{: .no_toc_section }

* European Marine Biological Resource Centre (EMBRC)
* Resource Description Framework (RDF)
* Darwin Core Archive (DwC-A)
* European Nucleotide Archive (ENA)
* Research Object Crate (RO-Crate)