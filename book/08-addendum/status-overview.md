---
title: Status Overview
---

This section provides an overview of the status of various EMO-BON components and features.

## Infrastructure Status

### Production

| Component | Status | URL |
|-----------|--------|-----|
| Main Website | ✅ Live | https://data.emobon.embrc.eu/ |
| Observatory Crates | ✅ Live | Various |
| Governance Data | ✅ Live | https://github.com/emo-bon/governance-data |
| Observatory Profile | ✅ Live | https://data.emobon.embrc.eu/observatory-profile/latest/ |

### In Development

| Component | Status | Expected |
|-----------|--------|----------|
| Analysis Results Profile | 🚧 In Progress | TBD |
| Sequencing Crate | 🚧 Planned | TBD |
| Sequencing Profile | 🚧 Planned | TBD |
| Triple Store / SPARQL Endpoint | 🚧 In Development | TBD |
| UDAL Query Service | 🚧 Planned | TBD |

## GitHub Actions Status

### Operational

| Action | Repository | Status |
|--------|------------|--------|
| repo-constructor-action | [Link](https://github.com/emo-bon/repo-constructor-action) | ✅ Operational |
| logsheet-downloader-action | [Link](https://github.com/emo-bon/logsheet-downloader-action) | ✅ Operational |
| data-quality-control-action | [Link](https://github.com/emo-bon/data-quality-control-action) | ✅ Operational |
| rocrate-sembench-setup | [Link](https://github.com/vliz-be-opsci/rocrate-sembench-setup) | ✅ Operational |

### In Development

| Action | Repository | Status |
|--------|------------|--------|
| semantify | [Link](https://github.com/vliz-be-opsci/semantify) | 🚧 Partial |
| rocrate-validate | TBD | 🚧 Planned |
| rocrate-to-pages | TBD | 🚧 Planned |

## Data Products

### Available

- ✅ Observatory Crates with logsheet data
- ✅ RDF triples for samples and sampling events
- ✅ Observatory profile specifications
- ✅ Some analysis results (cluster-01)

### Planned

- 🚧 Complete sequencing metadata
- 🚧 Systematic analysis results for all samples
- 🚧 Integrated knowledge graph
- 🚧 Public SPARQL endpoint

## Features

### Implemented

| Feature | Description | Status |
|---------|-------------|--------|
| Logsheet Ingestion | Automated download from Google Sheets | ✅ Live |
| Data Quality Control | Validation and repair of logsheet data | ✅ Live |
| RO-Crate Generation | Creation of observatory crates | ✅ Live |
| GitHub Pages Publishing | Automated website deployment | ✅ Live |
| Large File Support (DVC) | Version control for large files | ✅ Live |

### In Progress

| Feature | Description | Status |
|---------|-------------|--------|
| RDF Generation | Complete semantic uplifting pipeline | 🚧 Partial |
| SHACL Validation | Validation of RDF triples | 🚧 In Development |
| LDES Feeds | Linked Data Event Streams | 🚧 Planned |
| Triple Store | Central knowledge graph | 🚧 In Development |

## Documentation

### Complete

- ✅ This handbook (migrated to MyST)
- ✅ Repository READMEs
- ✅ Action documentation

### Needs Update

- 🚧 Installation guides
- 🚧 Tutorial materials
- 🚧 API documentation

## Integration Points

### Active

| System | Type | Status |
|--------|------|--------|
| Google Sheets | Data Source | ✅ Connected |
| GitHub | Repository & CI/CD | ✅ Operational |
| ENA | Sequence Archive | ✅ Submitting |
| S3 | Large File Storage | ✅ Operational |

### Planned

| System | Type | Status |
|--------|------|--------|
| FAIR EASE IDDAS | Catalogue | 🚧 Planned |
| EurOBIS | Biodiversity Portal | 🚧 Planned |
| Blue Cloud | Data Platform | 🚧 Planned |

## Known Issues and Limitations

### Current Limitations

1. **SPARQL Endpoint**: Not yet publicly available
2. **Sequencing Logistics Crate**: Structure not finalized
3. **Analysis Results**: Not complete for all observatories
4. **URI Dereferenceability**: Some URIs not yet dereferenceable

### Planned Improvements

1. **Automation**: More automated workflows
2. **Validation**: Enhanced data validation
3. **Performance**: Optimization of processing
4. **Documentation**: More examples and tutorials

## Release Schedule

### Recent Releases

- **v1.0.0** (2024-Q1): Initial observatory crate workflow
- **v1.1.0** (2024-Q2): Data quality control improvements
- **v1.2.0** (2024-Q3): Enhanced RDF generation

### Upcoming

- **v2.0.0** (TBD): Complete semantic uplifting pipeline
- **v2.1.0** (TBD): SPARQL endpoint launch
- **v3.0.0** (TBD): Analysis results integration

## Contact for Status Updates

For questions about component status or roadmap:
- **Email**: opsci@vliz.be
- **GitHub Issues**: Use repository issue tracker
- **Documentation**: Check this handbook for updates

## Legend

- ✅ **Live/Operational**: Fully functional in production
- 🚧 **In Development**: Being actively developed
- 🚧 **Planned**: On roadmap but not yet started
- ❌ **Deprecated**: No longer supported
- ⚠️ **Issues Known**: Operational but with known limitations
