\name{ex0923}
\alias{ex0923}
\docType{data}
\title{Comparing Male and Female Incomes, Accounting for Education and IQ}
\description{
  These data are a subset of the National Longitudinal Study of Youth data, with 
  annual incomes in 2005, intelligence test scores (AFQT) measured in 1981, and
  years of education completed by 2006 for 1,306 males and 1,278 females who were 
  between the ages of 14 and 22 when selected for the survey in 1979, who were 
  available for re-interview in 2006, and who had paying jobs in 2005. Is there 
  any evidence that the mean salary for males exceeds the mean salary for females 
  with the same years of education and AFQT scores? By how many dollars or by what 
  percent is the male mean larger?
}
\usage{ex0923}
\format{
  A data frame with 2,584 observations on the following 5 variables.
  \describe{
    \item{Subject}{the subject identification number}
    \item{Gender}{a factor with levels \code{"female"} and \code{"male"}}
    \item{AFQT}{percentile score on the AFQT intelligence test}
    \item{Educ}{years of education achieved by 2005}
    \item{Income2005}{annual income in 2005}
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
  \code{\link{ex0524}}, \code{\link{ex0525}}, \code{\link{ex0828}},
  \code{\link{ex1033}}, \code{\link{ex1223}}
} 
\examples{
str(ex0923)
}
\keyword{datasets}
