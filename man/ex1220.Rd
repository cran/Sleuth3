\name{ex1220}
\alias{ex1220}
\docType{data}
\title{Galapagos Islands}
\description{
  The number of species on an island is known to be related to the
  island's area.  Of interest is what other variables are also related
  to the number of species, after island area is accounted for, and
  whether the answer differs for native and non native species.
}
\usage{ex1220}
\format{
  A data frame with 30 observations on the following 8 variables.
  \describe{
    \item{Island}{a character vector indicating the island}
    \item{Total}{total number of observed species}
    \item{Native}{number of native species}
    \item{Area}{area (km\eqn{^2})}
    \item{Elev}{elevation (m)}
    \item{DistNear}{distance from nearest island (km)}
    \item{DistSc}{distance from Santa Cruz (km)}
    \item{AreaNear}{area of nearest island (km\eqn{^2})}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Johnson, M.P. and Raven, P.H. (1973). Species Number and Endemism: The
  Galapagos Archipelago Revisited, \emph{Science} \bold{179}(4076):
  893--895.
}
\examples{
str(ex1220)
}
\keyword{datasets}
