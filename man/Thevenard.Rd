\name{Thevenard}
\docType{data}
\alias{Thevenard}
\title{Sea-Level Data At Thevenard}
\usage{Thevenard}
\description{
  The \code{Thevenard} data frame has 26304 rows and 2 variables. It
  gives hourly sea-levels in metres (above Tide Gauge Zero) recorded 
  by the tide gauge within the (UTC) years of 2012-2014. The sea-levels 
  are in the second column. The first column is a POSIXct object 
  giving the dates and times in UTC.

  Thevenard is one of the sites currently used for the Australian
  Baseline Sea-Level Monitoring Project (ABSLMP). Hourly data for
  these sites is available from the Australian Bureau of
  Meteorology.
  
  To obtain the sea-level in AHD (Australian Height Datum), you
  will need to subtract 0.993 metres from the values given in the
  dataset.  
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{DateTime}{A POSIXct object where times are in UTC.}
    \item{SeaLevel}{The sea-level in metres above Tide Gauge Zero. 
	  Any missing or erroneous data points are set to NA.}
  }
}
\source{
  Australian Bureau of Meteorology.
}
\seealso{\code{\link{ftide}}, \code{\link{harmonics}}}

\keyword{datasets}

