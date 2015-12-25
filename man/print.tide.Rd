\name{print.tide}
\alias{print.tide}

\title{Print Tidal Object}
\description{
  Printing a tidal object.
}
\usage{
\method{print}{tide}(x, digits = max(3L, getOption("digits") - 3L), \dots)
}
\arguments{
  \item{x}{An object of class \code{'tide'}.}
  \item{digits}{Number of printed digits.}
  \item{\dots}{Not used.}
}
\details{
  A different features vector is printed based on whether the form factor
  is less than 0.5 (indicating a semi-diurnal site) or greater than or 
  equal to 0.5 (indicating a diurnal or mixed semi-diurnal site). If the 
  four harmonic constituents M2 S2 K1 O1 are not included in the fit, then
  the features vector cannot be calculated and is not printed.

  Phase lags are always printed with respect to UTC. The \code{utc} 
  argument of \code{coef.tide} can be used to produce phase lags for 
  different time zones.  
}
\value{
  The tidal object is invisibly returned.
}

\seealso{\code{\link{ftide}}, \code{\link{coef.tide}}}

\examples{
hfit1 <- ftide(Hillarys$SeaLevel, Hillarys$DateTime, hc60)
hfit2 <- ftide(Hillarys$Sea, Hillarys$Date, hc7, smsl=TRUE)
hfit1
hfit2
}
\keyword{models}
