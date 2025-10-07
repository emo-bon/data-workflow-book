---
title: Best Practices
---

This page outlines the best-practices for metadata and data, used in the EMO-BON project.


1. ## Metadata

- ### RO-Crate Metadata
  - Use schema.org terms when available
  - Use established ontologies (SOSA, DublinCore)
  - Define custom terms in EMO-BON namespace
  - Provide human-readable labels

- ### Dates and Times
  Use ISO 8601 format:
  - Date: `YYYY-MM-DD`
  - DateTime: `YYYY-MM-DDTHH:MM:SSZ`
  - Time period: `YYYY-MM-DD/YYYY-MM-DD`

- ### Geographic Coordinates
  - Latitude/Longitude in decimal degrees
  - Use WGS84 coordinate reference system
  - Include precision information

2. ## Identifiers

- ### Observatory IDs
  Format: lowercase with hyphens
  **Examples**:
    - `bpns`
    - `hcmr-1`
    - `roskogo`
  
  **Used In**:
    - Repository names: `observatory-bpns-crate`
    - URIs: `https://data.emobon.embrc.eu/observatory-bpns-crate`

- ### Sample IDs
  Format: `EMOBON_{OBSERVATORY}_{TYPE}_{NUMBER}`
  **Examples**:
    - `EMOBON_BPNS_Wa_001`
    - `EMOBON_HCMR-1_So_042`

  **Components**:
    - `EMOBON`: Project prefix
    - `{OBSERVATORY}`: Observatory ID in uppercase
    - `{TYPE}`: Sample type (Wa=water, So=sediment)
    - `{NUMBER}`: Sequential number

- ### Sampling Event IDs
  Format: `{OBSERVATORY}_{TYPE}_{YYMMDD}`  
  **Examples**:
    - `BPNS_Wa_221027`
    - `HCMR-1_So_230615`