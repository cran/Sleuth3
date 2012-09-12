\name{ex1319}
\alias{ex1319}
\docType{data}
\title{Nature---Nurture}
\description{
  A 1989 study investigated the effect of heredity and environment on
  intelligence.  Data are the IQ scores for adopted children whose
  biological and adoptive parents were categorized either in the highest
  or the lowest socioeconomic status category.
}
\usage{ex1319}
\format{
  A data frame with 38 observations on the following 3 variables.
  \describe{
    \item{IQ}{IQ scores of adopted children}
    \item{Adoptive}{a factor with levels \code{"High"} and
      \code{"Low"}; the socioeconomic status of the adoptive parents} 
    \item{Biological}{a factor with levels \code{"High"} and
      \code{"Low"}; the socioeconomic status of the biological parents} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Capron, C. and Duyme, M. (1991).  Children's IQ's and SES of
  Biological and Adoptive Parents in a Balanced Cross-fostering Study,
  \emph{European Bulletin of Cognitive Psychology} \bold{11}(3): 323--348.
}
\seealso{
  \code{\link{ex1605}}
}
\examples{
str(ex1319)
}
\keyword{datasets}
