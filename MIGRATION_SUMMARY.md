# Migration Summary: Jekyll to MyST

This document summarizes the migration from Jekyll GitBook to MyST Markdown.

## What Was Changed

### Added Files
- `book/` directory - Complete MyST book structure
- `book/myst.yml` - Book configuration with TOC
- `requirements.txt` - Python dependencies
- `.github/workflows/deploy.yml` - GitHub Actions deployment workflow
- 29 markdown chapter files organized into 9 sections

### Removed Files
- `_config.yml` - Jekyll configuration
- `_includes/`, `_layouts/` - Jekyll templates
- `_documentation/`, `_contributions/`, `_others/` - Old content directories
- `assets/` - Jekyll assets
- `Gemfile`, `Gemfile.lock` - Ruby dependencies
- `404.html` - Jekyll 404 page

### Preserved Files
- `CNAME` - Custom domain configuration (data.emobon.embrc.eu)
- `LICENSE` - Project license
- `README.md` - Updated with new build instructions

### Modified Files
- `.gitignore` - Updated for MyST build artifacts
- `README.md` - Rewritten for MyST setup

## Content Migration

### From `_documentation/systems-overview/index.md`
Migrated to:
- `book/02-data-management-flow/infographic-on-data-flow.md`
- `book/02-data-management-flow/data-ingestion-processes.md`
- `book/02-data-management-flow/qc-processes.md`
- `book/02-data-management-flow/kg-building.md`
- `book/02-data-management-flow/udal-queries.md`

### From `_documentation/conventions/index.md`
Migrated to:
- `book/08-addendum/conventions.md`

### From `_documentation/reference/index.md`
Migrated to:
- `book/08-addendum/glossary.md` (Physical and Digital concepts)
- `book/05-data-graph/uri-namespace.md` (URI namespace section)
- `book/05-data-graph/entities.md` (Entity descriptions)
- `book/07-technical-details/software-components.md` (Software components section)

### New Content Created
Based on the TOC from issue #2, created placeholder/structure files:
- Introduction chapters (what this book aims to clarify, navigation guide)
- Data sources chapters
- Data products chapter (crates)
- Conformance chapters (RO-profiles, ontologies)
- Technical details chapters (publication, orchestration, deployments, large files, ENA)
- Addendum chapters (best practices, status overview)
- Data paper section

## Book Structure

The new book follows this organization (from issue #2):

1. **Introduction**
   - What this book aims to clarify
   - Graphic navigation guide

2. **Data Management Flow**
   - Infographic on data flow
   - Data ingestion processes
   - QC processes
   - KG building (semantic uplifting)
   - UDAL queries

3. **Data Sources**
   - Which data sources
   - Where are they available

4. **Data Products**
   - Crates (RO-Crates)

5. **Data Graph**
   - Entities
   - URI namespace

6. **Conformance**
   - RO-Profiles
   - Ontologies

7. **Technical Details**
   - Software components
   - Publication details
   - Process orchestration
   - GitHub deployments
   - Large file support (DVC, S3)
   - External storage (ENA)

8. **Addendum**
   - Best practices
   - Conventions
   - Glossary
   - Status overview

9. **Data Paper**
   - Placeholder for future content

## Build Process

### Old (Jekyll)
- Used Jekyll with remote theme `sighingnow/jekyll-gitbook`
- Built with Ruby/Bundler
- Deployed to GitHub Pages

### New (MyST)
- Uses MyST Markdown
- Requires Python 3.11+ and Node.js 18+
- Builds with `myst build --html`
- Deploys to GitHub Pages via GitHub Actions

## Deployment

The GitHub Actions workflow (`.github/workflows/deploy.yml`):
1. Checks out code
2. Sets up Python 3.11
3. Installs pip dependencies
4. Sets up Node.js 18
5. Installs MyST Markdown
6. Builds HTML: `cd book && myst build --html`
7. Uploads artifact to GitHub Pages
8. Deploys to https://data.emobon.embrc.eu/data-workflow-book/

## Next Steps

1. Merge this PR to main branch
2. GitHub Actions will automatically build and deploy
3. Verify the deployed site at https://data.emobon.embrc.eu/data-workflow-book/
4. Update any external links pointing to old content
5. Continue adding content to placeholder sections

## Testing

Local testing requires:
```bash
pip install -r requirements.txt
npm install -g mystmd
cd book
myst build --html
```

Note: Building requires internet access to download MyST theme templates.

## Compatibility

- **Breaking Change**: URLs may change. The new structure uses different paths.
- **Benefits**: 
  - Better TOC management (addresses the original issue)
  - Modern markdown with MyST features (admonitions, figures, etc.)
  - Jupyter notebook support (for future interactive content)
  - Better cross-referencing

## References

- Template repository: https://github.com/fair-ease/book-ocean-bgc
- MyST documentation: https://mystmd.org/
- Original issue: https://github.com/emo-bon/data-workflow-book/issues/2
