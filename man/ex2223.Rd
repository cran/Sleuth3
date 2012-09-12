\name{ex2223}
\alias{ex2223}
\docType{data}
\title{Space Shuttle O-Ring Failures}
\description{
  On January 27, 1986, the night before the space shuttle
  \emph{Challenger} exploded, an engineer recommended to the National
  Aeronautics and Space Administration (NASA) that the shuttle not be
  launched in the cold weather.  The forecasted temperature for the
  \emph{Challenger} launch was 31 degrees Fahrenheit---the coldest
  launch ever.  After an intense 3-hour telephone conference, officials
  decided to proceed with the launch.  This data frame contains the
  launch temperatures and the number of O-ring problems in 24 shuttle
  launches prior to the \emph{Challenger}.
}
\usage{ex2223}
\format{
  A data frame with 24 observations on the following 2 variables.
  \describe{
    \item{Temp}{Launch temperatures (in degrees Fahrenheit)}
    \item{Incidents}{Numbers of O-ring incidents}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
 \code{\link{case0401}}, \code{\link{ex2011}} 
}
\examples{
str(ex2223)
}
\keyword{datasets}
