\name{ex0429}
\alias{ex0429}
\docType{data}
\title{Salvage Logging}
\description{
  The data are the number of tree seedlings per transect in nine logged (L) and 
  seven unlogged (U) plots affected by the Oregon Biscuit Fire, in 2004 and 2005, 
  and the percentage of seedlings lost between 2004 and 2005. The goal is to see
  whether the distribution of seedlings lost differs in logged and unlogged plots.
}
\usage{ex0429}
\format{
  A data frame with 16 observations on the following 5 variables.
  \describe{
    \item{Plot}{an identification code for plot}
    \item{Action}{a factor with levels \code{"L"} for logged and \code{"U"}
      for unlogged}
    \item{Seedlings2004}{the number of seedlings in the plot in 2004}
    \item{Seedlings2005}{the number of seedlings in the plot in 2005}
    \item{PercentLost}{the percentage of 2004 seedlngs that were lost}    
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Donato, D.C., Fontaine, J.B., Campbell, J.L., Robinson, W.D., Kauffman, J.B., 
   and Law, B.E. (2006). Post-Wildfire Logging Hinders Regeneration and Increases
   Fire Risk, \emph{Science} \bold{311}: 352. 
}
\examples{
str(ex0429)
}
\keyword{datasets}
