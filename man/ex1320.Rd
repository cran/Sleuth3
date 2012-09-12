\name{ex1320}
\alias{ex1320}
\docType{data}
\title{Gender Differences in Performance on Mathematics Achievement Tests}
\description{
  Data set on 861 ACT Assessment Mathematics Usage Test scores from
  1987.  The test was given to a sample of high school seniors who met
  one of three profiles of high school mathematics course work: (a)
  Algebra I only; (b) two Algebra courses and Geometry; and (c) two
  Algebra courses, Geometry, Trigonometry, Advanced Mathematics and
  Beginning Calculus.

  These data were generated from summary statistics for one particular
  form of the test as reported by Doolittle (1989).
}
\usage{ex1320}
\format{
  A data frame with 861 observations on the following 3 variables.
  \describe{
    \item{Sex}{a factor with levels \code{"female"} and
      \code{"male"}} 
    \item{Background}{a factor with levels \code{"a"}, \code{"b"}
      and \code{"c"}}
    \item{Score}{ACT mathematics test score}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  
  Doolittle, A.E. (1989).  Gender Differences in Performance on
  Mathematics Achievement Items, \emph{Applied Measurement in Education}
  \bold{2}(2): 161--177.

  \url{http://www.act.org/research/reports/pdf/ACT_RR87-16.pdf}
  
}
\examples{
str(ex1320)
}
\keyword{datasets}
