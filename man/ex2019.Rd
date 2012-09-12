\name{ex2019}
\alias{ex2019}
\docType{data}
\title{Missile Defenses}
\description{
  Following a successful test of an anti-ballistic missile (ABM) in July 1999,
  many prominent U.S. politicians called for the early deployment of a full ABM
  system. The scientific community was less enthusiastic about the efficacy of 
  such a system.  This data set contains the success or failure of ABM tests 
  between March 1983 and May 1995.  Do these data suggest any
  improvement in ABM  
  test success probability over time?
}
\usage{ex2019}
\format{
  A data frame with 17 observations on the following 3 variables.
  \describe{
    \item{Date}{date of an ABM test} 
    \item{Months}{number of months after March 1983}
    \item{Result}{a factor with levels \code{"Failure"} and 
      \code{"Success"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Lewis, G. N., Postol,  T. A.  and Pike, J. (1999) Why National Missile Defense 
  Won't Work, \emph{Scientific American} \bold{281(2)}: 36--41.
}
\examples{
str(ex2019)  
}
\keyword{datasets}
