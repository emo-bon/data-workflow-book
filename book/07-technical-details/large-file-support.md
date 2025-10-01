---
title: Large File Support (DVC, S3)
---

This section describes how EMO-BON handles large data files.

## The Challenge

Git is designed for text and source code, not large binary files. EMO-BON analysis results often include:
- Large sequence files
- Processed datasets
- Analysis outputs
- Binary data

These files are too large for Git and would bloat repositories.

## DVC (Data Version Control)

EMO-BON uses DVC to manage large files.

### What is DVC?

DVC is a version control system for data. It:
- Tracks large files without storing them in Git
- Stores metadata in Git (small .dvc files)
- Stores actual data in remote storage (S3)
- Maintains version history
- Enables reproducible workflows

### How DVC Works

1. **Add Large File**: `dvc add large_file.csv`
   - Creates `large_file.csv.dvc` (metadata)
   - Adds `large_file.csv` to `.gitignore`
   
2. **Commit Metadata**: `git add large_file.csv.dvc`
   - Git tracks the small .dvc file
   - Actual data not in Git

3. **Push Data**: `dvc push`
   - Uploads data to S3
   - S3 stores the actual file

4. **Pull Data**: `dvc pull`
   - Downloads data from S3
   - Restores files locally

### DVC Configuration

In `.dvc/config`:
```ini
[remote "s3-storage"]
    url = s3://emobon-data/analysis-results
    region = eu-west-1

[core]
    remote = s3-storage
```

### DVC in Workflows

GitHub Actions can use DVC:
```yaml
steps:
  - name: Setup DVC
    uses: iterative/setup-dvc@v1
    
  - name: Pull data
    run: dvc pull
    env:
      AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
      AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```

## S3 Storage

EMO-BON uses Amazon S3 (Simple Storage Service) for large file storage.

### Bucket Structure

```
emobon-data/
├── analysis-results/
│   ├── cluster-01/
│   │   ├── taxonomy-summary.tsv
│   │   ├── functional-annotation.tsv
│   │   └── ...
│   └── cluster-02/
└── sequences/
    └── raw/
```

### Access Control

- **Public**: Some datasets are publicly accessible
- **Private**: Sensitive data has restricted access
- **IAM**: AWS IAM controls access permissions

### Storage Classes

- **Standard**: Frequently accessed data
- **Infrequent Access**: Archived data
- **Glacier**: Long-term preservation

## Using Large Files

### In Analysis Results Crates

1. **Generate Large Files**: MetaGOflow produces outputs
2. **Add to DVC**: `dvc add results/*.tsv`
3. **Commit Metadata**: Git tracks .dvc files
4. **Push to S3**: `dvc push`
5. **Reference in RO-Crate**: Metadata links to S3 URLs

### Accessing Data

Users can access large files:
- **Via DVC**: Clone repo, run `dvc pull`
- **Direct Download**: S3 URLs in metadata
- **Web Interface**: Links in GitHub Pages sites

### Example

In ro-crate-metadata.json:
```json
{
  "@id": "taxonomy-summary.tsv",
  "name": "Taxonomic Summary",
  "contentUrl": "s3://emobon-data/analysis-results/cluster-01/taxonomy-summary.tsv",
  "encodingFormat": "text/tab-separated-values",
  "contentSize": "524288000"
}
```

## Best Practices

### When to Use DVC

Use DVC for files that are:
- Larger than 10 MB
- Binary formats
- Frequently updated
- Part of reproducible workflows

### Don't Use DVC For

- Source code (use Git)
- Small text files (use Git)
- Configuration files (use Git)
- Documentation (use Git)

### File Organization

```
repository/
├── .dvc/           # DVC configuration
├── data/
│   ├── raw.csv.dvc # DVC metadata
│   └── .gitignore  # Ignore actual data files
├── src/            # Source code (in Git)
└── README.md       # Documentation (in Git)
```

## Performance Optimization

### Caching

DVC caches data locally:
- Faster access to frequently used files
- Avoids redundant downloads
- Shared cache across projects

### Partial Downloads

DVC can download only needed files:
```bash
dvc pull data/subset.csv.dvc
```

### Compression

Large text files are compressed before upload:
- Reduces storage costs
- Faster transfers
- Transparent to users

## Monitoring and Costs

### Storage Usage

- Monitor S3 bucket size
- Track costs per repository
- Lifecycle policies for old data

### Transfer Costs

- Minimize redundant uploads/downloads
- Use caching effectively
- Compress data when possible

## Backup and Recovery

### Redundancy

- S3 provides automatic redundancy
- Data replicated across availability zones
- 99.999999999% (11 9's) durability

### Versioning

- S3 versioning enabled
- Can recover previous versions
- Protection against accidental deletion

### Disaster Recovery

- Regular backups to separate bucket
- Cross-region replication
- Export to institutional archives
