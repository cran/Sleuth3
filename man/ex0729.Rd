\name{ex0729}
\alias{ex0729}
\docType{data}
\title{Sampling Bias in Exit Polls}
\description{
  These data are the number of percentage points by which exit polls over
  estimated the actual vote for candidate John Kerry in the 2004 U.S. 
  presidential election, grouped according to the distance of the exit poll 
  interviewer from the door of the polling location. How strong is the evidence 
  that the mean Kerry overestimate increases with increasing distance of 
  interviewer from the door (thus lending evidence to the theory that supporters 
  of the other candidate, George W Bush, were more inclined to avoid exit 
  pollsters)?
}
\usage{ex0729}
\format{
  A data frame with 6 observations on the following 2 variables.
  \describe{
    \item{OverEstimate}{number of percentage points by which the
       exit poll estimate exceeded the actual percentage voting for Kerry
       (in all precincts  with a similar distance of interviewer from the door }
    \item{Distance}{distance of the interviewer from the door of the
      polling location, in feet}
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
  \code{\link{ex0730}}
}
\examples{
str(ex0729)
}
\keyword{datasets}
