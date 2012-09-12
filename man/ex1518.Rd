\name{ex1518}
\alias{ex1518}
\docType{data}
\title{Effectiveness of Measles Vaccine}
\description{
  The data are the number of measles cases reported in the United States for 
  each year from 1950 to 2008. A goal is to explore the effect of the introduction
  of the measles vaccine in 1963 on the series mean.
}
\usage{ex1518}
\format{
  A data frame with 59 observations on the following 3 variables.
  \describe{
    \item{Year}{year}
    \item{Cases}{number of measles cases}
    \item{Vaccine}{a factor with levels \code{"no"} and \code{"yes"}
      indicating whether the measles vaccine had been licensed or not (yes for
      every year starting with 1963)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Center for Disease Control,\cr
  \url{http://www.cdc.gov/vaccines/pubs/pinkbook/downloads/appendices/G/cases& deaths.PDF} 
  retrieved on July 23, 2009
}
\examples{
str(ex1518)
}
\keyword{datasets}
