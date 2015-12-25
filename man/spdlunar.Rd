\name{spdlunar}
\docType{data}
\alias{spdlunar}
\alias{spdsolar}
\title{Speeds For Basic Astronomical Periods}
\usage{
spdlunar
spdsolar
}
\description{
  The \code{spdlunar} vector contains speeds (angular frequencies) in
  degrees per msh (mean solar hour) for the astronomic periods 
  corresponding to the six digits of the (lunar) Doodson number.
  The periods are given by (i) the mean lunar day (ii) the sidereal month
  (iii) the tropical year (iv) the perigeal cycle of the moon (v)
  the nodal cycle of the moon (vi) the perihelion cycle of the sun.

  The \code{spdsolar} vector contains speeds (angular frequencies) in
  degrees per msh (mean solar hour) for the astronomic periods 
  corresponding to the six digits of the solar Doodson number.
  It is the same as \code{spdlunar} except that the first value
  corresponds to the mean solar day instead of the mean lunar day.
  
  To obtain the astronomic periods in msh, take the inverse of the vector 
  and multiply by 360.
}
\format{
  Numeric vectors of length six.
}
\seealso{
  \code{\link{harmonics}}
}
\keyword{datasets}

