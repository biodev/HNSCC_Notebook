# HNSCC_Notebook

<!-- badges: start -->
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/biodev/HNSCC_Notebook/master)
<!-- badges: end -->

This repository contains the workflow for light and dark pathway analysis of head and neck squamous cell carcinoma (HNSCC). For the TCGA cohort, we first assessed biological pathways that are significantly enriched for gene mutations in HNSCC patient tumors and then evaluated whether these pathways contained drug targets of FDA-approved cancer drugs. Enriched pathways containing drug targets are "light" to drugs and therefore of interest for targeting with the current set of approved drugs. Enriched pathways containing no drug targets are "dark" to drugs and of interest for future therapeutics development. 

### Notebooks
The notebook for this analysis can be found [here](https://github.com/biodev/HNSCC_Notebook/blob/master/HNSCC_Dark_Pathways.ipynb). This workflow requires the following input files:


### Input 
[TCGA HNSCC cohort gene mutations](https://github.com/biodev/HNSCC_Notebook/blob/master/data/TCGA.HNSC.mutect.84c7a87a-9dcc-48fb-bd69-ba9d6e6f3ca2.DR-7.0.somatic_cleaned.maf)

[Reactome Pathway Gene List](https://github.com/biodev/HNSCC_Notebook/tree/master/reference_data/paths)

[Target list from Cancer Targetome](https://github.com/biodev/HNSCC_Notebook/blob/master/data/Targetome_Level123_8_7_17.txt) 

[HPV consensus annotation file](https://github.com/biodev/HNSCC_Notebook/blob/master/data/HPV_Annotation_MB.csv)

This workflow produces the following output files for the "light" and "dark" pathways presented and discussed in our manuscript.

### Output

[Light Pathways](https://github.com/biodev/HNSCC_Notebook/blob/master/output/study_hnscc/results/overlap_analysis/Aberrationally%20enriched%2C%20containing%20drug%20targets.txt) are pathways found to be enriched in the cohort and also drug-targeted

[Dark Pathways](https://github.com/biodev/HNSCC_Notebook/blob/master/output/study_hnscc/results/overlap_analysis/Aberration%20enriched%2C%20not%20drug%20targeted.txt) are pathways found to be enriched in the cohort and are not currently drug-targeted


### Citation:
Choonoo, et al. 2019. Illuminating biological pathways for drug targeting in head and neck squamous cell carcinoma. *Submitted
