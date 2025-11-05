---
title: Other Data Sources
---

This section describes additional data sources used in the EMO-BON data management process, including external reference datasets, vocabularies, and technical dependencies.

These sources may be introduced at various stages in the data flow, either directly referenced during submission or integrated during validation, enrichment, or transformation. Some of this integration involves hardcoded mappings and configurations, as outlined in the relevant [RO profiles](../06-conformance/ro-profiles.md) and [technical details](../07-technical-details/software-components.md).

### Reference Data & External Vocabularies

Several authoritative external sources are used for reference and standardization, including:

- [**Marine Regions**](https://www.marineregions.org/) – for standardised geographic locations and place names
- [**WoRMS (World Register of Marine Species)**](https://www.marinespecies.org/) – for validated taxonomic information
- [**MIxS (Minimum Information about any (x) Sequence)**](https://gensc.org/mixs/) – for environmental and contextual metadata standards from the Genomic Standards Consortium
- [**BODC Vocabularies**](https://vocab.nerc.ac.uk/) – maintained by the British Oceanographic Data Centre for oceanographic and marine terms
- [**ENVO (Environment Ontology)**](https://www.ontobee.org/ontology/ENVO) – an ontology for environmental features and habitats, part of the OBO Foundry
- [**EFO (Experimental Factor Ontology)**](https://www.ebi.ac.uk/efo/) – for describing experimental variables and sample characteristics
- [**EDAM (EMBRACE Data and Methods Ontology)**](http://edamontology.org/) – for describing bioinformatics operations, data types, formats, and topics

These resources support semantic interoperability and consistent annotation across datasets.

### Hardcoded Logic & Technical Dependencies

Some mappings and transformations use predefined, hardcoded logic, including:

- Term translations or standardisations via internal lookup tables
- Default value insertions

Details on these technical implementations can be found in the respective [RO profiles](../06-conformance/ro-profiles.md).

### External Repositories & Data Integration

In addition to primary data submissions, EMO-BON may reference or integrate data from established external repositories, including:

- [**ENA (European Nucleotide Archive)**](https://www.ebi.ac.uk/ena) – a public archive for sequence data
- [**OBIS (Ocean Biodiversity Information System)**](https://obis.org/) – a global biodiversity database
- [**Génoscope**](https://www.genoscope.cns.fr/) – France’s National Sequencing Center, providing sequencing and genomic resources
- Other marine biodiversity and environmental data repositories, depending on the project context


These integrations help enrich the data and provide broader ecological and genomic context.
