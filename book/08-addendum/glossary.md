---
title: Glossary
---

A comprehensive list of terms and definitions used throughout the EMO-BON project.

## Terms - physical concepts

- ### Partner
    An EMO-BON member, which is typically but not exclusively an institute.

- ### Station
     A station is owned only by one partner, but partners can have multiple stations. A station is defined by a location - latitute, longitude, and a maximum depth. A station is defined by the value obs_id set in the EMO BON logsheets

- ### Observatory
    An EMO-BON organisational unit linked to the collection of a specific sample type from a station. A station can have multiple observatories. The sample types are: water, sediment, and hard bottom. For the hard bottom, which is collected via ARMS units, each unit is a separate observatory.

> Definition may need an update once the ARMS units are fully incorporated in EMO-BON.

- ### Sampling Event
    A sampling action performed at a particular observatory at a specific time, resulting in the collection of one or more samples and measurements.

- ### Material Sample
    Refers to a material sample collected during a sampling event. Each unique material sample has a unique material sample ID. Also used to refer to the sample material that was sequenced, where the physical sample no longer exists but it is virtually present via its sample ID.

## Terms - digital concepts 

- ### Logsheet
    The spreadsheets in which the observatories write their sample and event data. The source spreadsheets are on the EMO-BON Google Drive, from where they are harvested as CSV into EMO-BON's GitHub space. The "transformed" logsheets are those that have been subjected to a date-range selection and a QC.

- ### EMO-BON Data
    The content of the logsheets, which are filled by the observatories to describe their collected samples; the sequences in ENA (https://www.ebi.ac.uk/ena/browser/home); the outputs from bioinformatics processing.

> Once ARMS units are incorporated, this will also include ARMS images.

- ### EMO-BON Metadata
    The data that is used specifically to describe EMO-BON data, performing the function of allowing discovery, understanding, organising, cataloguing, etc. Metadata are recorded in the ro-crate-metadata.json files; they are added to ENA accessions; they are in files in the EMO-BON repos governance-data, sequencing-data, observatory-profile, among others.

- ### EMO-BON Record
    A digital representation of a sampling event, capturing the relevant data and metadata associated with it. There is no fixed idea of what is included in an EMO-BON record, as that depends on the system that these records are being held in.

- ### Catalogue Asset
    The smallest unit of "EMO-BON dataset" that goes into a dataset's metadata catalogue, i.e., a specific "EMO-BON record" in a specific catalogue. Can be a single data file or a set of files.

- ### EMO-BON Repository
    A GitHub repository that contains EMO-BON data and metadata.

    A GitHub repository represents a storage location for files and their version history, managed using Git version control which allows users to track changes, collaborate with others, and maintain a complete record of the project's development over time.

- ### EMO-BON RO-Crate
    EMO-BON RO-Crates contain data associated with: logsheets from observatories, MetaGOflow runs, sequencing metadata. Usually, our RO-Crates are single repositories, but for some, one repository contains multiple RO-Crates. An RO-Crate is manifest via a ro-crate-metadata.json file.

    An RO-Crate is a collection of data files, metadata, and contextual information that organizes research data in a structured format, enabling easy sharing, reuse, and understanding in both machine-readable and human-readable forms.

- ### ro-crate-metadata.json
    A ro-crate-metadata.json file that describes the contents of an EMO-BON RO-Crate.

    A ro-crate-metadata.json file is a JSON-LD file that provides a detailed description of the contents and structure of an RO-Crate. It maps relationships between files and their metadata, ensuring traceability, context, and purpose for data within research workflows.

- ### Sequence
    A DNA string. Specifically, we mean (raw) sequences as produced from the material samples by Genoscope and held on their cloud drive and then archived on ENA (https://www.ebi.ac.uk/ena/browser/home).

- ### Processed Sequences / OTUs / ASVs
    These are sequences that have been processed by a bioinformatics code to a stage where they can be/have been compared to taxonomic reference libraries.

- **OTU**: 
    Operational Taxonomic Unit - a group of similar sequences
- **ASV**: 
    Amplicon Sequence Variant - unique biological sequences

## Technical Terms

- ### GitHub Actions
    An automation and CI/CD platform built into GitHub that allows workflows to be triggered by repository events.

- ### DVC (Data Version Control)
    A version control system for data and machine learning models that works alongside Git, storing large files in remote storage while tracking metadata in Git.

- ### SPARQL
    A query language for RDF databases, used to query the EMO-BON knowledge graph.

- ### RDF (Resource Description Framework)
    A standard for representing information about resources in the form of subject-predicate-object triples.

- ### Turtle (TTL)
    A textual syntax for RDF that is more human-readable than other RDF formats.

- ### SHACL (Shapes Constraint Language)
    A language for validating RDF data against a set of conditions (shapes).

- ### JSON-LD (JSON for Linking Data)
    A JSON-based format for representing linked data, used in ro-crate-metadata.json files.

- ### ENA (European Nucleotide Archive)
    One of the world's primary repositories for nucleotide sequence data, operated by EMBL-EBI.

- ### MetaGOflow
    A bioinformatics workflow for processing metagenomic and metabarcoding sequence data (https://doi.org/10.1093/gigascience/giad078).

- ### UDAL (Universal Data Access Layer)
    A unified interface for querying EMO-BON data across different sources and formats.

- ### S3 (Simple Storage Service)
    Amazon's object storage service, used by EMO-BON for storing large data files.

## Acronyms

| Acronym  | Meaning                                                   |
|----------|-----------------------------------------------------------|
| ARMS     | Autonomous Reef Monitoring Structures                     |
| ASV      | Amplicon Sequence Variant                                 |
| CI/CD    | Continuous Integration / Continuous Deployment            |
| CSV      | Comma-Separated Values                                    |
| DVC      | Data Version Control                                      |
| eDNA     | Environmental DNA                                         |
| EMBRC    | European Marine Biological Resource Centre                |
| EMO-BON  | European Marine Omics Biodiversity Observation Network    |
| ENA      | European Nucleotide Archive                               |
| GH       | GitHub                                                    |
| JSON-LD  | JSON for Linking Data                                     |
| OTU      | Operational Taxonomic Unit                                |
| QC       | Quality Control                                           |
| RDF      | Resource Description Framework                            |
| RO-Crate | Research Object Crate                                     |
| S3       | Simple Storage Service                                    |
| SHACL    | Shapes Constraint Language                                |
| SOSA     | Sensor, Observation, Sample, and Actuator                 |
| SPARQL   | SPARQL Protocol and RDF Query Language                    |
| TTL      | Turtle (RDF format)                                       |
| UDAL     | Universal Data Access Layer                               |
| URI      | Uniform Resource Identifier                               |
| VRE      | Virtual Research Environment                              |

