---
title: QC Processes
---

This section describes the Quality Control (QC) processes applied to EMO-BON data.

## Observatory Crate Production

Observatory crates are produced through a GitHub action workflow:

1. **Fetch CSV content** from Google Sheets
2. **Apply QC** - Report on needed actions to ensure data quality
3. **Generate triples** using templates from observatory-profile
4. **Produce RO-Crate** with validated data and metadata
5. **Publish to GitHub Pages** for public access

## Quality Control Steps

The QC process includes:

- Data validation against expected schemas
- Detection and reporting of missing or invalid values
- Consistency checks across related data fields
- Format validation for dates, identifiers, and other structured data

## Reporting

QC results are reported through:
- Automated comments on repository issues
- GitHub Actions logs
- Summary reports in the repository
