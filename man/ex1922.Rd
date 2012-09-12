\name{ex1922}
\alias{ex1922}
\docType{data}
\title{Diet Wars III}
\description{
  For the study of different diets for losing weight
  (\code{\link{ex0623}}, \code{\link{ex1420}} and
  \code{\link{ex1921}}), it is desired to see whether women were more or
  less likely to 
  drop out of the study than men (after accounting for the apparent differential
  drop out rates associated with diet). This data set includes the numbers that 
  dropped out and completed the study for each combination of Sex and Diet. 
}
\usage{ex1922}
\format{
  A data frame with 6 observations on the following 4 variables.
  \describe{
    \item{Diet}{a factor with levels \code{"LowCarb"},
      \code{"LowFat"}, and \code{"Medit"}}
    \item{Gender}{a factor with levels \code{"Men"} and \code{"Women"}} 
    \item{DroppedOut}{the number of subjects who dropped out of the study} 
    \item{Completed}{the number of subjects who completed the study}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex0623}}, \code{\link{ex1420}}, \code{\link{ex1921}}
}
\examples{
str(ex1922)
}
\keyword{datasets}
