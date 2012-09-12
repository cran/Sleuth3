\name{ex2220}
\alias{ex2220}
\docType{data}
\title{Cancer Deaths of Atomic Bomb Survivors}
\description{
  The data are the number of cancer deaths among survivors of the atomic bombs 
  dropped on Japan during World War II, categorized by time (years) after the 
  bomb that death occurred and the amount of radiation exposure that the 
  survivors received from the blast.  Also listed in each cell is the person-
  years at risk, in 100's. This is the sum total of all years spent by all 
  persons in the category. The data can be analyzed by supposing the number of 
  cancer deaths in each cell is Poisson with mean = risk x rate, where risk is 
  the person-years at risk and rate is the rate of cancer deaths per person
  per year. How does the rate depend on the radiation exposure, after accounting
  for years after exposure?
}
\usage{ex2220}
\format{
  A data frame with 42 observations on the following 4 variables.
  \describe{
    \item{Exposure}{radiation exposure, in rads}
    \item{YearsAfter}{years after the exposure}
    \item{AtRisk}{number of survivors in the group}
    \item{Deaths}{number of survivors in the group who died of Cancer}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Pierce, D.A., personal communication
}
\examples{
str(ex2220)
}
\keyword{datasets}
