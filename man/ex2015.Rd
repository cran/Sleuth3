\name{ex2015}
\alias{ex2015}
\docType{data}
\title{Spotted Owl Habitat}
\description{
  A study examined the association between nesting locations of the
  Northern Spotted Owl and availability of mature forests.  Wildlife
  biologists identified 30 nest sites.  The researchers selected 30
  other sites at random coordinates in the same forest.  On the basis of
  aerial photographs, the percentage of mature forest (older than 80
  years) was measured in various rings around each of the 60 sites.
}
\usage{ex2015}
\format{
  A data frame with 60 observations on the following 8 variables.
  \describe{
    \item{Site}{Site, a factor with levels \code{"Random"} and
      \code{"Nest"}} 
    \item{PctRing1}{Percentage of mature forest in ring with outer
      radius 0.91 km}
    \item{PctRing2}{Percentage of mature forest in ring with outer
      radius 1.18 km}
    \item{PctRing3}{Percentage of mature forest in ring with outer
      radius 1.40 km}
    \item{PctRing4}{Percentage of mature forest in ring with outer
      radius 1.60 km}
    \item{PctRing5}{Percentage of mature forest in ring with outer
      radius 1.77 km}
    \item{PctRing6}{Percentage of mature forest in ring with outer
      radius 2.41 km}
    \item{PctRing7}{Percentage of mature forest in ring with outer
      radius 3.38 km}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Ripple W.J., Johnson, D.H., Thershey, K.T. and Meslow E.C. (1991).
  Old--growth and Mature Forests Near Spotted Owl Nests in Western
  Oregon, \emph{Journal of Wildlife Management} \bold{55}(2): 316--318.
}
\examples{
str(ex2015)
}
\keyword{datasets}
