\name{ex1507}
\alias{ex1507}
\docType{data}
\title{Global Warming, Southern Hemisphere}
\description{
  The data are the temperatures (in degrees Celsius) averaged for the
  southern hemisphere over a full year, for years 1850 to 2010. The
  161-year average temperature has been subtracted, so each observation
  is the temperature difference from the series average.
}
\usage{ex1507}
\format{
   A data frame with 161 observations on the following 2 variables.
  \describe{
    \item{Year}{year in which yearly average temperature was computed,
      from 1850 to 2010} 
    \item{Temperature}{southern hemisphere temperature minus the 161-year
      average (degrees Celsius)} 
  }
}
\source{
   Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Jones, P.D., D. E. Parker, T. J. Osborn, and K. R. Briffa, (2011) Global 
  and Hemispheric Temperature Anomalies and and Marine Instrumental Records,
  CDIAC, \url{http://cdiac.ornl.gov/trends/temp/jonescru/jones.html},
  Aug 4, 2011 
}
\examples{
str(ex1507)
}
\keyword{datasets}
