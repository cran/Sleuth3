\name{ex1918}
\alias{ex1918}
\docType{data}
\title{The Donner Party}
\description{
  In 1846 the Donner party became stranded while crossing the Sierra
  Nevada Mountains near Lake Tahoe.  The data frame has the counts for
  male and female survivors for six age groups.
}
\usage{ex1918}
\format{
  A data frame with 12 observations on the following 4 variables.
  \describe{
    \item{AgeCat}{a numerical code corresponding to six age categories, with 1 = \code{"15-19"},
      2 = \code{"20-29"}, 3 = \code{"30-39"}, 4 = \code{"40-49"}, 5 = \code{"50-59"} and
      6 = \code{"60-69"}} 
    \item{Sex}{a factor with levels \code{"female"} and
      \code{"male"}} 
    \item{Lived}{number that lived}
    \item{Died}{number that died}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Grayson, D.K. (1990). Donner Party Deaths: A Demographic Assessment,
  \emph{Journal of Anthropological Research} \bold{46}: 223--242.
}
\seealso{
  \code{\link{case2001}}
}
\examples{
str(ex1918)
}
\keyword{datasets}
