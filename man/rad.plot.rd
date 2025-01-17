\name{rad.plot}
\alias{rad.plot}
\alias{heat.plot}

\title{
Plots depicting radiation and heatload }
\description{
Incident radiation and heatload are plotted as a function of slope, aspect, and latitude (degrees N), on a syntheitc aspect slope hill diagram (SASH diagram; Aho et al. 2011).  The artificial hill is spherical and grows steeper at its center.  Fitted values are based on a polynomial algorithm from McCune and Keough (2002).
}
\usage{
rad.plot(lat)
heat.plot(lat)
}

\arguments{

\item{lat}{
Latitude in degrees N.
}

}

\seealso{
\code{\link{radiation.heatl}}
}

\references{
Aho, K., Weaver, T., and S. Regle  (2011)  Identification and siting of native vegetation 
types on disturbed land: demonstration of statistical methods.  \emph{Journal of Applied Vegetation Science} 14 (2): 277-290. 

McCune, B., and D. Keon (2002)  Equations for potential annual direct radiation and heat 
load.  \emph{Journal of Vegetation Science} 13: 603-606.

}
\author{
Ken Aho
}
\keyword{graphs}
