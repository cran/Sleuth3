\name{ex1027}
\alias{ex1027}
\docType{data}
\title{Factors Affecting Extinction}
\description{
  Data are measurements on breeding pairs of land-bird species collected
  from 16 islands around Britain over the course of several decades.
  For each species, the data set contains an average time of extinction
  on those islands where it appeared, the average number of nesting
  pairs, the size of the species and the migratory status of the
  species. 
}
\usage{ex1027}
\format{
  A data frame with 62 observations on the following 5 variables.
  \describe{
    \item{Species}{a character vector indicating the species}
    \item{Time}{average extinction time in years}
    \item{Pairs}{average number of nesting pairs}
    \item{Size}{a factor with levels \code{"L"} and \code{"S"}}
    \item{Status}{a factor with levels \code{"M"} and \code{"R"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Pimm, S.L., Jones, H.L., and Diamond, J. (1988).  On the Risk of
  Extinction, \emph{American Naturalist} \bold{132}(6): 757--785.
}
\examples{
str(ex1027)
}
\keyword{datasets}
