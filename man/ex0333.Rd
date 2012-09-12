\name{ex0333}
\alias{ex0333}
\docType{data}
\title{Brain Size and Litter Size}
\description{
  Relative brain weights for 51 species of mammal whose average litter
  size is less than 2 and for 45 species of mammal whose average litter
  size is greater than or equal to 2.
}
\usage{ex0333}
\format{
  A data frame with 96 observations on the following 2 variables.
  \describe{
    \item{BrainSize}{relative brain sizes (1000 * Brain
      weight/Body weight) for 96 species of mammals} 
    \item{LitterSize}{factor variable with levels \code{"Small"}
      and \code{"Large"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Sacher, G.A. and Staffeldt, E.F. (1974). Relation of Gestation Time
  to Brain Weight for Placental Mammals:  Implications for the Theory of
  Vertebrate Growth, \emph{American Naturalist} \bold{108}: 593--613. 
}
\seealso{
  \code{\link{case0902}}
}
\examples{
str(ex0333)
}
\keyword{datasets}
