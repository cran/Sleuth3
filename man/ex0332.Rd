\name{ex0332}
\alias{ex0332}
\docType{data}
\title{College Tuition}
\description{
  In-state and out-of-state tuition in dollars for random samples of 25 private 
  and 25 public U.S. colleges and universities in 2011-2012.
}
\usage{ex0332}
\format{
  A data frame with 50 observations on the following 4 variables.
  \describe{
    \item{College}{name of the college}
    \item{Type}{a factor with levels \code{"Private"} and \code{"Public"}}
    \item{InState}{in-state tuition in dollars}
    \item{OutOfState}{out-of-state tuition in dollars} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  College Board: \url{http://www.collegeboard.com/student/} (11 July 2011)
}
\examples{
str(ex0332)
}
\keyword{datasets}
