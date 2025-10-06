---
title: RO-Profiles
---

This section describes the RO-Crate profiles used in EMO-BON.

> *old text, relocated from data-products/crates/md*
> 
> ### RO-Crate Profiles
>
> EMO-BON defines specific profiles that describe the expected structure and content of different crate types:
> 
> - **Observatory Profile**: https://github.com/emo-bon/observatory-profile
> - **Analysis Results Profile**: (in development)
> - **Sequencing Profile**: (planned)
> 
> Profiles are themselves RO-Crates that formally describe the layout/structure of crates that declare conformance to them.

## What are RO-Profiles?

An RO-Profile is itself an RO-Crate that formally describes the layout and structure of other RO-Crates that declare conformance to it. Profiles ensure consistency and interoperability across EMO-BON data products.

## EMO-BON Profiles

### Observatory Profile

**Repository**: [https://github.com/emo-bon/observatory-profile](https://github.com/emo-bon/observatory-profile)

**URI**: https://data.emobon.embrc.eu/observatory-profile/latest/

**Purpose**: Defines the structure and required metadata for observatory crates.

**Key Components**:
- Logsheet structure and field definitions
- Sample metadata requirements
- Sampling event information
- Environmental measurement specifications
- Semantic templates for RDF generation

**Conforming Crates**: All `observatory-{obsid}-crate` repositories conform to this profile.

### Analysis Results Profile

**Status**: In development

**Purpose**: Will define the structure for analysis results crates.

**Planned Components**:
- Taxonomic annotation requirements
- Functional annotation specifications
- OTU/ASV data structure
- Links to source samples
- Large file handling guidelines

**Conforming Crates**: `analysis-results-{cluster}-crate` repositories will conform to this profile.

### Sequencing Profile

**Status**: Planned

**Purpose**: Will define the structure for sequencing metadata.

**Planned Components**:
- Batch information requirements
- Sequence run metadata
- Links to ENA accessions
- Sample-to-sequence mappings

**Conforming Crates**: The `sequencing-crate` repository will conform to this profile.

## Profile Structure

Each profile contains:

1. **Profile Metadata**: Information about the profile itself (version, description, etc.)
2. **Schema Definitions**: Formal specifications of required and optional fields
3. **Semantic Templates**: Templates for generating RDF triples from data
4. **Validation Rules**: SHACL shapes or other validation specifications
5. **Documentation**: Human-readable descriptions and examples

## Using Profiles

Profiles are used in the EMO-BON workflow to:

- **Initialize** new crates with the correct structure
- **Validate** crate contents against the profile requirements
- **Generate** RDF triples using the semantic templates
- **Document** the expected structure for manual crate creation

## Profile Versioning

Profiles follow semantic versioning (vM.m.p):
- **Major** version changes indicate breaking changes
- **Minor** version changes add new features backward-compatibly
- **Patch** version changes fix bugs or clarify documentation

The `latest` version always points to the most recent stable release.
