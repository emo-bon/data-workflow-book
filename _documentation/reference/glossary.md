---
title: Glossary
author: VLIZ OpenScience team
date: 2025-02-06
category: Jekyll
layout: post
---

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
