\name{ex1921}
\alias{ex1921}
\docType{data}
\title{Diet Wars II}
\description{
  In the study of different diets for losing weight
  (\code{\link{ex0623}}, \code{\link{ex1420}} and \code{\link{ex1922}}),  
  there appear to have been many more experimental subjects that dropped out 
  from the low carbohydrate diet group than from the other two diet groups. This 
  data set contains the numbers who did and didn't drop out in each diet group. 
  Is there any evidence that the drop out rate differs in the three groups? 
}
\usage{ex1921}
\format{
  A data frame with 3 observations on the following 4 variables.
  \describe{
    \item{Diet}{a factor with levels \code{"LowCarb"},
      \code{"LowFat"}, and \code{"Medit"}}
    \item{DroppedOut}{the number of subjects who dropped out of the study} 
    \item{Completed}{the number of subjects who completed the study}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex0623}}, \code{\link{ex1420}}, \code{\link{ex1922}}
}
\examples{
str(ex1921)
}
\keyword{datasets}
