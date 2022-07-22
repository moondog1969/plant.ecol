\name{cover}
\alias{cover}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mean abundance for categories
}
\description{
Calculate mean abundance measures with respect to a categorical variable.
}
\usage{
cover(Y, cat)
}
\arguments{

  \item{Y}{
An \emph{n x p} community data matrix (generally sites in rows, species in columns).
}
  \item{cat}{
An \emph{n x 1} vector of categories.
}
}

\author{
Ken Aho
}
\seealso{
\code{\link{const}}
}
\examples{
data(dune)
data(dune.env)

cover(dune, dune.env$Management)
}
