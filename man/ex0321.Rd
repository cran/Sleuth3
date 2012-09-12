\name{ex0321}
\alias{ex0321}
\docType{data}
\title{Umpire Life Lengths}
\description{
  Researchers collected historical and current data on umpires to
  investigate their life expectancies following the collapse and death
  of a U.S. major league baseball umpire.  They were investigating
  speculation that stress associated with the job posed a health
  risk. Data were found on 227 umpires who had died or had retired and
  were still living.  The data set includes the dates of birth and death.
}
\usage{ex0321}
\format{
  A data frame with 227 observations on the following 3 variables.
  \describe{
    \item{Lifelength}{observed lifetime for those umpires who had
      died by the time of the study or current age of those still
      living} 
    \item{Censored}{0 for those who had died by the time of the
      study or 1 for those who were still living} 
    \item{Expected}{length from actuarial life tables for
      individuals who were alive at the time the person first became an
      umpire} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Cohen, R.S., Kamps, C.A., Kokoska, S., Segal E.M. and Tucker,
  J.B.(2000). Life Expectancy of Major League Baseball Umpires, 
  \emph{The Physician and Sportsmedicine} \bold{28}(5): 83--89. 

}
\examples{
str(ex0321)
}
\keyword{datasets}
