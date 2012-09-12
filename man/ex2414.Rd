\name{ex2414}
\alias{ex2414}
\docType{data}
\title{Amphibian Crisis and UV-B}
\description{
  Data frame contains the percentage of unsuccessful hatching from
  enclosures containing 150 eggs each in a study to investigate whether
  UV-B is responsible for low hatch rates.
}
\usage{ex2414}
\format{
  A data frame with 71 observations on the following 4 variables.
  \describe{
    \item{Percent}{percentage of frog eggs failing to hatch}
    \item{Treatment}{factor variable with levels \code{"NoFilter"},
      \code{"UV-BTransmitting"} and \code{"UV-BBlocking"}}
    \item{Location}{factor variable with levels
      \code{"ThreeCreeks"}, \code{"SparksLake"}, \code{"SmallLake"} and
      \code{"LostLake"}} 
    \item{Photolyase}{Photolyase activity}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Blaustein, A.R., Hoffman, P.D., Hokit, D.G., Kiesecker, J.M., Walls,
  S.C. and Hays, J.B. (1994).  UV Repair and Resistance to Solar UV-B in
  Amphibian Eggs: A Link to Population Declines?  \emph{Proceedings of
  the National Academy of Science, USA} \bold{91}: 1791--1795.
}
\examples{
str(ex2414)
}
\keyword{datasets}
