---
title: Graphic Navigation Guide
---

This section will provide a visual guide to navigating the EMO-BON data workflow and systems.

:::{note}
A graphical navigation guide will be added here to help users understand the overall structure and flow of the EMO-BON data systems.
:::

## Semantic Uplifting Process

### Overview Diagram

```mermaid
flowchart TD
    A[Data Collection] --> B[Preprocessing]
    B --> C[Semantic Annotation]
    C --> D[Validation]
    D --> E[Integration into Knowledge Graph]

    subgraph linked-data-etl
        direction LR
        A:::clickable
        B:::clickable
        C:::clickable
        D:::clickable
        E:::clickable
    end

    click A href "#sub-process-data-collection" "Go to Data Collection"
    click B href "#sub-process-preprocessing" "Go to Preprocessing"
    click C href "#sub-process-semantic-annotation" "Go to Semantic Annotation"
    click D href "#sub-process-validation" "Go to Validation"
    click E href "#sub-process-integration-into-knowledge-graph" "Go to Integration"

    classDef clickable fill:#f9f,stroke:#333,stroke-width:2px;
```

### Description

This diagram illustrates the semantic uplifting process inspired by the `linked-data-etl` workflow. Key steps include:

1. **Data Collection**: Gathering raw data from various sources.
2. **Preprocessing**: Cleaning and preparing data for semantic annotation.
3. **Semantic Annotation**: Enriching data with semantic metadata using tools like `semantify`.
4. **Validation**: Ensuring data quality and adherence to profiles (e.g., RO-Crate profiles).
5. **Integration into Knowledge Graph**: Aggregating and publishing validated data into a knowledge graph for further use.

This process ensures data is transformed into a semantically rich and interoperable format, ready for integration into broader systems.

#### Sub-process: Data Collection

```mermaid
stateDiagram-v2
    [*] --> ReadWorkflowProperties
    ReadWorkflowProperties: Read workflow_properties.yml
    ReadWorkflowProperties --> DownloadLogsheets
    DownloadLogsheets: Download logsheets for each habitat
    DownloadLogsheets --> ProcessLogsheets
    ProcessLogsheets: Convert XLSX sheets to CSV
    ProcessLogsheets --> CleanTemporaryFiles
    CleanTemporaryFiles: Remove temporary folders
    CleanTemporaryFiles --> [*]

    state DownloadLogsheets {
        [*] --> Water
        [*] --> Sediment
        Water: Download water logsheets
        Sediment: Download sediment logsheets
    }

    state ProcessLogsheets {
        [*] --> Observatory
        [*] --> Sampling
        [*] --> Measured
        Observatory: observatory sheet to CSV
        Sampling: sampling sheet to CSV
        Measured: measured sheet to CSV
    }
```

#### Sub-process: Semantic Annotation

```mermaid
flowchart TD
    A[Placeholder for Semantic Annotation Steps]:::placeholder

    classDef placeholder fill:#ddd,stroke:#999,stroke-width:2px,font-style:italic;
```

#### Sub-process: Validation

```mermaid
flowchart TD
    A[Placeholder for Validation Steps]:::placeholder

    classDef placeholder fill:#ddd,stroke:#999,stroke-width:2px,font-style:italic;
```

#### Sub-process: Integration into Knowledge Graph

```mermaid
flowchart TD
    A[Placeholder for Integration Steps]:::placeholder

    classDef placeholder fill:#ddd,stroke:#999,stroke-width:2px,font-style:italic;
```


## Coming Soon

This section is under development and will include:

- System architecture diagrams
- Data flow visualizations
- Navigation maps for different user roles
- Quick reference guides