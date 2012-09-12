\name{ex1417}
\alias{ex1417}
\docType{data}
\title{Second Replicate of the Barrier Disruption Study}
\description{
  Researchers designed an experiment to investigate how delivery of
  brain cancer antibody is influenced by tumor size, antibody molecular
  weight, blood-brain barrier disruption, and delivery route.  The data
  for the first replicate of this study is in \code{\link{ex1416}}.
  This is the second replicate for the study.
}
\usage{ex1417}
\format{
  A data frame with 36 observations on the following 6 variables.
  \describe{
    \item{Agent}{a factor with levels \code{"AIB"}, \code{"DEX70"}
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
  \code{\link{case1102}}, \code{\link{ex1416}}
}
\examples{                 
str(ex1417)
}
\keyword{datasets}
