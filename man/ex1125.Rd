\name{ex1125}
\alias{ex1125}
\docType{data}
\title{Ingestion Rates of Deposit Feeders}
\description{
  The data are the typical dry weight in mg, the typical ingestion rate (weight 
  of food intake per day for one animal) in mg/day, and the percentage of the 
  food that is composed of organic matter for 22 species of deposit feeders.  The
  goal is to see whether the distribution of species' ingestion rates depends on 
  the percentage of organic matter in the food, after accounting for the effect 
  of species weight and to describe the association.  The last three species 
  happen to be Bivalves, so may behave differently from the others.
}
\usage{ex1125}
\format{
  A data frame with 22 observations on the following 5 variables.
  \describe{
    \item{Species}{a character variable with the name of the species}
    \item{Weight}{the dry weight of the species, in mg}
    \item{Ingestion}{ingestion rate in mg per day}
    \item{Organic}{percentage of organic matter in the food}
    \item{Bivalve}{a factor with levels \code{"no"} and \code{"yes"} to
      indicate whether a species is a bivalve}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Cammen, L. M. (1980) Ingestion Rate: An Empirical Model for Aquatic Deposit 
  Feeders and Detritivores, \emph{Oecologia} \bold{44}: 303--310.
}
\seealso{
  \code{\link{ex0921}}
}
\examples{
str(ex1125)
}
\keyword{datasets}
