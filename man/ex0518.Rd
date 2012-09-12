\name{ex0518}
\alias{ex0518}
\docType{data}
\title{Fatty Acid}
\description{
  A randomized experiment was performed to estimate the effect of a
  certain fatty acid CPFA on the level of a certain protein in rat
  livers.
}
\usage{ex0518}
\format{
  A data frame with 30 observations on the following 4 variables.
  \describe{
    \item{Protein}{levels of protein (x 10) found in rat livers}    
    \item{Treatment}{a factor with levels \code{"Control"},
      \code{"CPFA50"}, \code{"CPFA150"}, \code{"CPFA300"},
      \code{"CPFA450"} and \code{"CPFA600"}}
    \item{Day}{a factor with levels \code{"Day1"}, \code{"Day2"},
      \code{"Day3"}, \code{"Day4"} and \code{"Day5"}}
    \item{TrtDayGroup}{a factor with levels \code{"Group1"},
      \code{"Group2"}, \dots, \code{"Group10"}; the observed levels of the
      Treatment and Day interaction} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\examples{
str(ex0518)
}
\keyword{datasets}
