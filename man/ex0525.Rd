\name{ex0525}
\alias{ex0525}
\docType{data}
\title{IQ and Future Income}
\description{
  These data are annual incomes in 2005 of a random sample of 2,584 Americans 
  who were selected for the National Longitudinal Survey of Youth in 1979 and 
  who had paying jobs in 2005. The data set also includes a code for the number 
  of years of education that each individual had completed by 2006: <12, 12, 
  13--15, 16, and >16. How strong is the evidence that at least one of the five 
  population distributions (corresponding to the different years of education) 
  is different from the others? By how many dollars or by what percent does the 
  mean or median for each of the last four categories exceed that of the next 
  lowest category?
}
\usage{ex0525}
\format{
  A data frame with 2,584 observations on the following 3 variables.
  \describe{
    \item{Subject}{subject identification number}
    \item{Educ}{a factor for years of education category with levels 
      \code{"<12"}, \code{"12"}, \code{"13-15"}, \code{"16"} and \code{">16"}}
    \item{Income2005}{Annual income in 2005, in U.S. dollars}
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
  \code{\link{ex0524}}, \code{\link{ex0828}}, \code{\link{ex0923}},
  \code{\link{ex1033}}, \code{\link{ex1223}}
}
\examples{
str(ex0525)
}
\keyword{datasets}
