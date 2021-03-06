# FAIR catalogues - Metadata recommendation for the cataloguing of multi-center cohort and health data studies

Purpose of this is to document the metadata necessary to describe data in collections (cohorts, registries, databanks, etc) and their mapping to data integration models (ETLs, harmonisations).
We envision that this will be used by catalogue data managers and/or software to improve quality of these descriptions and promote interability between harmonisation efforts, and the systems supporting them (e.g. catalogues)

## Modules

We partitioned fair catalogues into:

* variables - for defining structure of collected datasets (e.g. cohorts) or integrated datasets (e.g. harmonized models)
* mappings - for defining how variables from a dataset are mapped in on integration model

## Human readable layouts

* [in bullet layout](bulletformat.md)
* [in tabular layout](tableformat.md)

## Technical format (yaml)

Used for editing the models. We generate the human readable versions above.

* [variables.yaml](variables.yaml)
* [mappings.yaml](mappings.yaml)
* [design.yaml](design.yaml)


## Background

This effort is supported by H2020 projects EUCAN-connect, with liaisons to LifeCycle, Interconnect, RECAP, CINECA, Athlete, LongITools, BBMRI, and Canadian Reach.
