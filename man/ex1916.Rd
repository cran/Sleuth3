\name{ex1916}
\alias{ex1916}
\docType{data}
\title{Vitamin C and Colds}
\description{
  Fictitious data set based on results of an experiment where subjects
  were randomly divided into two groups and given a placebo or vitamin c
  to take during the cold season.  At the end of the cold season, the
  subjects were interviewed by a physician who determined whether they
  had or had not suffered a cold during the period. Skeptics interviewed
  the 800 subjects to determine who knew and who did not know to which
  group they had been assigned.  Vitamin C has a bitter taste and those
  familiar with it could recognize whether their pills contained it. 
}
\usage{ex1916}
\format{
  A data frame with 4 observations on the following 4 variables.
  \describe{
    \item{Knew}{a factor with levels \code{"no"} and \code{"yes"}}
    \item{Treatment}{a factor with levels \code{"placebo"} and
      \code{"vitC"}} 
    \item{Cold}{number of people who got a cold}
    \item{NoCold}{number of people who did not get a cold}
  }
}
\source{
   Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\examples{
str(ex1916)
}
\keyword{datasets}
