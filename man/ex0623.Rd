\name{ex0623}
\alias{ex0623}
\docType{data}
\title{Diet Wars}
\description{
  These data are simulated to match the summary and conclusions of a real study 
  of overweight employees who were randomly assigned to three diet groups: 
  a low-fat diet, a low-carb diet (similar to the Atkins diet), and a 
  Mediterranean diet. The study ran for two years, with 272 employees completing 
  the entire protocol. Is there evidence of differences in average weight loss 
  among these diets? If so, which diets appear to be better than which others?
}
\usage{ex0623}
\format{
  A data frame with 272 observations on the following 3 variables.
  \describe{
    \item{Subject}{subject identification number}
    \item{Group}{a factor with levels \code{"Low-Carbohydrate"}, 
      \code{"Low-Fat"}, and \code{"Meditrranean"}}
    \item{WtLoss24}{weight at the end of the 24 month study minus 
      initial weight, in kg} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex1420}}, \code{\link{ex1921}},
  \code{\link{ex1922}}
}
\examples{
str(ex0623)
}
\keyword{datasets}
