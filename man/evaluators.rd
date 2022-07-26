\name{evaluators}
\alias{McR.eval}
\alias{Cindex.eval}
\alias{morisita.eval}
\alias{biserial.eval}
\alias{evaluators}
\alias{print.eval}
\title{Cluster analysis evaluators.}
\description{
A collection of classification evaluators. \code{McR.eval} provides both the McClain & Rao evaluator (W/B) (McClain and Rao 1975) and the PARTANA ratio (Roberts 2005); \code{Cindex.eval} = The \emph{C}-index (Hubert and Levin 1976); \code{morisita.eval} = the Morisita index (adapted from Horn 1966); \code{biserial.eval} = point biserial correlation evaluator (Brogden 1949).
}
\usage{

McR.eval(cat, dist, method = "McR")

Cindex.eval(cat, Y, index = "bray", stopif1 = FALSE)

morisita.eval(cat, Y)

biserial.eval(cat, dist)
}
\arguments{

  \item{cat}{Classification solution, a categorical vector.}
  \item{dist}{A dissimilarity or distance matrix, i.e. an object of \code{class="dist"}.}
  \item{method}{The method used in \code{McR.eval}.  Options are \code{method="partana"} and \code{method="McR"}.}
  \item{Y}{A matrix of raw data, e.g. a community matrix.}
  \item{stopif1}{Logical argument specifying whether to \emph{not} consider solutions with clusters consisting of one object.}
  \item{index}{Type of dissimilarity or distance metric to use.  Any measure from \code{get.dist} is allowed}
}
\details{
More to come.  Note that the function \code{McR.eval} is essentially the \code{partana} function from library \code{labdsv} with only a few minor adjustments. 
}
\value{
Returns an list of \code{class="eval"}. Printed will be the evaluator score for a classification solution; \code{invisible} objects will vary with method.
}
\note{The Morisita evaluator has been tested on a few datasets and appears to respond in a strongly linear fashion to the number of clusters.}
\seealso{\code{\link{get.dist}}}
\references{
Brogden, H. E.(1949)  A new coefficient: application to biserial correlation and to estimation of selective efficiency. \emph{Psychometrika}.  14: 169-182.

Horn, H. S. (1966)  Measurement of "overlap" in comparative ecological studies.  \emph{Am. Naturalist}.  100: 419-424.
 
Hubert, L. J. & Levin, J. R. (1976)  A general framework for assessing categorical clustering in free recall.  \emph{Psychol. Bull}.  83: 1072-1080.

McClain, J. O. & Rao, V. R. (1975)  CLUSTISZ: A program to test for the quality of clustering of a set of objects.  \emph{J. Marketing Res}.  12: 456-460.

Milligan, G. W. (1981)  A Monte Carlo study of thirty internal criterion measures for cluster analysis.  \emph{Psychometrika}.  46(2): 187-199.

Milligan, G. W. & Cooper, M. C. (1985)  An examination of procedures for determining the number of clusters in a dataset.  \emph{Psychometrika}.  50 (2): 159-179.

Milligan, G. W. & Isaac, P. D. (1980)  The validation of four ultrametric clustering algorithms.  \emph{Pattern Recogn}.  12: 41-50.

Roberts, D. (2005)  \emph{Vegetation classification in R, for labdsv ver. 1.1-1, vegetation ecology package}.  \url{www.cran.r-project.org}.  unpubl.

}
\author{David Roberts and Ken Aho}
\examples{

data(dune)
data(dune.env)

McR.eval(dune.env[,3],get.dist(dune,"bray"))
Cindex.eval(dune.env[,3],dune)
biserial.eval(dune.env[,3],get.dist(dune,"bray"))
}
\keyword{multivariate}
