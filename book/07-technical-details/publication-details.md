---
title: Publication Details
---

This section describes how EMO-BON data and documentation are published.

## W3ID.org Persistent Identifiers

EMO-BON uses W3ID.org for persistent identifiers.

**Purpose**: Provide stable, long-term URIs that won't break if hosting infrastructure changes.

**Usage**: 
- Ontology namespaces
- Profile URIs
- Key entity identifiers

**Example**: `https://w3id.org/emobon/` may redirect to `https://data.emobon.embrc.eu/`

## GitHub Pages

EMO-BON uses GitHub Pages for publishing static content.

### Main Website

**Repository**: emo-bon.github.io

**URL**: https://data.emobon.embrc.eu/

**Purpose**: Central entry point for EMO-BON data

**Content**:
- Links to all observatories
- Documentation
- Data catalog
- Project information

**Custom Domain**: Configured via CNAME file to use `data.emobon.embrc.eu`

### Observatory Crate Sites

**Pattern**: `observatory-{obsid}-crate` → `https://data.emobon.embrc.eu/observatory-{obsid}-crate/`

**Purpose**: Human-readable views of observatory data

**Content**:
- Sample listings
- Sampling events
- Environmental measurements
- Downloadable data files

### Profile Sites

**Pattern**: `{name}-profile` → `https://data.emobon.embrc.eu/{name}-profile/`

**Purpose**: Documentation of RO-Crate profiles

**Content**:
- Profile specifications
- Field definitions
- Semantic templates
- Examples

### Documentation Books

**Pattern**: `{name}-book` → `https://data.emobon.embrc.eu/{name}-book/`

**Purpose**: Comprehensive documentation (like this book)

**Technology**: MyST Markdown (formerly Jekyll/GitBook)

## GitHub Repository Structure

All EMO-BON repositories follow consistent patterns:

### Public Repositories

All EMO-BON repositories are public by default to support open science principles.

### Repository Naming

See the [Conventions](../08-addendum/conventions.md) section for naming guidelines.

### Repository Types

- **-crate**: RO-Crate data repositories
- **-profile**: RO-Profile specifications
- **-action**: GitHub Actions
- **-docker**: Docker images
- **-book**: Documentation books
- **.github.io**: GitHub Pages sites

## Publishing Workflow

### Automated Publishing

1. **Data Changes**: Logsheet updates trigger workflow
2. **Processing**: GitHub Actions process data
3. **Generation**: RO-Crate and HTML generated
4. **Deployment**: Pushed to gh-pages branch
5. **Publication**: GitHub Pages serves updated content

### Manual Publishing

For documentation and profiles:
1. **Edit**: Make changes in main branch
2. **Review**: Pull request review process
3. **Merge**: Merge to main
4. **Build**: GitHub Actions build site
5. **Deploy**: Deployed to GitHub Pages

## Custom Domain Configuration

EMO-BON uses the custom domain `data.emobon.embrc.eu`:

1. **CNAME File**: Each repository has a CNAME file in the root
2. **DNS Configuration**: EMBRC manages DNS settings
3. **GitHub Configuration**: Repository settings point to custom domain
4. **HTTPS**: Automatic HTTPS via GitHub Pages

## Content Delivery

### Static Files

- HTML pages
- CSS stylesheets
- JavaScript for interactivity
- Images and media

### Data Files

- CSV exports
- RDF/Turtle files
- JSON-LD metadata
- Downloadable datasets

### API Endpoints

- SPARQL endpoint (when available)
- GitHub API for repository access
- UDAL query service (in development)

## Versioning and Archival

### Git Versioning

- All content versioned in Git
- Full history preserved
- Tags for releases

### DOIs

EMO-BON datasets may receive DOIs for citation:
- Zenodo integration for releases
- Per-observatory or per-analysis DOIs

### Long-term Preservation

- GitHub provides backup
- Periodic exports to archives
- Integration with institutional repositories
