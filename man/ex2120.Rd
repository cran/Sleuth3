\name{ex2120}
\alias{ex2120}
\docType{data}
\title{Clever Hans Effect}
\description{
  These data were simulated to match the summary statistics and conclusions of 
  Rosenthal and Fode's Clever Hans experiment. Each of 12 students trained rats 
  to run a maze. The data set contains their number of successful runs 
  out of 50 on each of 5 days, the student's prior expectation of success (on a
  scale from -10 to 10), and a variable indicating treatment--whether or not the 
  students were supplied with the fictitious information that their rights were
  bright.
}
\usage{2120}
\format{
  A data frame with 60 observations on the following 5 variables.
  \describe{
    \item{Student}{a student identification number}
    \item{PriorExp}{the student's prior expectation of rat-training
      success, on a scale from -10 to 10} 
    \item{Treatment}{a factor with levels \code{"bright"} and \code{"dull"}
      corresponding to whether students were told (falsely) that their rats were
      bright or not}
    \item{Day}{day of the study, ranging from 1 to 5}  
    \item{Success}{the number of successful maze runs on a day, out of 50}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
   Rosenthal, R. and  Fode, K.L. (1963)  The Effect of Experimenter Bias on the 
   Performance of the Albino Rat \emph{Behavioral Science} \bold{8:3}: 183--189.
}
\seealso{
  \code{\link{ex1419}}
}
\examples{                 
str(ex2120)
}
\keyword{datasets}
