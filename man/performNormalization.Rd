% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/performNormalization.R
\name{performNormalization}
\alias{performNormalization}
\title{Perform Normalization on Enrichment Data}
\usage{
performNormalization(
  input.data,
  enrichment.data = NULL,
  assay = "escape",
  gene.sets = NULL,
  make.positive = FALSE,
  scale.factor = NULL,
  groups = NULL
)
}
\arguments{
\item{input.data}{raw‐counts matrix (`genes × cells`), a 
\link[SeuratObject]{Seurat} object, or a 
\link[SingleCellExperiment]{SingleCellExperiment}. Gene identifiers must
match those in `gene.sets`.}

\item{enrichment.data}{Output of \code{\link{escape.matrix}} or a single‑cell
object previously processed by \code{\link{runEscape}}.}

\item{assay}{Name of the assay holding enrichment scores when
`input.data` is a single‑cell object. Ignored otherwise.}

\item{gene.sets}{A named list of character vectors, the result of
[getGeneSets()], or the built-in data object [escape.gene.sets]. 
List names become column names in the result.}

\item{make.positive}{Logical; if `TRUE` shifts each column so its minimum is
zero.}

\item{scale.factor}{Optional numeric vector overriding gene‑count scaling
(length = #cells). Use when you want external per‑cell normalization factors.}

\item{groups}{Integer >= 1.  Number of cells per processing chunk.
Larger values reduce overhead but increase memory usage. Default **1000**.}
}
\value{
If `input.data` is an object, the same object with a new assay
        "<assay>_normalized". Otherwise a matrix of normalized scores.
}
\description{
Scales each enrichment value by the **number of genes from the set that are
expressed** in that cell (non‑zero counts). Optionally shifts results into a
positive range and/or applies a natural‑log transform for compatibility with
log‑based differential tests.
}
\examples{
gs <- list(Bcells = c("MS4A1", "CD79B", "CD79A", "IGH1", "IGH2"),
           Tcells = c("CD3E", "CD3D", "CD3G", "CD7","CD8A"))

pbmc <- SeuratObject::pbmc_small |>
  runEscape(gene.sets = gs,
            min.size = NULL)
                        
pbmc <- performNormalization(pbmc, 
                             assay = "escape", 
                             gene.sets = gs)

}
