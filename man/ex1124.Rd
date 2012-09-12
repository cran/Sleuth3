\name{ex1124}
\alias{ex1124}
\docType{data}
\title{Natal Dispersal Distances of Mammals}
\description{
  An assessment of the factors affecting dispersal distances is
  important for understanding population spread, recolonization and gene
  flow which are central issues for conservation of many vertebrate
  species.  Researchers gathered data on body weight, diet type and
  maximum natal dispersal distance for various animals.
}
\usage{ex1124}
\format{
  A data frame with 64 observations on the following 4 variables.
  \describe{
    \item{Species}{a character vector indicating the species}
    \item{BodyMass}{bodymass (kg)}
    \item{MaxDist}{maximum dispersal distance (km)}
    \item{Type}{a factor with levels \code{"C"}, \code{"H"} and 
      \code{"O"} indicating carnivore, herbivore, or omnivore}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Sutherland, G.D., Harestad, A.S., Price, K. and Lertzman, K.P. (2000).
  Scaling of Natal Dispersal Distances in Terrestrial Birds and Mammals,
  \emph{Conservation Ecology} \bold{4}(1): 16.
}
\examples{
str(ex1124)
}
\keyword{datasets}
