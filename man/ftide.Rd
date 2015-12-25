\name{ftide}
\alias{ftide}
\title{Fit Tidal Data}
\description{
  Fit tidal data using any of over 400 harmonic constituents.
  Daily nodal corrections and time-varying mean sea-levels
  can be used. 
}
\usage{
ftide(x, dto, hcn = hc60, astlon = c("task","cartwright"),
   nodal = TRUE, smsl = FALSE, span = 0.75, degree = 1, \dots)
}
\arguments{
  \item{x}{A numeric vector or time series object giving the
    sea-levels. Missing values are allowed.}
  \item{dto}{A date/time vector of the same length as \code{x},
    which should be a POSIXct object or something which can be 
	converted to a POSIXct object. If no time zone is given then 
	UTC is assumed. No missing values are allowed.}
  \item{hcn}{A vector of constituent names. Some in-built vectors
    of names can be used: hc4, hc7, hc37, hc60 and hc114. If not
	specified, the vector hc60 is used by default.}
  \item{astlon}{The longitude formula to be used. The default
    "task" is the formulas use in the TASK-2000 software. The
	alternative "cartwright" uses Cartwright(1982).}
  \item{nodal}{Should nodal corrections be be used?}
  \item{smsl}{If \code{TRUE}, then a smooth curve is fitted to
    the mean sea-level based on the loess function. This is 
	designed to account for smooth changes at periods longer
	than the lowest speed harmonic, which by default is the
	solar annual term Sa.}
  \item{span, degree}{Arguments passed to the loess function.}
  \item{\dots}{Passed to the linear model function \code{lm}.}
}
\details{
  The function first removes the mean sea-level from the data
  (which by default is a single number) and the fits a linear 
  model without intercept to sine and cosine terms defined by 
  the specified harmonics. This (by default) includes nodal
  corrections. The sine and cosine coefficients can then be used 
  to derive the amplitude and phases. See the package vignette
  for details.

  Different names are used by various organizations for identical 
  constituents. This package is designed to be robust, so that 
  any common name can be used. In the output, the name will get 
  converted to the set of names that we employ.

  For constituents based on underlying components, we use our own
  (logical) naming scheme rather than the (totally confusing) 
  historical scheme. See \code{\link{harmonics}} and the package 
  vignette for details. Either scheme should work for the input
  vector \code{hcn}.

  The UTC time zone is assumed by default. Even if a different
  time zone is used, the phase lags will be calculated in UTC.
  The \code{utc} argument of \code{coef.tide} can be used to
  derive phase lags for different time zones.

  An error will be produced if two specified harmonic
  components have virtually identical speeds (specifically, if the 
  first five Doodson numbers are the same), even if the nodal 
  corrections are different. This is to avoid numerical problems
  in the linear model fit, because these components will be
  difficult (or impossible) to identify separately.

  The slowest harmonics in the default hc60 vector is the annual 
  solar term Sa. If you do not have at least one year of data you 
  should not include Sa. The fastest harmonics in hc60 have periods 
  of just over 4 hours. If your frequency of observation is more 
  than 2 hours you should not include the faster constituents.  
}
\value{
  A list object of class \code{c('tide','lm')}. This is exactly the
  save as a standard \code{lm} object but with the following
  additional components

  \item{fval}{The form factor, which in terms of amplitudes is
    calculated as (K1+O1)/(M2+S2). This component and the two
	components given below are only available if all four of these
	harmonics are included in the fit.}
  \item{features1}{A vector of fitted features that are relevant 
    for semi-diurnal sites. MLWS = Mean Low Water Springs. MLWN =
    Mean Low Water Neaps. MSL = Mean Sea-Level. MHWN = Mean High 
	Water Neaps. MHWS = Mean High Water Springs.}
  \item{features2}{A vector of fitted features that are relevant 
    for diurnal or mixed semi-diurnal sites. MLLW = Mean Lower Low 
	Water. MHLW = Mean Higher Low Water. MSL = Mean Sea-Level. MLHW =
    Mean Lower High Water. MHHW = Mean Higher High Water.}
  \item{cfmat}{A matrix of sine and cosine coefficients, in the
    same order as the \code{hcn} vector.}
  \item{cfmat}{A matrix of amplitudes, phase lags, sine and cosine 
    coefficients, ordered by decreasing amplitude.}
  \item{origin}{The POSIXct value used as the origin, which is in
    the centre of the \code{dto} vector.}
  \item{vn0}{A named vector containing reference signals (equilibrium
    phases) in degrees for each harmonic constituent.}
  \item{msl}{The mean sea level, either a vector (if \code{smsl} is 
    \code{TRUE}) or a single number (if \code{smsl} is \code{FALSE}).}
  \item{lobj}{The fitted loess object if \code{smsl} is \code{TRUE}.}
  \item{nodal}{The nodal argument.}
  \item{astlon}{The astlon argument.}
}
\seealso{
  \code{\link{harmonics}}, \code{\link{hc114}}, \code{\link{plot.tide}}, \code{\link{predict.tide}}
}
\examples{
hfit1 <- ftide(Hillarys$SeaLevel, Hillarys$DateTime, hc60)
hfit2 <- ftide(Hillarys$Sea, Hillarys$Date, hc7, smsl=TRUE)
hfit1
hfit2
}
\keyword{models}




