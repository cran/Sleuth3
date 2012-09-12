\name{ex0112}
\alias{ex0112}
\docType{data}
\title{Fish Oil and Blood Pressure}
\description{
  Researchers used 7 red and 7 black playing cards to randomly assign 14
  volunteer males with high blood pressure to one of two diets for four
  weeks: a fish oil diet and a standard oil diet.  These data are the
  reductions in diastolic blood pressure.
}
\usage{ex0112}
\format{
  A data frame with 14 observations on the following 2 variables.
  \describe{
    \item{BP}{reduction in diastolic blood pressure (in mm of mercury)}
    \item{Diet}{factor variable indicating the diet that the subject 
        followed, with levels \code{"FishOil"} and \code{"RegularOil"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Knapp, H.R. and FitzGerald, G.A. (1989).  The Antihypertensive Effects
  of Fish Oil, \emph{New England Journal of Medicine} \bold{320}:
  1037--1043. 
}
\examples{
str(ex0112)
}
\keyword{datasets}
