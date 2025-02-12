---
title: Naming
author: VLIZ OpenScience team
date: 2025-02-06
category: Jekyll
layout: post
permalink: /documentation/conventions/gh/naming/
---

## Conventions

- **Use lowercase**  
Repository names should be in lowercase by default.  
**Exception**: Use the original case for names with widely recognized case-sensitive formatting, such as: 
    - `MetaGOflow`, 
    - `ROSKOGO` (e.g. in `observatory-ROSKOGO-crate`).  

- **Use Kebab case**  
Separate words of repository names with dashes (-), instead of underscores (_), spaces, or CamelCase.  
**Exception:** Dots (`.`) are allowed in domain-like constructs (e.g., GitHub suggests `emo-bon.github.io` as an entry point for `github.io` publications).  

- **Avoid use of plurals**  
Avoid use of trailing `s` in folder and repository names, as they don’t provide additional meaning — it's already clear that repositories can contain multiple items. 

- **Provide essentials**
Add a `Readme.md` making clear what the repo is intended for.  Add a `LICENSE` to make sure others know about any constraints of reuse. We generally advise MIT for code, and CC-by for data.

## Types of repositories

| Repo suffix            | Description of this « Type of Repo »    |
|------------------------|-----------------------------------------|
| **\emo-bon.github.io** | Central repo building the web presence at https://data.emobon.embrc.eu/. From there many of the rest gets linked. |
| **\-crate**            | An actual RO-Crate holding data |
| **\-profile**          | An actual RO-Profile (a crate in its own right) that formally describes the layout/structure of the crates that declare conformance to it |
| **\-example**          | Indicative of playground nature of the repo. Can be combined with other suffixes (but should be the final one) |
| **\-book**             | A larger body of documentation. Grouped and organised with gitbook theme (preferably) and linked from the main website repo via its `_data/books.yml` | 
| **\-docker**           | Building up a docker-image. Ideally using CI/CD to publish that in [our space on ghcr.io](https://github.com/orgs/emo-bon/packages)  | 

