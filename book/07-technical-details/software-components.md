---
title: Software Components
---

This section describes the software components that power the EMO-BON data workflow.

## GitHub Actions

EMO-BON uses GitHub Actions extensively for automation:

### Repository Constructor

**Repository**: [repo-constructor-action](https://github.com/emo-bon/repo-constructor-action)

**Purpose**: Automatically creates observatory crate repositories from governance data.

**Triggers**: Changes to `logsheets.csv` in governance-data repository

**What it does**:
- Reads observatory information from `logsheets.csv`
- Creates new repository with naming pattern `observatory-{obsid}-crate`
- Sets up initial configuration in `./config/workflow_properties.yml`
- Configures downstream GitHub Actions workflows

### Logsheet Downloader

**Repository**: [logsheet-downloader-action](https://github.com/emo-bon/logsheet-downloader-action)

**Purpose**: Downloads spreadsheets from Google Sheets as CSV files.

**Schedule**: Every 6 months

**What it does**:
- Fetches data from Google Sheets URLs configured in repository
- Splits multi-tab spreadsheets into separate CSV files
- Stores files in `./logsheets` folder
- Commits changes to repository

### Data Quality Control

**Repository**: [data-quality-control-action](https://github.com/emo-bon/data-quality-control-action)

**Purpose**: Validates and repairs logsheet data.

**What it does**:
- Reads `data_quality_control_threshold_date` from configuration
- Filters logsheets up to threshold date → `./logsheets-filtered`
- Applies data rules and repairs → `./logsheets-transformed`
- Reports violations in:
  - `./data-quality-control/dqc.csv`: Full list of violations
  - `./data-quality-control/logfile`: Errors and warnings
  - `./data-quality-control/report.csv`: Violations that can't be auto-repaired
- Creates GitHub issue with results

### RO-Crate SemBench Setup

**Repository**: [rocrate-sembench-setup](https://github.com/vliz-be-opsci/rocrate-sembench-setup)

**Purpose**: Prepares for semantic uplifting.

**What it does**:
- Initializes RO-Crate from profile if needed
- Assembles required files into `~sembench_data_cache` folder
- Creates `~sembench_kwargs.json` with configuration
- Separates RO-Crate logic from semantic processing logic

### Semantify

**Repository**: [semantify](https://github.com/vliz-be-opsci/semantify)

**Purpose**: Generates RDF triples from structured data.

**What it does**:
- Generates TTL (Turtle) files using pysubyt task
- Validates TTL using pyshacl task
- Generates LDES feed
- Creates list of generated items for validation

### RO-Crate Validate

**Purpose**: Validates RO-Crate structure and content.

**Status**: In development

**What it will do**:
- Validate crate against profile
- Repair issues where possible
- Report validation results

### RO-Crate to Pages

**Purpose**: Generates GitHub Pages site from RO-Crate.

**Status**: In development

**What it will do**:
- Convert RO-Crate metadata to HTML
- Generate human-readable documentation
- Publish to GitHub Pages

## Analysis Tools

### MetaGOflow

**Purpose**: Bioinformatics workflow for sequence analysis.

**What it does**:
- Processes raw sequences
- Performs quality control
- Generates OTUs/ASVs
- Produces taxonomic and functional annotations

### Post-Processing Tools

**Purpose**: Semantic uplifting of analysis results.

**Implementation**: Dockerized processes

**What they do**:
- Transform MetaGOflow outputs to RDF
- Link results to source samples
- Generate RO-Crate metadata

## Data Management Tools

### DVC (Data Version Control)

**Purpose**: Version control for large data files.

**Usage**: Managing large files in analysis results crates

**What it does**:
- Tracks large files without storing them in Git
- Stores actual files in S3 storage
- Maintains file versions and lineage

### Python Packages

- **pysubyt**: Template-based RDF generation
- **pyshacl**: SHACL validation
- **pysembench**: Semantic benchmarking and processing

## Infrastructure Tools

### Docker

**Usage**: Containerizing workflows and services

**Key Images** (published to [ghcr.io](https://github.com/orgs/emo-bon/packages)):
- Semantic uplifting tools
- Triple store harvesting
- Catalog integration

### Triple Store

**Purpose**: Store and query the EMO-BON knowledge graph.

**Implementation**: Dockerized stack

**Features**:
- Harvests RDF from all EMO-BON crates
- Exposes SPARQL endpoint
- Supports complex queries across all data

### GitHub Pages

**Purpose**: Static site hosting for documentation and data views.

**Usage**:
- Main website: emo-bon.github.io
- Individual crate websites
- This documentation book

## Development Tools

### Git

**Purpose**: Version control for all repositories.

**Branch Strategy**: Main branch for stable releases, feature branches for development

### GitHub

**Purpose**: Repository hosting, issue tracking, project management, CI/CD.

**Features Used**:
- Repositories
- Actions (CI/CD)
- Pages (hosting)
- Issues (tracking)
- Projects (planning)
