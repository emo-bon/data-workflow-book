---
title: GitHub Deployments
---

This section describes EMO-BON's deployment strategy using GitHub infrastructure.

## Deployment Architecture

EMO-BON uses GitHub's infrastructure for:
- Code hosting (repositories)
- Automation (GitHub Actions)
- Static site hosting (GitHub Pages)
- Package registry (GitHub Container Registry)

## Repository Deployment Patterns

### Main Branch Deployment

**Pattern**: Changes to main branch trigger deployment

**Used For**:
- Documentation sites
- Profile repositories
- Static content

**Process**:
1. Changes merged to main
2. GitHub Action triggered
3. Site built
4. Deployed to gh-pages branch
5. GitHub Pages serves content

### Release-Based Deployment

**Pattern**: Tagged releases trigger deployment

**Used For**:
- Versioned profiles
- Stable data snapshots
- Docker images

**Process**:
1. Create release tag (e.g., v1.2.3)
2. GitHub Action triggered
3. Build and test
4. Deploy to appropriate location
5. Update "latest" pointer

## GitHub Pages Configuration

### Repository Settings

Each repository that publishes to GitHub Pages requires:
- Pages enabled in settings
- Source set to gh-pages branch
- Custom domain configured (if applicable)
- HTTPS enforced

### Build Process

**For MyST Books**:
```yaml
steps:
  - Install Python and Node.js
  - Install MyST Markdown
  - Build HTML: myst build --html
  - Upload artifact
  - Deploy to GitHub Pages
```

**For RO-Crate Sites**:
```yaml
steps:
  - Generate HTML from RO-Crate
  - Copy static assets
  - Upload artifact
  - Deploy to GitHub Pages
```

## GitHub Container Registry

EMO-BON publishes Docker images to GitHub Container Registry (ghcr.io).

### Image Naming

Pattern: `ghcr.io/emo-bon/{image-name}:{tag}`

Examples:
- `ghcr.io/emo-bon/semantic-uplifter:latest`
- `ghcr.io/emo-bon/triple-store-harvester:v1.0.0`

### Publishing Process

```yaml
steps:
  - Build Docker image
  - Tag image
  - Login to ghcr.io
  - Push image
```

### Using Published Images

Workflows can use published images:
```yaml
jobs:
  process:
    container:
      image: ghcr.io/emo-bon/semantic-uplifter:latest
```

## Environment Management

### GitHub Environments

EMO-BON uses GitHub Environments for:
- **Production**: Public-facing sites
- **Staging**: Testing before production
- **Development**: Active development

### Environment Protection

Production environment requires:
- Review approval
- Restricted to main branch
- Secrets protected

## Secrets Management

### Repository Secrets

Sensitive information stored as GitHub Secrets:
- API tokens
- Google Sheets credentials
- S3 access keys
- Service account credentials

### Usage in Actions

```yaml
steps:
  - name: Download from Google Sheets
    env:
      GOOGLE_SHEETS_API_KEY: ${{ secrets.GOOGLE_SHEETS_API_KEY }}
```

## Deployment Monitoring

### Deployment Status

- GitHub shows deployment status in repository
- Links to deployed site
- Deployment history

### Rollback

If deployment fails or has issues:
1. Revert commit in main branch
2. Re-trigger deployment
3. Or manually deploy previous version

### Notifications

- GitHub Actions send notifications
- Deployment webhooks
- Status badges in README

## Multi-Repository Deployments

### Coordinated Updates

Some changes require updates across multiple repositories:

1. **Update governance-data**
2. **Trigger repo-constructor-action**
3. **New observatory repos created**
4. **Each repo runs its workflows**
5. **All sites updated**

### Dependency Management

- Actions can depend on other actions
- Repository dispatch triggers cross-repo workflows
- Workflow artifacts shared between jobs

## Continuous Deployment

EMO-BON follows continuous deployment principles:

- **Automated**: No manual deployment steps
- **Tested**: Validation before deployment
- **Incremental**: Small, frequent changes
- **Reversible**: Easy to roll back

### Benefits

- Faster delivery of updates
- Reduced risk of errors
- Better visibility of changes
- Easier troubleshooting

## Future Plans

### Planned Improvements

- Staging environment for testing
- Preview deployments for pull requests
- Enhanced monitoring and alerts
- Automated performance testing
