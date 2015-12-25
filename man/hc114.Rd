\name{hc114}
\docType{data}
\alias{hc114}
\alias{task}
\alias{hc60}
\alias{hc37}
\alias{noaa}
\alias{hc7}
\alias{hc4}
\title{Names Of Commonly Used Harmonic Constituents}
\usage{
hc114
task
hc60
hc37
noaa
hc7
hc4
}
\description{
  These vectors give names of commonly used harmonic constituents.
  
  The \code{hc114} vector gives the first 114 of the 115 constituents
  listed in the TASK-2000 software manual. The order is the same as
  that given in the manual. The 115th constituent has the same speed 
  (but a different nodal correction) as the constituent L2. It is 
  omitted because it probably not sensible to include both.

  The \code{hc60} vector gives the first 60 of the 115 constituents
  listed in the TASK-2000 software manual. The order is the same as
  that given in the manual (which is in order of speed).

  The \code{hc37} vector gives the 37 constituents that are used by
  the NOAA, in the sense that they are publicly available on the
  NOAA website (for USA sites). They are listed in NOAA order. Note
  that NOAA uses constituents S6 and M8, but neither are contained in
  \code{hc60}, and S6 is not contained in \code{hc114}.
  
  The \code{hc7} vector gives the seven major constituents 
  M2 S2 N2 K2 K1 O1 P1.
  
  The \code{hc4} vector gives the four major constituents 
  M2 S2 K1 O1. Unless you are investigating single constituents,
  it is recommended that these four are always included because
  they are fundamental to the classification of a site as
  semi-diurnal, mixed semi-diurnal or diurnal. 

  The \code{task} vector gives the same constituents as \code{hc114}
  but using the TASK-2000 names. The \code{noaa} vector gives the 
  same constituents as \code{hc37} but using the NOAA names.
  The package is written to be robust to different naming schemes,
  and therefore any of these vectors can be used as the \code{hcn}
  argument to the \code{ftide} function.  
}
\format{
  Character vectors of different lengths.
}
\seealso{\code{\link{ftide}}, \code{\link{harmonics}}}
\keyword{datasets}

