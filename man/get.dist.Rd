\name{get.dist}
\alias{get.dist}
\title{Calculates 26 possible resemblance measures.}
\description{This function allows users access to 26 resemblance measures 
.  This includes five not previously available in R.  
Many of the measures are programmed with the function \code{\link[vegan]{designdist}} from library \pkg{vegan}.  
 Minkowski's distance requires an additional specification for power.  
 The default is power = 2 which makes the measure equivalent to Euclidean distance. 
}
\usage{

get.dist(data, method, minkowski.power = 2)
}
\arguments{

  \item{data}{A matrix for which resemblances between rows will be calculated}
  \item{method}{One of twenty six possible resemblance measures.  These are:  \cr
  "matching", "rogers", "jaccard.pa", "sorenson", "kulkczynski.pa", \cr
  "ochiai", "gower", "bray", "kulkczynski.q", "jaccard.q", "euclidean", \cr
 "rel.euclidean", "manhattan", "czekanowski", "whittaker", "canberra", \cr
 "chi.metric","chi.dist", "morisita", "morisita.horn", "minkowski", "mountford", \cr
 "raup.crick", "binomial",or "chao".}
  \item{minkowski.power}{Minkowski's distance requires a specification for power.  
 The default is \code{minkowski.power = 2} which makes the measure equivalent to Euclidean distance.}
}


\value{
Returns a matrix of \code{class(dist)}.
}
\seealso{\code{\link{dist}}}
\references{
Aho, K.  In prep.  \emph{Applied statistics for biologists, a textbook using R}.
 
Legendre, P, and Legendre, L. (1998)  \emph{Numerical ecology, 2nd English edition}.  Elsevier, 
Amsterdam, The Netherlands. 

Oksanen, J., Kindt, R., Legendre, P., O'Hara, B., Simpson, G. L., and Stevens, M. H. H.   
(2008) \emph{vegan: community ecology package. R package version 1.13-0}.  \url{https://CRAN.R-project.org/package=vegan}
}
\author{Ken Aho}
\examples{

data(varespec)
get.dist(varespec,method="bray")
}
\keyword{multivariate}
