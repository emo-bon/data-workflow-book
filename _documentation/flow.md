---
title: Flow
author: VLIZ OpenScience team
date: 2025-02-06
category: Jekyll
layout: post
---

# to do
- system set-up:
    - create governance crate & data space repository (the one creating the site = emo-bon.github.io)
    - manual entries in governance-crate listing GH sheets by id and observatories
    - create repositories for various profiles: observ, sequence & analysis-results
    - create repositories for sequence, analysis-results

- how do we set up observatory-crates 
    --> github action driven by govenance crate linking to gsheets
    - manual follow up, new crates should get listed in the dat  space repository 
     
- how do we produce observatory crates 
    --> github action: 
            - fetch csv content from gsheets
            - apply QC - report on needed actions
            - generate triples using templates from observatory-profile 
            - produce ro-crate 
            - publish to gh-pages

- how do we register sequences into sequence crate
    - ?? todo & follow up - code, automation to check

- how do sequences end up at ENA 
    - ?? todo & describe agreements with GENOSCOPE

- how do we get analysis results crate
    - in future: get locations and availability of samples & their sequences through the system (currently: manual knowledge available to Cymon)
    - todo: describe metagoflow process + post processing 
    - triplisation of results executed by dockerized semantic uplifting provided in (todo: ref to *docker repo)
    - results added to GH repository analysis-results-XX-crate + large files S3 via dvc

- how to get metadata into catalogue (e.g. FAIR EASE IDDAS)
    - todo: execution of dockerized process (ref to docker repo)
        - harvest links to datasets from data.emobon.embrc.eu/
        - apply sema harvest tricks to assemble linked triples (minimally ro-crate-metadata.json)
        - export harvest result into dump file for import in asset catalogue

- how to build-up triple store
    - todo: execution of dockerized stack (ref to docker repo) that:
        - harvest links to datasets from data.emobon.embrc.eu/
        - apply extensive harvest tricks to assemble ALL linked triples (including data turtle inside ro-crates)
        - expose the triple store / SPARQL-endpoint at public URL (e.g. sparql.- or api.emobon.embrc.eu)

- how to consume data & api
    - todo: UDAL named queries 
    - todo: VREs consuming those via sema query + udal