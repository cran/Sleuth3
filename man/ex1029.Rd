\name{ex1029}
\alias{ex1029}
\docType{data}
\title{Wage and Race}
\description{
  Data set contains weekly wages in 1987 for a sample of 25,632 males
  between the age of 18 and 70 who worked full-time along with their
  years of education, years of experience, indicator variable for
  whether they were black, indicator variable for whether they worked in
  or near a city, and a code for the region in the US where they worked.
}
\usage{ex1029}
\format{
  A data frame with 25,437 observations on the following 6 variables.
  \describe{
    \item{Region}{a factor with levels \code{"Midwest"}, 
      \code{"Northeast"}, \code{"South"} and \code{"West"}}
    \item{MetropolitanStatus}{a factor with levels 
      \code{"MetopolitanArea"} and \code{"NotMetropolitanArea"}}
    \item{Exper}{experience in years}
    \item{Educ}{education in years}
    \item{Race}{a factor with levels \code{"Black"} and
      \code{"NotBlack"}}
    \item{WeeklyEarnings}{weekly wage in dollars}    
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Bierens, H.J. and Ginther, D.K. (2001).  Integrated Conditional Moment
  Testing of Quantile Regression Models, \emph{Empirical Economics}
  \bold{26}(1): 307--324; see 
  \url{http://econ.la.psu.edu/~hbierens/QUANTILE.PDF}
  \url{http://econ.la.psu.edu/~hbierens/MEDIAN.HTM}
}
\examples{
str(ex1029)
}
\keyword{datasets}
