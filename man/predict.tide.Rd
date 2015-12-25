\name{predict.tide}
\alias{predict.tide}

\title{Predict The Tide Using Tidal Object}
\description{
  Predict the tide values at specified times.
}
\usage{
\method{predict}{tide}(object, from, to, by = NULL, split = FALSE, 
  which = NULL, msl = !split, \dots)
}
\arguments{
  \item{object}{An object of class \code{'tide'}.}
  \item{from}{Time and date from which to calculate tide values. 
    Should be a POSIXct object or something which can be converted 
	to a POSIXct object. If no time zone is given then UTC is 
	assumed.}
  \item{to}{Time and date up to which to calculate tide values. 
    Should be a POSIXct object or something which can be converted 
	to a POSIXct object. If no time zone is given then UTC is 
	assumed.}
  \item{by}{The time interval in hours between calculated tidal 
    predictions. If \code{NULL}, then the time interval is that which
    produces 1000 evaluations between \code{from} and \code{to}.}
  \item{split}{If \code{TRUE}, predictions are given for harmonic 
    constituents separately. Otherwise, the constituents are summed.}
  \item{which}{If \code{NULL}, use all fitted harmonic constituents.
    If not NULL, then should be a character vector giving the names
	of the selected constituents.}
  \item{msl}{Add the mean sea-level to the predictions? A time-varying 
    mean sea-level will be used if this has been implemented for the tidal 
	object.}
  \item{\dots}{Not used.}
}
\details{
  Note that nodal corrections and time-varying mean sea-levels will 
  be used if and only if they were implemented for the tidal object.
  The longitude formulas will also be the same as those used for the
  tidal object.  
}
\value{
  A numeric vector of predictions (if \code{split} is \code{FALSE}) or
  a numeric matrix of predictions (if \code{split} is \code{TRUE}).
}

\seealso{\code{\link{ftide}}, \code{\link{plot.tide}}}

\examples{
hfit1 <- ftide(Hillarys$SeaLevel, Hillarys$DateTime, hc60)
hfit2 <- ftide(Hillarys$Sea, Hillarys$Date, hc7, smsl=TRUE)
t1 <- as.POSIXct("2012-12-31 23:00", tz = "UTC")
t2 <- as.POSIXct("2013-01-01 14:00", tz = "UTC")
predict(hfit1, t1, t2)
predict(hfit2, t1, t2, split = TRUE)
predict(hfit2, t1, t2, split = TRUE, which = c("M2","S2"))
predict(hfit2, t1, t2, which = "M2", msl = FALSE)
}
\keyword{models}
