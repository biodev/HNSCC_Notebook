pkgs <- c(
  "OrganismDbi",
  "ExperimentHub",
  "Biobase",
  "BiocParallel",
  "graphite",
  "biomaRt",
  "Biostrings",
  "BSgenome",
  "ShortRead",
  "IRanges",
  "GenomicRanges",
  "GenomicAlignments",
  "GenomicFeatures",
  "SummarizedExperiment",
  "VariantAnnotation",
  "DelayedArray",
  "GSEABase",
  "reactome.db",
  "Gviz",
  "AnnotationDbi", 
  "graphite",
  "reactome.db",
  "HGNChelper", 
  "graph",
  "RBGL",
  "Rgraphviz",
  "rmarkdown",
  "httr",
  "knitr",
  "BiocStyle"
)

ap.db <- available.packages(contrib.url(BiocManager::repositories()))
ap <- rownames(ap.db)
fnd <- pkgs %in% ap
pkgs_to_install <- pkgs[fnd]

ok <- BiocManager::install(pkgs_to_install, update=FALSE, ask=FALSE) %in% rownames(installed.packages())

if (!all(fnd))
  message("Packages not found in a valid repository (skipped):\n  ",
          paste(pkgs[!fnd], collapse="  \n  "))
if (!all(ok))
  stop("Failed to install:\n  ",
       paste(pkgs_to_install[!ok], collapse="  \n  "))

suppressWarnings(BiocManager::install(update=TRUE, ask=FALSE))

install.packages('roxygen2')
install.packages('rmarkdown')
install.packages('knitr')
install.packages('here')
install.packages('roxygen2')
install.packages('DT')
install.packages('remotes')
suppressWarnings(remotes::install_github("biodev/packageDir"))
