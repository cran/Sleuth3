\name{ex1716}
\alias{ex1716}
\docType{data}
\title{Insurance}
\description{
  In the 1970's the U.S. Commission on Civil Rights investigated charges
  that insurance companies were attempting to redefine Chicago
  \dQuote{neighborhoods} in order to cancel existing homeowner insurance
  policies or refuse to issue new ones.  Dataset has data on homeowner
  and residential fire insurance policy issuances from 47 zip codes in
  the Chicago area.   
}
\usage{ex1716}
\format{
  A data frame with 47 observations on the following 8 variables.
  \describe{
    \item{ZIP}{last 2 digits of zip code}
    \item{Fire}{fires per 1000 housing units}
    \item{Theft}{thefts per 1000 population}
    \item{Age}{percentage of housing units built prior to 1940}
    \item{Income}{median family income}
    \item{Race}{percentage minority}
    \item{Vol}{number of new policies per 100 housing units}
    \item{Invol}{number of FAIR plan policies and renewals per
      100 housing units} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Andrews, D.F. and Herzberg, A.M. (1985).  \emph{Data: A Collection of
  Problems from many Fields for the Student and Research Worker},
  Springer-Verlag.
}
\examples{
str(ex1716)
}
\keyword{datasets}
