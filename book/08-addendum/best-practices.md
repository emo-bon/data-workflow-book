---
title: Best Practices
---

This section describes best practices for working with EMO-BON data and infrastructure.

## Data Management

### Keep Logsheets Up to Date

- Update Google Sheets promptly after sample collection
- Use consistent terminology and formats
- Fill all required fields
- Review data before submission

### Document Changes

- Explain why data was corrected
- Track decision rationale
- Maintain audit trail
- Communicate with partners

### Version Control

- Use Git for all code and documentation
- Write clear commit messages
- Use branches for experimental work
- Tag stable releases

## GitHub Practices

### Repository Management

- Keep README up to date
- Add LICENSE file
- Use .gitignore appropriately
- Archive obsolete repositories

### Issue Tracking

- Create issues for bugs and enhancements
- Use descriptive titles
- Provide reproducible examples
- Close issues when resolved

### Pull Requests

- Keep changes focused and small
- Write clear descriptions
- Request reviews from relevant people
- Address feedback promptly

### Documentation

- Document all workflows
- Keep examples up to date
- Explain complex decisions
- Update when things change

## Code Quality

### Python Code

- Follow PEP 8 style guide
- Write docstrings for functions
- Use type hints where helpful
- Add unit tests for critical functions

### Shell Scripts

- Use shellcheck for validation
- Handle errors explicitly
- Make scripts idempotent
- Document required environment variables

### GitHub Actions

- Use pinned versions for actions
- Cache dependencies when possible
- Set appropriate timeouts
- Add status badges to README

## Data Quality

### Validation

- Validate data before processing
- Check for required fields
- Verify data types
- Report issues clearly

### Quality Control

- Review automated QC results
- Fix issues at the source when possible
- Document known limitations
- Track quality metrics over time

### Reproducibility

- Use version-controlled workflows
- Pin software versions
- Document manual steps
- Provide example data

## Collaboration

### Communication

- Use GitHub issues for discussions
- Document decisions in issues/PRs
- Tag relevant people
- Be respectful and constructive

### Code Review

- Review others' contributions
- Provide constructive feedback
- Explain the "why" not just "what"
- Approve when satisfied

### Knowledge Sharing

- Write documentation
- Share lessons learned
- Present at team meetings
- Mentor new contributors

## Security

### Credentials

- Never commit secrets to Git
- Use GitHub Secrets for sensitive data
- Rotate credentials regularly
- Follow principle of least privilege

### Access Control

- Use appropriate repository visibility
- Grant minimal necessary permissions
- Review access regularly
- Remove access promptly when no longer needed

### Dependencies

- Keep dependencies up to date
- Review security advisories
- Use Dependabot for alerts
- Test updates before deploying

## Performance

### Optimize Workflows

- Minimize redundant operations
- Use caching effectively
- Parallelize when possible
- Monitor execution times

### Large Files

- Use DVC for data > 10MB
- Compress text files
- Clean up old artifacts
- Monitor storage costs

### API Usage

- Respect rate limits
- Cache responses when possible
- Use batch operations
- Handle errors gracefully

## Maintenance

### Regular Updates

- Update dependencies periodically
- Review and close stale issues
- Archive unused repositories
- Update documentation

### Monitoring

- Check workflow status regularly
- Review error logs
- Monitor storage usage
- Track performance metrics

### Cleanup

- Remove obsolete code
- Delete old branches
- Clean up temporary files
- Archive completed projects

## Open Science

### Make Data Open

- Publish data when possible
- Use open licenses
- Provide clear access instructions
- Archive in appropriate repositories

### Document Methods

- Describe workflows clearly
- Share code and scripts
- Explain parameters and choices
- Enable reproducibility

### Engage Community

- Welcome contributions
- Respond to questions
- Share updates and progress
- Acknowledge contributors

## When Things Go Wrong

### Debugging

- Start with error messages
- Check logs carefully
- Reproduce the issue
- Isolate the problem

### Recovery

- Use Git to revert changes
- Restore from backups
- Document what happened
- Prevent recurrence

### Communication

- Report issues promptly
- Provide relevant details
- Work together on solutions
- Share lessons learned
