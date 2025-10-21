---
title: Sampling Data
---

### Types of Sampling Data

Sampling data in the emo-bon framework is collected through three primary approaches. Each type of sampling targets a specific part of the marine environment and has a corresponding metadata logsheet to ensure standardized documentation.

1. **Water Column Sampling**  
   Involves collecting physical, chemical, and biological data from various depths in the water column. This may include CTD casts, water sampling bottles, or plankton nets.

2. **Sediment Sampling**  
   Targets the seabed using tools like grabs, cores, or box corers to collect information about sediment composition, organisms, or geochemistry.

3. **Hard/Artificial Substrate Sampling**  
   Focuses on organisms colonizing natural hard substrates or deployed structures such as ARMS (Autonomous Reef Monitoring Structures). These samplers provide standardized surfaces for long-term monitoring of benthic communities.

Each of these sampling types is documented using a dedicated logsheet format, tailored to the sampling method and data needs.


For each sampling type, logsheets capture **three main categories of metadata**:

- **Observatory metadata** – describes the observational unit, such as its location, depth, and contact information.  
- **Sampling metadata** – records contextual information about the sampling events (e.g. date, time, location, method, equipment) and the samples collected.  
- **Measured metadata** – includes observations or measurements made on the samples, including environmental parameters.


---

### Availabilty of Sampling Data

- #### Logsheets

  Sampling logsheets are structured records that document key metadata related to emo-bon observatories, the sampling activities conducted, and the samples collected.

  These logsheets are maintained as openly accessible Google spreadsheets. A centralized master list provides links to the logsheets used by each station.  
  📄 **Master list of logsheets:** https://github.com/emo-bon/governance-data/blob/main/logsheets.csv  


- #### Observatory crate 

  Additionally, raw versions of the logsheets are harvested into GitHub and stored as CSV files within each observatory’s dedicated RO-Crate. These CSVs are used as inputs for quality control (QC) workflows, semantic uplifting and archival.

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

  This ensures transparent, version-controlled access to standardized sampling metadata across the emo-bon network.