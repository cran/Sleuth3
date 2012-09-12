\name{ex1416}
\alias{ex1416}
\docType{data}
\title{Blood Brain Barrier}
\description{
  Researchers designed an experiment to investigate how delivery of
  brain cancer antibody is influenced by tumor size, antibody molecular
  weight, blood-brain barrier disruption, and delivery route.
}
\usage{ex1416}
\format{
  A data frame with 36 observations on the following 6 variables.
  \describe{
    \item{Agent}{a factor with levels \code{"AIB"}, \code{"DEX7"}
      and \code{"MTX"}}
    \item{Treatment}{a factor with levels \code{"BD"} and
      \code{"NS"}} 
    \item{Route}{a factor with levels \code{"IA"} and
      \code{"IV"}} 
    \item{DaysPost}{days after inoculation}
    \item{BAT}{concentration of antibody in the part of the brain
      around the tumor} 
    \item{LH}{concentration of antibody in the unaffected part of
      the brain} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Barnett, P.A., Roman-Goldstain, S., Ramsey, F., McCormick, C.I.,
  Sexton, G., Szumowski, J. and Neuwelt, E.A. (1995).  Differential
  Permeability and Quantitative MR Imaging of a Human Lung Carcinoma
  Brain Xenograft in the Nude Rat, \emph{American Journal of Pathology}
  \bold{146}(2): 436--449.
}
\seealso{
  \code{\link{case1102}}, \code{\link{ex1417}}
}
\examples{
str(ex1416)
}
\keyword{datasets}
