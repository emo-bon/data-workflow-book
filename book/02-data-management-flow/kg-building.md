---
title: Knowledge Graph Building (Semantic Uplifting)
---

This section describes how EMO-BON data is transformed into linked data and integrated into a knowledge graph.

## Semantic Uplifting Process

### RO-Crate SemBench Setup

The [rocrate-sembench-setup](https://github.com/vliz-be-opsci/rocrate-sembench-setup) action makes preparations for semantic uplifting by:

- Initializing an RO-Crate from a default profile if necessary
- Assembling required files and variables into the `~sembench_data_cache` folder (files coming from the [observatory-profile](https://github.com/emo-bon/observatory-profile))
- Creating the `~sembench_kwargs.json` file with configuration parameters

These steps separate RO-Crate-specific logic from pysembench logic on a conceptual level. The utility files produced by this action are untracked via the `.gitignore`.

### Semantify Action

The [semantify](https://github.com/vliz-be-opsci/semantify) action performs:

- **Generate TTL** (Turtle format RDF) using pysubyt task
- **Validate TTL** using pyshacl task
- **Generate LDES feed** for linked data event streams
- **Create list of generated items** for reuse by rocrate-validate

### RO-Crate Validation

The rocrate-validate process:
- Validates the RO-Crate structure and content
- Repairs issues where possible
- Reports validation results

### Publishing to Pages

The rocrate-to-pages process:
- Converts RO-Crate to HTML for GitHub Pages
- Generates human-readable views of the data

## Triple Store Construction

The EMO-BON triple store is built through a dockerized stack that:

1. **Harvests links** to datasets from data.emobon.embrc.eu/
2. **Applies extensive harvest tricks** to assemble ALL linked triples (including data turtle inside RO-Crates)
3. **Exposes the triple store** / SPARQL-endpoint at public URL (e.g., sparql.- or api.emobon.embrc.eu)

## Catalogue Integration

Metadata is integrated into catalogues (e.g., FAIR EASE IDDAS) through:

1. Dockerized process execution
2. Harvesting links to datasets from data.emobon.embrc.eu/
3. Applying semantic harvest tricks to assemble linked triples (minimally ro-crate-metadata.json)
4. Exporting harvest result into dump file for import in asset catalogue
