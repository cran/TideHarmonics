\name{lambdas}
\alias{lambdas}
\title{Calculates Astronomical Longitudes}
\description{
  Calculates astronomical longitudes for given days.
  Mainly for internal use.
}
\usage{
  lambdas(dvec, astlon = c("task","cartwright"), \dots)  
}
\arguments{
  \item{dvec}{A vector of days. Should be a Date object or an
    object that can be converted to a Date object.}
  \item{astlon}{The longitude formula to be used. The default
    "task" is the formulas use in the TASK-2000 software. The
	alternative "cartwright" uses Cartwright(1982).}
  \item{\dots}{Passed to the as.Date function.}
}
\value{
  A numeric matrix. Values are in degrees and given in the 
  interval [0,360]. The rows represent astronomical periods 
  of increasing length: sidereal month (s), tropical year (h), 
  lunar perigee (p), lunar nodal (N), sun's perihelion (ph).
  These correspond to the last five Doodson numbers.
}

\seealso{
  \code{\link{ftide}}, \code{\link{harmonics}}
}
\examples{
days <- seq(as.Date("2012-12-30"), as.Date("2013-01-08"), 1)
lambdas(days)
}
\keyword{manip}




