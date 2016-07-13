###############################################################

# How to Install 'packageDir': Pathway Analysis

# Step 1) 
# setwd("/Users/choonoo/pathLayerDistributionVersion2-master")

# Step 2) 
# devtools::install("./packageDir")

# Step 3)
library("packageDir")
library("roxygen2")
library("rBiopaxParser")
library("stringr")

###############################################################

# To Run Study

# Step 1)
# setwd("/Users/choonoo/pathLayerDistributionVersion2-master/executionDir")

STUDY = allInteractiveMainFunction()
