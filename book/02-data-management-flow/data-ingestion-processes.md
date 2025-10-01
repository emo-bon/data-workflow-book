---
title: Data Ingestion Processes
---

This section describes how data enters the EMO-BON system.

## Observatory Data Ingestion

### Logsheet Downloader Action

The [logsheet-downloader-action](https://github.com/emo-bon/logsheet-downloader-action) downloads spreadsheets from Google Sheets and stores them under the `./logsheets` folder, with each spreadsheet tab split out into a single CSV file. The download is scheduled to occur every 6 months.

### Relating Samples with Observatories

A single observatory may take multiple samples. Therefore, each observatory maintains a list of samples taken (Google Sheets), along with their unique identifier (sample id) and other relevant attributes. These spreadsheets are known as "logsheets" (see https://github.com/emo-bon/governance-data/blob/main/logsheets.csv).

### Repository Construction

In order to manage the observatories' data on GitHub, a repository is automatically constructed for each observatory via a GitHub action, [repo-constructor-action](https://github.com/emo-bon/repo-constructor-action), acting on the governance-data repository. 

More specifically, this action reads the `logsheets.csv` file and generates a repository with these properties:

- Observatory id (repository name becomes observatory-{observatory_id}-crate)
- Google Sheets URLs
- RO-Crate profile URI
- Downstream GitHub action workflow

The properties are eventually stored in the newly created repo under `./config/workflow_properties.yml`

## Sequence Data Ingestion

Sequence data follows a specific workflow:

### Registration into Sequence Crate
- Process for registering sequences into sequence crate
- Automation and validation checks

### ENA Submission
- How sequences end up at ENA (European Nucleotide Archive)
- Agreements with GENOSCOPE
