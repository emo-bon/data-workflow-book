---
title: Infographic on Data Flow
---

This section provides an overview of the EMO-BON data flow and lifecycle.

:::{note}
A visual infographic will be added here showing the complete data flow lifecycle.
:::

## System Setup

The EMO-BON data system is set up as follows:

- Create governance crate & data space repository (the one creating the site = emo-bon.github.io)
- Manual entries in governance-crate listing GH sheets by id and observatories
- Create repositories for various profiles: observ, sequence & analysis-results
- Create repositories for sequence, analysis-results

## Observatory Crates Setup

Observatory crates are set up through:
- GitHub action driven by governance crate linking to Google Sheets
- Manual follow-up: new crates should get listed in the data space repository

## Components Interaction

The various components of the EMO-BON system interact to process and publish data:

- **Data Collection**: Observatories collect samples and record data in Google Sheets (logsheets)
- **Data Processing**: GitHub Actions fetch, validate, and transform the data
- **Data Publication**: Processed data is published as RO-Crates on GitHub Pages
- **Data Integration**: Data is harvested and integrated into knowledge graphs and catalogues
