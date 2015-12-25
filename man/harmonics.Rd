\name{harmonics}
\docType{data}
\alias{harmonics}
\title{Table Of All 409 Harmonic Constituents}
\usage{harmonics}
\description{
  The \code{harmonics} data frame has 409 rows and 12 variables. It
  shows the standard list of tidal constituents as provided by the
  IHO tidal committee. 
  
  Some corrections and adjustments have been made to the standard 
  list; these are documented in the package vignette. We also use
  a different naming scheme which is more logical and consistent.
  Our names are given in the \code{name} column. The traditional
  names are given in the \code{sname} column. Either can be used
  in the code.
  
  We have retained lower case characters and have used the first 
  three characters for greek letters e.g. the1 for theta1. The code
  has been written for robustness and will still work if you use upper
  case characters and/or full names for greek letters.
  
  There are many variations of constituent names and I have attempted 
  to write the software so that it will work whatever names are used. 
  For example, NOAA uses RHO rather than the more common rho1 or RHO1.
  The names RHO and RHO1 are therefore automatically converted to rho1.
  TASK-2000 uses LAMDA1 (with the B missing), which is automatically
  converted to lam1.  
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{name}{The name of the constituent, which is unique.}
    \item{sname}{The standard name of the constituent, which is also unique.}
    \item{speed}{The speed (angular frequency) in degrees per hour. 
	  Derived from the Doodson number. To calculate the period in hours,
	  divide 360 by the speed.}
    \item{code}{The extended Doodson code.}
	\item{i1}{The first Doodson number.}
	\item{i2}{The second Doodson number.}
	\item{i3}{The third Doodson number.}
	\item{i4}{The forth Doodson number.}
	\item{i5}{The fifth Doodson number (always zero).}
	\item{i6}{The sixth Doodson number (mostly zero).}
	\item{phi}{The phase constant in degrees.}
	\item{nodal}{The type of nodal correction, as taken from the standard list.}
  }
}
\source{
  Standard list of tidal constituents of the IHO tidal committee.
}
\seealso{\code{\link{ftide}}, \code{\link{hc114}}}

\keyword{datasets}

