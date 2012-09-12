\name{ex2224}
\alias{ex2224}
\docType{data}
\title{Valve Failure in Nuclear Reactors}
\description{
  This data frame contains data on characteristics and numbers of
  \emph{failures} observed in valve types from one pressurised water
  reactor. 
}
\usage{ex2224}
\format{
  A data frame with 90 observations on the following 7 variables.
  \describe{
    \item{System}{a numerical code corresponding to 5 categories of system (1 = containment, 2 = nuclear, 3 = power conversion, 4 = safety, 5 = process auxiliary)}
    \item{Operator}{a numerical code corresponding to 4 different operator types (1 = air, 2 = solenoid, 3 = motor=driven, 4 = manual)}
    \item{Valve}{a numerical code corresponding to 6 different valve types (1 = ball, 2 = butterfly, 3 = diaphram, 4 = gate, 5 = globe, 6 = directional control) }
    \item{Size}{a numerical code corresponding to 3 head size categories (1 = less than 2 inches,
      2 = 2--10 inches, 3 = 10--30 inches)}
    \item{Mode}{a numerical code corresponding to two categories of operation mode (1 = normally closed, 2 = normally open)}
    \item{Failures}{Number of failures observed}
    \item{Time}{Lengths of observation time}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Moore, L.M. and Beckman, R.J. (1988). Appropriate One-Sided Tolerance
  Bounds on the Number of Failures using Poisson Regression,
  \emph{Technometrics} \bold{30}: 283--290.
}
\examples{
str(ex2224)
}
\keyword{datasets}
