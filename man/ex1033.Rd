\name{ex1033}
\alias{ex1033}
\docType{data}
\title{IQ Score and Income}
\description{
  This is a subset of the National Longitudinal Study of Youth (NLSY79) data,
  with annual incomes in 2005 (in U.S. dollars, as Recorded in a 2006 interview); 
  scores on the Word Knowledge, Paragraph Comprehension, Arithmetic Reasoning, 
  and Mathematics Knowledge portions of the Armed Forces Vocational Aptitude 
  Battery (ASVAB) of tests taken in 1981; and the percentile score of the Armed 
  Forces Qualifying Test (AFQT), which is  a linear combination of the four 
  component tests mentioned above (but note that AFQT reported here is the 
  percentile, which is not a linear combination of the four component scores). 
  Which of the five test scores seem to be the most important predictors of 2005 
  income? Is the AFQT sufficient by itself?
}
\usage{ex1033}
\format{
  A data frame with 2,584 observations on the following 7 variables.
  \describe{
    \item{Subject}{the subject identification number}
    \item{Arith}{score on the Arithmetic Reasoning test in 1981}
    \item{Word}{score on the Word Knowledge Test in 1981}
    \item{Parag}{score on the Paragraph Comprehension test in 1981}
    \item{Math}{score on the Mathematics Knowledge test in 1981}
    \item{AFQT}{percentile score on the AFQT intelligence test in 1981}
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
  \code{\link{ex0923}}, \code{\link{ex1223}}
}
\examples{
str(ex1033)
}
\keyword{datasets}
