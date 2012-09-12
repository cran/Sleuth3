\name{ex0323}
\alias{ex0323}
\docType{data}
\title{Solar Radiation and Skin Cancer}
\description{
  Data contains yearly skin cancer rates (per 100,000 people) in
  Connecticut from 1938 to 1972 with a code indicating those years that
  came two years after higher than average sunspot activity and those
  years that came two years after lower than average sunspot activity.
}
\usage{ex0323}
\format{
  A data frame with 35 observations on the following 3 variables.
  \describe{
    \item{Year}{year}
    \item{CancerRate}{skin cancer rate per 100,000 people}
    \item{SunspotActivity}{a factor with levels \code{"High"} and
      \code{"Low"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Andrews, D.F. and Herzberg, A.M. (1985).  \emph{Data: A Collection of
  Problems from many Fields for the Student and Research Worker},
  Springer-Verlag. 
}
\examples{
str(ex0323)
}
\keyword{datasets}
