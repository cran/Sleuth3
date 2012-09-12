\name{ex1919}
\alias{ex1919}
\docType{data}
\title{Tire-Related Fatal Accidents and Ford Sports Utility Vehicles}
\description{
  Data shows the numbers of compact sports utility vehicles involved in
  fatal accidents in the U.S. between 1995 and 1999, categorized
  according to travel speed, make of car (Ford or other), and cause of
  accident (tire-related or other). 
}
\usage{ex1919}
\format{
  A data frame with 8 observations on the following 4 variables.
  \describe{
    \item{SpeedCat}{a numerical code corresponding to 4 categories of speed (in miles per hour), with 1 = \code{"0-40"},
      2 = \code{"41-55"}, 3 = \code{"56-65"} and 4 = \code{">65"}}
    \item{Make}{a factor with levels \code{"Ford"} and
      \code{"Other"}} 
    \item{Other}{cause of accident was other than tire-related}
    \item{Tire}{cause of accident was tire-related}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex2018}}
}
\examples{
str(ex1919)
}
\keyword{datasets}
