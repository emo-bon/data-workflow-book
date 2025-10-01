---
title: Conventions
---

This section describes naming and organizational conventions used in EMO-BON.

## GitHub Repository Conventions

### Naming

#### Use lowercase

Repository names should be in lowercase by default.

**Exception**: Use the original case for names with widely recognized case-sensitive formatting, such as:
- `MetaGOflow`
- `ROSKOGO` (e.g., in `observatory-ROSKOGO-crate`)

#### Use Kebab case

Separate words of repository names with dashes (-), instead of underscores (_), spaces, or CamelCase.

**Exception**: Dots (`.`) are allowed in domain-like constructs (e.g., GitHub suggests `emo-bon.github.io` as an entry point for `github.io` publications).

#### Avoid use of plurals

Avoid use of trailing `s` in folder and repository names, as they don't provide additional meaning — it's already clear that repositories can contain multiple items.

#### Provide essentials

Add a `README.md` making clear what the repo is intended for. Add a `LICENSE` to make sure others know about any constraints of reuse. We generally advise MIT for code, and CC-BY for data.

### Types of Repositories

EMO-BON uses repository naming suffixes to indicate the type and purpose:

| Repo suffix            | Description of this « Type of Repo »    |
|------------------------|-----------------------------------------|
| **\emo-bon.github.io** | Central repo building the web presence at https://data.emobon.embrc.eu/. From there many of the rest gets linked. |
| **\-crate**            | An actual RO-Crate holding data |
| **\-profile**          | An actual RO-Profile (a crate in its own right) that formally describes the layout/structure of the crates that declare conformance to it |
| **\-example**          | Indicative of playground nature of the repo. Can be combined with other suffixes (but should be the final one) |
| **\-book**             | A larger body of documentation. Grouped and organised with book theme and linked from the main website repo |
| **\-docker**           | Building up a docker-image. Ideally using CI/CD to publish that in [our space on ghcr.io](https://github.com/orgs/emo-bon/packages) |
| **\-action**           | A GitHub Action that can be reused across repositories |

### Repository Structure

All repositories should have:

```
repository/
├── README.md          # Overview and documentation
├── LICENSE            # License file
├── .gitignore         # Files to exclude from Git
├── CITATION.cff       # Citation metadata (optional)
└── .github/
    └── workflows/     # GitHub Actions workflows
```

## File Naming

### General Rules

- Use lowercase for file names
- Use kebab-case or snake_case consistently within a project
- Be descriptive but concise
- Include file extensions

### Data Files

- Use ISO 8601 dates: `YYYY-MM-DD` or `YYYYMMDD`
- Include version numbers when appropriate: `v1`, `v2`
- Indicate processing stage: `raw`, `filtered`, `transformed`

**Examples**:
- `logsheet-2023-06-15.csv`
- `taxonomy-summary-v2.tsv`
- `samples-filtered.csv`

### Documentation Files

- Use descriptive names: `installation-guide.md`
- Group related docs in folders
- Use consistent capitalization for README files

## Identifier Conventions

### Observatory IDs

Format: lowercase with hyphens

**Examples**:
- `bpns`
- `hcmr-1`
- `roskogo`

**Used In**:
- Repository names: `observatory-bpns-crate`
- URIs: `https://data.emobon.embrc.eu/observatory-bpns-crate`

### Sample IDs

Format: `EMOBON_{OBSERVATORY}_{TYPE}_{NUMBER}`

**Examples**:
- `EMOBON_BPNS_Wa_001`
- `EMOBON_HCMR-1_So_042`

**Components**:
- `EMOBON`: Project prefix
- `{OBSERVATORY}`: Observatory ID in uppercase
- `{TYPE}`: Sample type (Wa=water, So=sediment)
- `{NUMBER}`: Sequential number

### Sampling Event IDs

Format: `{OBSERVATORY}_{TYPE}_{YYMMDD}`

**Examples**:
- `BPNS_Wa_221027`
- `HCMR-1_So_230615`

## Branch Naming

### Main Branches

- `main`: Primary branch for production-ready code
- `gh-pages`: GitHub Pages deployment (auto-generated)

### Feature Branches

Format: `{type}/{description}`

**Types**:
- `feature/`: New features
- `fix/`: Bug fixes
- `docs/`: Documentation updates
- `chore/`: Maintenance tasks

**Examples**:
- `feature/add-qc-validation`
- `fix/logsheet-parser-bug`
- `docs/update-installation-guide`

## Commit Messages

### Format

```
<type>: <short summary>

<optional longer description>

<optional footer>
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

### Examples

```
feat: add SHACL validation to semantify action

Implements SHACL validation using pyshacl library.
Validation results are logged and issues created for failures.

Closes #42
```

```
fix: handle missing columns in logsheet parser

Gracefully handle cases where optional columns are missing
from input CSV files.
```

## License Conventions

### Code Repositories

**Recommended**: MIT License

Allows free use, modification, and distribution while protecting contributors.

### Data Repositories

**Recommended**: CC-BY-4.0 (Creative Commons Attribution)

Allows free use and redistribution with attribution.

### Profile Repositories

**Recommended**: CC-BY-4.0

Profiles are primarily documentation and specifications.

## Version Numbering

Follow Semantic Versioning (SemVer): `MAJOR.MINOR.PATCH`

- **MAJOR**: Breaking changes
- **MINOR**: New features (backward compatible)
- **PATCH**: Bug fixes (backward compatible)

**Examples**:
- `v1.0.0`: Initial stable release
- `v1.1.0`: Added new feature
- `v1.1.1`: Fixed bug
- `v2.0.0`: Breaking change

## Documentation Conventions

### Markdown

- Use ATX-style headers (`#` not underlines)
- Use fenced code blocks with language specifiers
- Use meaningful link text (not "click here")
- Use relative links for internal references

### Structure

```markdown
---
title: Page Title
---

# Page Title

Brief introduction.

## Section 1

Content...

## Section 2

Content...
```

### Examples

Provide examples for:
- Complex concepts
- API usage
- Configuration
- Common tasks

## Metadata Conventions

### RO-Crate Metadata

- Use schema.org terms when available
- Use established ontologies (SOSA, DublinCore)
- Define custom terms in EMO-BON namespace
- Provide human-readable labels

### Dates and Times

Use ISO 8601 format:
- Date: `YYYY-MM-DD`
- DateTime: `YYYY-MM-DDTHH:MM:SSZ`
- Time period: `YYYY-MM-DD/YYYY-MM-DD`

### Geographic Coordinates

- Latitude/Longitude in decimal degrees
- Use WGS84 coordinate reference system
- Include precision information
