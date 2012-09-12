\name{ex0730}
\alias{ex0730}
\docType{data}
\title{Sampling Bias in Exit Polls 2}
\description{
  These data are the average proportion of voters refusing to be interviewed by
  exit pollsters in the 2004 U.S. presidential election, grouped gby age of the
  interviewer, and the approximate age of the interviewer. What evidence do the 
  data provide that the mean refusal rate decreased with incrasing age of 
  interviewer?
}
\usage{ex0730}
\format{
  A data frame with 6 observations on the following 2 variables.
  \describe{
    \item{Age}{age of the exit poll interviewer, years}
    \item{Refusal}{average proportion of voters refusing to be 
      interviewed}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Evaluation of Edison/Mitofsky Election System 2004 prepared by Edison Media
  Research and Mitofsky International for the National Election Pool (NEP), 
  January 15, 2005.
  \url{http://abcnews.go.com/images/Politics/EvaluationofEdisonMitofskyElectionSystem.pdf}
}
\seealso{
  \code{\link{ex0729}}
}
\examples{
str(ex0730)
}
\keyword{datasets}
