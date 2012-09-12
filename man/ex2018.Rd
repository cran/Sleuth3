\name{ex2018}
\alias{ex2018}
\docType{data}
\title{Fatal Car Accidents Involving Tire Failures on Ford Explorers}
\description{
  This data frame contains data on 1995 and later model compact sports
  utility vehicles involved in fatal accidents in the United States
  between 1995 and 1999, excluding those that were struck by another car
  and excluding accidents that, according to police reports, involved
  alcohol.
}
\usage{ex2018}
\format{
  A data frame with 2,321 observations on the following 4 variables.
  \describe{
    \item{Make}{Type of sports utility vehicle, factor with levels
      \code{"Other"} and \code{"Ford"}}
    \item{VehicleAge}{Vehicle age (in years); surrogate for age of tires}
    \item{Passengers}{Number of passengers}
    \item{Cause}{Cause of fatal accident, factor with levels
      \code{"NotTire"} and \code{"Tire"}}
  }
}
\details{
  The Ford Explorer is a popular sports utility vehicle made in
  the United States and sold throughout the world.  Early in its
  production concern arose over a potential accident risk associated
  with tires of the prescribed size when the vehicle was carrying heavy
  loads, but the risk was thought to be acceptable if a low tire
  pressure was recommended.  The problem was apparently exacerbated by a
  particular type of Firestone tire that was overly prone to separation,
  especially in warm temperatures.  This type of tire was a common one
  used on Explorers in model years 1995 and later.  By the end of 1999
  more than 30 lawsuits had been filed over accidents that were thought
  to be associated with this problem.  U.S. federal data on fatal car
  accidents were analysed at that time, showing that the odds of a fatal
  accident being associated with tire failure were three times as great
  for Explorers as for other sports utility vehicles.

  Additional data from 1999 and additional variables may be used to
  further explore the odds ratio.  It is of interest to see whether the
  odds that a fatal accident is tire-related depend on whether the
  vehicle is a Ford,  after accounting for age of the car and number of
  passengers.  Since the Ford tire problem may be due to the load
  carried, there is some interest in seeing whether the odds associated
  with a Ford depend on the number of passengers.
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex1919}}
}
\examples{
str(ex2018)
}
\keyword{datasets}
