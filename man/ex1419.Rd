\name{ex1419}
\alias{ex1419}
\docType{data}
\title{Clever Hans Effect}
\description{
  These data were simulated to match the summary statistics and conclusions of 
  Rosenthal and Fode's Clever Hans experiment. Each of 12 students trained rats 
  to run a maze. The data set contains their number of successful runs 
  out of 50 on each of 5 days. It also shows two summarizing statistics for each 
  student: the overall success rate on all 5 days and the slope in the least
  squares regression of daily success rate (number of successes in a day divided 
  by 50) on day. Also included are the student's response to the prior 
  expectation of success question and the student's response to a post-
  experiment question about how relaxed they felt handling their rats 
  (with higher values corresponding to more relaxed). The treatment variable 
  shows whether or not the students were supplied with the fictitious information
  about whether their rats were bright or not.
}
\usage{ex1419}
\format{
  A data frame with 12 observations on the following 12 variables.
  \describe{
    \item{Student}{a student identification number}
    \item{PriorExp}{the student's prior expectation of rat-training
      success, on a scale from -10 to 10} 
    \item{Block}{a numerical variable for pairs of students grouped
      according to their values of PriorExp} 
    \item{Treatment}{a factor with levels \code{"bright"} and \code{"dull"}
      corresponding to whether students were told (falsely) that their rats were
      bright or not}
    \item{Day1}{the number of successful rat mazed runs on day 1}
    \item{Day2}{the number of successful rat mazed runs on day 2}
    \item{Day3}{the number of successful rat mazed runs on day 3}
    \item{Day4}{the number of successful rat mazed runs on day 4}
    \item{Day5}{the number of successful rat mazed runs on day 5}
    \item{Relax}{degree of relaxation students felt in handling their
      rats, on a scale from 0 to 10}
    \item{Success}{the total proportion of successful maze runs in 5 days}
    \item{Slope}{the slope in the least squares regression of mean daily 
      success as a function of day, estimated for each student individually}   
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
   Rosenthal, R. and  Fode, K.L. (1963)  The Effect of Experimenter Bias on the 
   Performance of the Albino Rat \emph{Behavioral Science} \bold{8:3}:
   183--189. 
}
\seealso{
  \code{\link{ex2120}}
}
\examples{                 
str(ex1419)
}
\keyword{datasets}
