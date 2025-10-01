---
title: Process Orchestration
---

This section describes how EMO-BON workflows are orchestrated.

## GitHub Actions Workflows

EMO-BON uses GitHub Actions as the primary orchestration engine.

### Workflow Triggers

Workflows can be triggered by:

1. **Schedule**: Periodic execution (e.g., every 6 months for logsheet download)
2. **Push**: Code or data changes
3. **Pull Request**: Validation before merge
4. **Manual**: Workflow dispatch for on-demand execution
5. **Repository Dispatch**: Triggered by other repositories or external events

### Workflow Configuration

Workflows are defined in `.github/workflows/` directory using YAML files.

**Example Structure**:
```yaml
name: Process Logsheets
on:
  schedule:
    - cron: '0 0 1 */6 *'  # Every 6 months
  workflow_dispatch:        # Manual trigger
jobs:
  download:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: emo-bon/logsheet-downloader-action@v1
```

## Workflow Chains

EMO-BON workflows often chain together:

### Observatory Crate Workflow

1. **Logsheet Downloader** → Downloads from Google Sheets
2. **Data Quality Control** → Validates and repairs data
3. **RO-Crate SemBench Setup** → Prepares for semantic uplifting
4. **Semantify** → Generates RDF triples
5. **RO-Crate Validate** → Validates structure
6. **RO-Crate to Pages** → Publishes to GitHub Pages

### Governance Workflow

1. **Monitor logsheets.csv** → Detects new observatories
2. **Repository Constructor** → Creates new observatory repository
3. **Configure Workflows** → Sets up actions in new repository

### Analysis Results Workflow

1. **MetaGOflow Execution** → Analyzes sequences
2. **Post-Processing** → Transforms outputs
3. **Semantic Uplifting** → Generates RDF
4. **DVC Push** → Stores large files in S3
5. **RO-Crate Generation** → Creates metadata
6. **Publication** → Deploys to GitHub Pages

## PySemBench

PySemBench is a Python framework for semantic data processing.

### Components

- **Tasks**: Modular processing units
- **Pipelines**: Sequences of tasks
- **Templates**: For RDF generation

### Integration with GitHub Actions

PySemBench tasks are wrapped in GitHub Actions for:
- Consistent execution environment
- Dependency management
- Error handling and reporting

### Key Tasks

1. **pysubyt**: Template-based RDF generation
2. **pyshacl**: SHACL validation
3. **harvest**: Data collection from sources

## Coordination Patterns

### Event-Driven

- Changes in one repository trigger actions in others
- Example: Updating governance-data triggers observatory crate updates

### Scheduled

- Regular periodic execution
- Example: Logsheet downloads every 6 months

### Manual Intervention

- Some workflows require human approval
- Example: Creating GitHub issues for QC violations

## Error Handling

### Failure Notifications

- GitHub Actions send notifications on failure
- Issues created automatically for certain errors
- Email alerts to maintainers

### Retry Logic

- Workflows can retry failed steps
- Exponential backoff for transient failures
- Manual re-run for persistent issues

### Rollback

- Git history allows reverting changes
- Failed deployments don't affect production
- Validation before publication

## Monitoring and Logging

### GitHub Actions Logs

- Detailed logs for each workflow run
- Searchable and downloadable
- Retained for debugging

### Status Badges

- README files show workflow status
- Quick visibility of health

### Metrics

- Workflow execution times
- Success/failure rates
- Resource usage

## Future Enhancements

### Planned Improvements

- More sophisticated error recovery
- Better inter-repository coordination
- Automated testing of workflows
- Performance optimization
