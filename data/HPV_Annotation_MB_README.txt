## README for HPV Consensus Annotation
## 07/26/2019
## Annotation file author: Mitzi Boardman
## Readme author: Aurora S Blucher

## This HPV annotation file supersedes previous annotation files for our analyses of the TCGA HNSCC cohort

## DESCRIPTION
This readme outlines the contents of HPV_Annotation_MB.txt, a consensus annotation file for HPV tumor status
for TCGA head and neck squamous cell carcinoma created by Mitzi Boardman. This HPV tumor status annotation was collected from 3 sources: 
TCGA provisional HPV annotation in the clinical data from cBioPortal [1], the TCGA HNSCC HPV annotation data from the TCGA 2015 Nature publication [2], 
and the TCGA HNSCC HPV annotation by Nulton et al. 2017 [3]. 

For our analysis of light and dark pathways with HPV cohort stratification, we classified tumor status as HPV positive or negative according to 
primarily the Nulton et al. annotation, supported by the other two sources. Nulton et. al. analyzed the raw RNA-Seq and Whole Genome Sequence data (WGS) 
from TCGA and annotated patient tumors evaluating the expression of viral genes including oncogenes E6 and E7 [18]. 
Where Nulton et al. annotated tumors as HPV positive and whole genome sequencing was available, we classified these tumors 
as “Highest Confidence Positive”. Additionally, if tumors were annotated as HPV positive by Nulton et al. and also annotated 
as HPV positive in the TCGA clinical data or in the TCGA Nature publication, we also classified these tumors as 
“Highest Confidence Positive”, even if they did not have whole genome sequencing available. In the case where Nulton et al. 
annotated tumors as HPV positive that were not annotated in the TCGA sets as positive and no whole genome sequencing was available, 
we classified these tumors as “High Confidence Positive”. Where Nulton et al. annotated tumors as HPV negative and whole genome 
sequencing was available, we classified these tumors as “High Confidence Negative”. 

## USING THIS FILE
For our analysis, we used only “Highest Confidence Positive” cases as HPV positives (n=57) and “High Confidence Negative” cases as HPV negatives (n=118). 
These sample sizes are based on cross-referencing TCGA barcodes with Gabby Choonoo's TCGA HNSCC maf used in light and dark pathway analysis.

## COLUMNS
TCGA_BARCODE; identifying tumor barcode used by TCGA
NATURE_BARCODE; identifying tumor barcode used by TCGA in Nature 2015 paper [2]
ONCOTARGET_HPV_BARCODE; tumor barcode used by Nulton et al.
ONCOTARGET BARCODE; tumor barcode used by Nulton et al.
NATURE_HPV_STATUS; HPV status determined by TCGA in 2015 Nature paper[2]
TCGA_HPV_STATUS; HPV status determined by TCGA provisional clinical data
ONCOTARGET_HPV_TYPE; HPV strain determined by Nulton et al. [3] 
ONCOTARGET_WGS; whether whole genome sequencing was available for tumor sample
ONCOTARGET_HPV_STATUS; HPV status determined by Nulton et al.[3] 
FINAL_HPV_CALL; our group's consensus call made regarding HPV status. This field used to designate HPV tumor status for our analysis.

## References
1. Gao J, Aksoy BA, Dogrusoz U, Dresdner G, Gross B, Sumer SO, et al. Integrative Analysis of Complex Cancer Genomics and Clinical Profiles Using the cBioPortal. Science Signaling. 2013;6: pl1–pl1. doi:10.1126/scisignal.2004088
2. Lawrence MS, Sougnez C, Lichtenstein L, Cibulskis K, Lander E, Gabriel SB, et al. Comprehensive genomic characterization of head and neck squamous cell carcinomas. Nature. 2015;517: 576–582. doi:10.1038/nature14129
3. Nulton TJ, Olex AL, Dozmorov M, Morgan IM, Windle B. Analysis of The Cancer Genome Atlas sequencing data reveals novel properties of the human papillomavirus 16 genome in head and neck squamous cell carcinoma. Oncotarget. 2017;8: 17684–17699. doi:10.18632/oncotarget.15179
