\name{ex1225}
\alias{ex1225}
\docType{data}
\title{Gender Differences in Wages}
\description{
  These data are weekly earnings for 9,835 Americans surveyed in the March 2011 
  Current Population Survey (CPS). What evidence is there from these data that 
  males tend to receive higher earnings than females with the same values of the 
  other variables? By how many dollars or by what percent does the male 
  distribution exceed the female distribution?
}
\usage{ex1225}
\format{
  A data frame with 9,835 observations on the following 9 variables.
  \describe{
    \item{Region}{a factor with levels \code{"Midwest"}, \code{"Northeast"}, 
      \code{"South"}, and \code{"West"}}
    \item{MetropolitanStatus}{a a factor with levels \code{"Metropolitan"}, 
      \code{"Not Identified"}, and \cr
      \code{"Not Metropolitan"}}
    \item{Age}{age in years}
    \item{Sex}{a factor with levels \code{"Female"} and \code{"Male"}}
    \item{MaritalStatus}{a factor with levels \code{"Married"} and 
      \code{"NotMarried"}}
    \item{EdCode}{a numerical variable representing educational 
      attainment, with higher numbers corresponding to higher educational
      categories}
    \item{Education}{a factor with 16 levels of educational category}
    \item{JobClass}{a a factor with levels \code{"FedGov"}, 
      \code{"LocalGov"}, \code{"Private"},and \code{"StateGov"}}
    \item{WeeklyEarnings}{weekly wages in U.S. dollars}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  U.S. Bureau of Labor Statistics and U.S. Bureau of the Census: Current 
  Population Survey, March 2011 \url{http://www.bls.gov/cps/data.htm}  
  July 25, 2011.
}
\examples{
str(ex1225)
}
\keyword{datasets}
