#' Built-In Gene Sets for escape  
#'
#' `escape.gene.sets` ships with **escape** and provides a convenient set of
#' cell-type and pathway signatures from the scRNA-seq tumor micro-environment
#' study by Azizi *et al.* (2018, Cell \doi{10.1016/j.cell.2018.06.021}). These
#' signatures capture major immune and stromal populations observed across
#' breast-cancer samples and serve as a lightweight default for quick testing or
#' exploratory analyses.
#
#' @details
#' The original paper defined cell-type signatures as the top differentially
#' expressed genes per cluster (Azizi *et al.*, Supplementary Table S3).  
#'
#' @usage data("escape.gene.sets")
#' @seealso [runEscape()], [escape.matrix()], [getGeneSets()]
#' @keywords datasets
#' @source Supplementary Table S3 in Azizi *et al.* (2018)  
#'         <https://pubmed.ncbi.nlm.nih.gov/29961579/>
#' @references
#' Azizi E, *et al.* **Single-cell map of diverse immune phenotypes in the
#' breast tumor microenvironment.** *Cell* 173(5):1293-1308 (2018).
#' @docType data
#' @name escape.gene.sets
NULL