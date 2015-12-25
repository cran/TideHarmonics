\name{nodal_adj}
\alias{nodal_adj}
\title{Calculate nodal corrections.}
\description{
  Calculates nodal corrections from astronomical longitudes (lambdas).
  Mainly for internal use.
}
\usage{
  nodal_adj(lambp, lambN, lambph, indegree = TRUE, outdegree = TRUE) 
}
\arguments{
  \item{lambp}{Lambdas for the lunar perigee (p).}
  \item{lambN}{Lambdas for the lunar nodal (N).}
  \item{lambph}{Lambdas for the sun's perihelion (ph).}
  \item{indegree}{If \code{FALSE}, the lambdas are in radians. 
    Degrees are assumed by default.}
  \item{outdegree}{If \code{FALSE}, the returned phase 
    corrections are in radians. Degrees are produced by default.}
}
\value{
  A list with two elements, where both are matrices with 409 rows,
  which correspond to the 409 harmonic constituents available in the
  package. The first element \code{fn} gives the amplitude corrections.
  The second element \code{un} gives the phase corrections.
}

\seealso{
  \code{\link{ftide}}, \code{\link{lambdas}}
}
\examples{
days <- seq(as.Date("2012-12-30"), as.Date("2013-01-08"), 1)
lamb <- lambdas(days)
nodal_adj(lamb[3,], lamb[4,], lamb[5,])
}
\keyword{manip}




