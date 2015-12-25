\name{plagtz}
\alias{plagtz}
\title{Convert Phase Lag}
\description{
  Converts phase lags between different time zones.
  Mainly for internal use.
}
\usage{
  plagtz(plag, tzd, indegree = TRUE, outdegree = TRUE) 
}
\arguments{
  \item{plag}{A named numeric vector of phase lags, where the
    names must correspond to the harmonic components. The names
	must be those used by this package, which are in the first
	column of the \code{harmonics} object.}
  \item{tzd}{The time difference in hours. For example, when
    converting from UTC to Australian Eastern Standard Time (AEST), 
	this value must be positive 10.}
  \item{indegree}{If \code{FALSE}, the \code{plag} phase lags 
    are in radians. Degrees are assumed by default.}
  \item{outdegree}{If \code{FALSE}, the returned phase lags 
    are in radians. Degrees are produced by default.}
}
\value{
  A numeric vector. By convention, phase lags are given in the
  interval [0,360] for degrees or [0,2pi] for radians.
}

\seealso{
  \code{\link{ftide}}, \code{\link{coef.tide}}
}
\examples{
pvec <- c(M2 = 34.2, S2 = 256.8)
plagtz(pvec, tzd = 10)
}
\keyword{manip}




