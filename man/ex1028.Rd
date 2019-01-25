\name{ex1028}
\alias{ex1028}
\docType{data}
\title{El Nino and Hurricanes}
\description{
  Data set with the numbers of Atlantic Basin tropical storms and
  hurricanes for each year from 1950--1997.  The variable storm index is
  an index of overall intensity of hurricane season.  Also listed are
  whether the year was a cold, warm or neutral El Nino year and a
  variable indicating whether West Africa was wet or dry that year.
}
\usage{ex1028}
\format{
  A data frame with 48 observations on the following 7 variables.
  \describe{
    \item{Year}{year}
    \item{ElNino}{a factor with levels \code{"cold"},
      \code{"neutral"} and \code{"warm"}}
    \item{Temperature}{numeric variable with values -1 if
      \code{ElNino} is \code{"cold"}, 0 if \code{"neutral"} and 1 if
      \code{"warm"}}
    \item{WestAfrica}{numeric variable indicating whether West
      Africa was wet (1) or dry (0)}
    \item{Storms}{number of storms}
    \item{Hurricanes}{number of hurricanes}
    \item{StormIndex}{index of overall intensity of hurricane season}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Data were gathered by William Gray of Colorado State University and
  reported on USA Today weather page:
  \code{http://www.usatoday.com/weather/whurnum.htm}
}
\examples{
str(ex1028)
}
\keyword{datasets}
