\name{ex1420}
\alias{ex1420}
\docType{data}
\title{Diet Wars}
\description{
  These data are the weight losses of subjects randomly assigned to one of three 
  diets, and these additional covariates sex, initial age, and body mass index. 
  Is there any evidence from these data that the mean weight loss differs for
  the different diets, after accounting for the effect of the covariates? How big
  are the difference?
}
\usage{ex1420}
\format{
  A data frame with 272 observations on the following 6 variables.
  \describe{
    \item{Subject}{a subject identification number}
    \item{Diet}{a factor with levels \code{"Low-Carbohydrate"},  
      \code{"Low-Fat"}and \code{"Mediterranean"}  }
    \item{Sex}{a factor with levels \code{"F"} and \code{"M"}}
    \item{Age}{subject's age in years}
    \item{BMI}{body mass index in kg/squared meter}
    \item{WtLoss24}{weight at the end of the 24 month study minus 
      initial weight, in kg}   
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex0623}}, \code{\link{ex1921}},
  \code{\link{ex1922}}
}
\examples{                 
str(ex1420)
}
\keyword{datasets}
