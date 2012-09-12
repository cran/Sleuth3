\name{ex0524}
\alias{ex0524}
\docType{data}
\title{IQ and Future Income}
\description{
  These data are annual incomes in 2005 for 2,584 Americans who were selected in 
  the National Longitudinal Study of Youth 1979, who were available for re-
  interview in 2006, and who had paying jobs in 2005, along with the quartile
  of their AFQT (IQ) test score taken in 1981. How strong is the evidence that 
  the distributions of 2005 annual incomes differ in the four populations? By 
  how many dollars or by what percent does the distribution of 2005 incomes for 
  those within the highest (fourth) quartile of IQ test scores exceed the 
  distribution for the lowest (first) quartile?
}
\usage{ex0524}
\format{
  A data frame with 2,584 observations on the following 3 variables.
  \describe{
    \item{Subject}{subject identification number}
    \item{IQquartile}{a factor with levels \code{"1stQuartile"},
      \code{"2ndQuartile"}, \code{"3rdQuartile"} and \code{"4thQuartile"}}
    \item{Income2005}{annual income in U.S. dollars, 2005}
  }
}
\source{
    Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
   National Longitudinal Survey of Youth, U.S. Bureau of Labor Statistics, 
   \url{http://www.bls.gov/nls/home.htm} (May 8, 2008).
}
\seealso{
  \code{\link{ex0222}}, \code{\link{ex0330}}, \code{\link{ex0331}},
  \code{\link{ex0525}}, \code{\link{ex0828}}, \code{\link{ex0923}},
  \code{\link{ex1033}}, \code{\link{ex1223}}
}
\examples{
str(ex0524)
}
\keyword{datasets}
