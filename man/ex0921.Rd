\name{ex0921}
\alias{ex0921}
\docType{data}
\title{Ingestion Rates of Deposit Feeders}
\description{
  The data are the typical dry weight in mg, the typical ingestion rate (weight 
  of food intake per day for one animal) in mg/day, and the percentage of the 
  food that is composed of organic matter for 19 species of deposit feeders.  The
  goal is to see whether the distribution of species' ingestion rates depends on 
  the percentage of organic matter in the food, after accounting for the effect 
  of species weight and to describe the association. 
}
\usage{ex0922}
\format{
  A data frame with 19 observations on the following 4 variables.
  \describe{
    \item{Species}{a character variable with the name of the species}
    \item{Weight}{the dry weight of the species, in mg}
    \item{Ingestion}{ingestion rate in mg per day}
    \item{Organic}{percentage of organic matter in the food}
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
  \code{\link{ex1125}}
}
\examples{
str(ex0921)
}
\keyword{datasets}
