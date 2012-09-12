\name{ex2017}
\alias{ex2017}
\docType{data}
\title{Catholic stance}
\description{
  The Catholic church has explicitly opposed authoritarian rule in some
  (but not all) Latin American countries.  Although such action could be
  explained as a desire to counter repression or to increase the quality
  of life of its parishioners, A.J. Gill supplies evidence that the
  underlying reason may be competition from evangelical Protestant
  denominations.  He compiled the data given in this data frame.
}
\usage{ex2017}
\format{
  A data frame with 12 observations on the following 5 variables.
  \describe{
    \item{Stance}{Catholic church stance, factor with levels \code{"Pro"}
      and \code{"Anti"}} 
    \item{Country}{Latin American country}
    \item{PQLI}{Physical Quality of Life Index in the mid-1970s; Average
      of live expectancy at age 1, infant mortality and literacy at age
      15+.} 
    \item{Repression}{Average civil rights score for the period of
      authoritarian rule until 1979}
    \item{Competition}{Percentage increase of competitive religious groups
      during the period 1900--1970}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Gill, A.J. (1994).  Rendering unto Caesar?  Religious Competition and
  Catholic Strategy in Latin America, 1962--1979, \emph{American Journal
  of Political Science} \bold{38}(2): 403--425.
}
\examples{
str(ex2017)  
}
\keyword{datasets}
