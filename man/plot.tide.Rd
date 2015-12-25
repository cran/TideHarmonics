\name{plot.tide}
\alias{plot.tide}

\title{Plot Tidal Object}
\description{
  Plot line traces of estimated tide levels against time.
}
\usage{
\method{plot}{tide}(x, from, to, by = NULL, split = FALSE, which = NULL, 
  msl = !split, ask = split && dev.interactive(), main = NULL, 
  xlab = "Times", ylab = "Level", \dots) 
}
\arguments{
  \item{x}{An object of class \code{'tide'}.}
  \item{from}{Time and date from which to plot. Should be a POSIXct
    object or something which can be converted to a POSIXct object.
	If no time zone is given then UTC is assumed.}
  \item{to}{Time and date up to which to plot. Should be a POSIXct
    object or something which can be converted to a POSIXct object.
	If no time zone is given then UTC is assumed.}
  \item{by}{The time interval in hours between calculated tidal 
    predictions. If \code{NULL}, then the time interval is that which
    produces 1000 evaluations between \code{from} and \code{to}.}
  \item{split}{If \code{TRUE}, plot values for harmonic constituents
    separately. Otherwise, the constituents are summed.}
  \item{which}{If \code{NULL}, use all fitted harmonic constituents.
    If not \code{NULL}, then should be a character vector giving the names
	of the selected constituents.}
  \item{msl}{Add the mean sea-level to the plots? A time-varying mean
    sea-level will be used if this has been implemented for the tidal 
	object.}
  \item{xlab,ylab}{Graphical parameters.}
  \item{main,ask}{Graphical parameters.}
  \item{\dots}{Other parameters to be passed through to plotting
    functions.}
}
\details{
  Note that nodal corrections and time-varying mean sea-levels will 
  be used if and only if they were implemented for the tidal object.
  The longitude formulas will also be the same as those used for the
  tidal object.

  The dates/times plotted on the x-axis correspond to the time zone
  used for the \code{from} object.  
}
\value{
  A list of times and predictions is returned invisibly.
}

\seealso{\code{\link{ftide}}, \code{\link{predict.tide}}}

\examples{
hfit1 <- ftide(Hillarys$SeaLevel, Hillarys$DateTime, hc60)
hfit2 <- ftide(Hillarys$Sea, Hillarys$Date, hc7, smsl=TRUE)
t1 <- as.POSIXct("2012-12-31 23:00", tz = "UTC")
t2 <- as.POSIXct("2013-01-02 14:00", tz = "UTC")
plot(hfit1, t1, t2)
plot(hfit2, t1, t2, split = TRUE)
plot(hfit2, t1, t2, split = TRUE, which = c("M2","S2"))
plot(hfit2, t1, t2, which = "M2", msl = FALSE)
}
\keyword{hplot}
