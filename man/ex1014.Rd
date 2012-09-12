\name{ex1014}
\alias{ex1014}
\docType{data}
\title{Toxic Effects of Copper and Zinc}
\description{
  Researchers randomly allocated 25 beakers containing minnow larvae to
  receive one of 25 treatment combinations of 5 levels of zinc and 5
  levels of copper. 
}
\usage{ex1014}
\format{
  A data frame with 25 observations on the following 3 variables.
  \describe{
    \item{Copper}{amount of copper received (in ppm)}
    \item{Zinc}{amount of zinc received (in ppm)}
    \item{Protein}{protein in minnow larvae exposed to copper and
      zinc (\eqn{\mu}{mu}g/larva)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Ryan, D.A., Hubert, J.J., Carter, E.M., Sprague, J.B. and Parrott,
  J. (1992).  A Reduced-Rank Multivariate Regression Approach to Aquatic
  Joint Toxicity Experiments, \emph{Biometrics} \bold{48}(1): 155--162.
}
\examples{
str(ex1014)
}
\keyword{datasets}
