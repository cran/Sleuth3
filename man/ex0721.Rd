\name{ex0721}
\alias{ex0721}
\docType{data}
\title{Planetary Distances and Order from the Sun}
\description{
  The first three columns are the names, orders of distance from the sun and 
  distances from the sun (scaled so that earth is 1) of the 8 planets in our 
  solar system and the dwarf planet, Pluto. The next three columns are the same,
  but also include the asteroid belt.
}
\usage{ex0721}
\format{
  A data frame with observations on the following 6 variables.
  \describe{
    \item{Name}{name of object in solar system, 9 objects}
    \item{Order}{order of object's distance from the sun}
    \item{Distance}{distance of object from sun, with earth = 1}
    \item{Name2}{name of object in solar system, including asteroid belt}
    \item{Order2}{order of object's distance from the sun}
    \item{Distance2}{distance of object from sun, with earth = 1}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning. 
}
\seealso{
  \code{\link{ex2226}} 
}
\examples{
str(ex0721)
}
\keyword{datasets}
