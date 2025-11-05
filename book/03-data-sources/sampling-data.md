---
title: Sampling Data
---

### Types of Sampling Data

EMO BON sampling data are collected through three primary approaches. Each type of sampling targets a specific part of the marine environment and has a corresponding metadata logsheet to ensure standardised documentation.

1. **Water Column Sampling**  
   Involves collecting physical, chemical, and biological data from various depths in the water column. This may include CTD casts, water sampling bottles, or plankton nets.

2. **Sediment Sampling**  
   Targets the seabed using tools such as grabs, cores, or box corers to collect information about sediment composition, organisms, or geochemistry.

3. **Hard/Artificial Substrate Sampling**  
   Focuses on organisms colonising natural hard substrates or deployed structures. We use ARMS (Autonomous Reef Monitoring Structures) units for this sample type; these samplers provide standardised surfaces for long-term monitoring of benthic communities.

Each of these sampling types is documented using a dedicated logsheet format, tailored to the sampling method and data needs.


For each sampling type, logsheets capture **three main categories of metadata**:

- **Observatory metadata** – describes the observatory unit, such as its location, depth, and contact information.  
- **Sampling metadata** – records contextual information about the sampling events (e.g. date, time, location, method, equipment) and the samples collected.  
- **Measured metadata** – includes observations or measurements made on or at the same time as the samples, including environmental parameters.


---

### Availabilty of Sampling Data

- #### Logsheets

  Sampling logsheets are structured records that document key metadata related to EMO BON observatories, the sampling activities conducted, and the samples collected.

  These logsheets are maintained as openly accessible Google spreadsheets. A centralised master list provides links to the logsheets used by each station.  
  📄 **Master list of logsheets:** https://github.com/emo-bon/governance-data/blob/main/logsheets.csv  


- #### Observatory crate 

  Additionally, raw versions of the logsheets are harvested into GitHub and stored as CSV files within each observatory’s dedicated repository/RO-Crate. These CSVs are used as inputs for quality control (QC) workflows (consistency and error checking, tranformation rules for common mistakes, etc), semantic uplifting (merging the logsheet entries with the EMO BON ontology/data model), and archival (stored as CSV and as TTL files).

  Examples:   
  - 📁 [HCMR logsheets](https://github.com/emo-bon/observatory-hcmr-1-crate/tree/main/logsheets/raw) 
    - [`sediment_measured.csv`](https://github.com/emo-bon/observatory-hcmr-1-crate/blob/main/logsheets/raw/sediment_measured.csv)
    - [`sediment_observatory.csv`](https://github.com/emo-bon/observatory-hcmr-1-crate/blob/main/logsheets/raw/sediment_observatory.csv)
    - [`sediment_sampling.csv`](https://github.com/emo-bon/observatory-hcmr-1-crate/blob/main/logsheets/raw/sediment_sampling.csv)
    - [`water_measured.csv`](https://github.com/emo-bon/observatory-hcmr-1-crate/blob/main/logsheets/raw/water_measured.csv)
    - [`water_observatory.csv`](https://github.com/emo-bon/observatory-hcmr-1-crate/blob/main/logsheets/raw/water_observatory.csv)
    - [`water_sampling.csv`](https://github.com/emo-bon/observatory-hcmr-1-crate/blob/main/logsheets/raw/water_sampling.csv)

  - 📁 [BPNS logsheets](https://github.com/emo-bon/observatory-bpns-crate/tree/main/logsheets/raw)
    - [`sediment_measured.csv`](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/raw/sediment_measured.csv)
    - [`sediment_observatory.csv`](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/raw/sediment_observatory.csv)
    - [`sediment_sampling.csv`](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/raw/sediment_sampling.csv)
    - [`water_measured.csv`](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/raw/water_measured.csv)
    - [`water_observatory.csv`](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/raw/water_observatory.csv)
    - [`water_sampling.csv`](https://github.com/emo-bon/observatory-bpns-crate/blob/main/logsheets/raw/water_sampling.csv)

  This ensures transparent, version-controlled access to standardised sampling metadata across the EMO BON network.
