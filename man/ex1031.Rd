\name{ex1031}
\alias{ex1031}
\docType{data}
\title{Who Looks After the Kids}
\description{
  A data set with Clutch Volume (cubic milimeters) and adult Body Mass (kg) in 
  six different groups of animals: modern maternal-care bird species 
  (Mat), modern paternal-care bird species (Pat), modern biparental-care bird 
  species (BiPI), modern maternal-care crocodiles (Croc), non-avian maniraptoran 
  dinosaurs thought to be ancestors of modern birds (Mani), and other
  non-avian dinosaurs (Othr). The question of interest was which group of 
  modern creatures most closely matches the relationship in the maniraptoran 
  dinosaurs.
}
\usage{ex1031}
\format{
  A data frame with 443 observations on the following 6 variables.
  \describe{
    \item{CommonName}{the common name of the species}
    \item{Genus}{species genus}
    \item{Species}{species name}
    \item{Group}{a factor with 6 levels corresponding to the 6 groups of
      animals: \code{"BiP"}, \code{"Croc"}, \code{"Mani"}, \code{"Mat"}, 
      \code{"Othr"}, and \code{"Pat"}}
    \item{BodyMass}{the average body mass of individuals in the species
      (kg)}
    \item{ClutchVolume}{the total volume of all eggs in a clutch (average
      value for the species)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Varricchio, D. J., Moore, J.r., Erickson, G.M., Norell, M.A., Jackon, F.D. and
  Borkowski, J.J. (2008) Avian Paternal Care Had Dinosaur Origin \emph{Science} 
  \bold{322}: 1826--1828
}
\seealso{
 \code{\link{ex1923}}
}
\examples{
str(ex1031)
}
\keyword{datasets}
