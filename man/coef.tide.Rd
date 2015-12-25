\name{coef.tide}
\alias{coef.tide}

\title{Coefficients For Tidal Object}
\description{
  Give coefficients and harmonic constituents of a tidal object.
}
\usage{
\method{coef}{tide}(object, hc = FALSE, mat = hc, utc = 0, \dots)
}
\arguments{
  \item{object}{An object of class \code{'tide'}.}
  \item{hc}{If \code{TRUE}, returns harmonic constituent values, 
    in order of decreasing amplitude. If \code{mat} is \code{FALSE},
	a vector is returned containing the amplitudes and then the phase 
	lags. If \code{mat} is \code{TRUE}, a four column matrix is 
	returned, with the amplitudes, phase lags, sine coefficients and
    cosine coefficients in the columns.}
  \item{mat}{If \code{TRUE}, a matrix is returned.}
  \item{utc}{The phase lags are given in UTC plus or minus \code{utc}
    hours. For example, if Australian Eastern Standard Time is required,
	use positive 10. If Pacific Standard Time is required, use negative 8.}
  \item{\dots}{Not used.}
}
\value{
  A numeric vector or numeric matrix of sine and cosine coefficients,
  or of amplitudes and phase lags. The phase lags are with respect to
  the time zone specified by the \code{utc} argument, which is UTC by 
  default.
}

\seealso{\code{\link{ftide}}, \code{\link{predict.tide}}}

\examples{
hfit1 <- ftide(Hillarys$SeaLevel, Hillarys$DateTime, hc60)
hfit2 <- ftide(Hillarys$Sea, Hillarys$Date, hc7, smsl=TRUE)
coef(hfit1, hc = TRUE)
coef(hfit2)
coef(hfit2, mat = TRUE)
coef(hfit2, hc = TRUE)
coef(hfit2, hc = TRUE, mat = FALSE)
}
\keyword{models}
