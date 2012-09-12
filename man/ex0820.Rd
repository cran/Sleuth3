\name{ex0820}
\alias{ex0820}
\docType{data}
\title{Quantifying Evidence for Outlierness}
\description{
  The data are Democratic and Republican vote counts, by (a) absentee ballot and 
  (b) voting machine, for 22 elections in Philadelphia's senatorial districts  
  between 1982 and 1993.
}
\usage{ex0820}
\format{
  A data frame with 22 observations on the following 2 variables.
  \describe{
    \item{Year}{Year of election}
    \item{District}{a factor with levels \code{"D1"}, \code{"D2"},
      \code{"D3"}, \code{"D4"}, \code{"D5"}, \code{"D7"}, and \code{"D8"}} 
    \item{DemAbsenteeVotes}{Number of absentee ballots indicating a
      vote for the Democratic candidate} 
    \item{RepubAbsenteeVotes}{Number of absentee ballots indicating a
      vote for the Republican candidate} 
    \item{DemMachineVotes}{Number of machine-counted ballots 
      indicating a vote for the Democratic candidate}  
    \item{RepubMachineVotes}{Number of machine-coutned ballots 
      indicating a vote for the Republican candidate}
    \item{DemPctOfAbsenteeVotes}{Percentage of absentee ballots 
      indicating a vote for the Democratic candidate}
    \item{DemPctOfMachineVotes}{Percentage of machine-counted ballots 
      indicating a vote for the Democratic candidate} 
    \item{Disputed}{a factor taking on the value \code{"yes"} for the
      disputed election and \code{"no"} for all other elections}  
  }
}
\details{
  In a special election to fill a Pennsylvania State Senate seat in
  1993, the Democrat, William Stinson, received 19,127 machine--counted
  votes and the Republican, Bruce Marks, received 19,691.  In addition,
  there were 1,391 absentee ballots for Stinson and 366 absentee ballots
  for Marks, so that the total tally showed Stinson the winner by 461
  votes. The large disparity between the machine--counted and absentee
  votes, and the resulting reversal of the outcome due to the absentee
  ballots caused some concern about possible illegal influence on the
  absentee votes.  To see whether the discrepancy in absentee votes was
  larger than could be explained by chance, an econometrician considered
  the data given in this data frame (read from a graph in \emph{The New
    York Times}, 11 April 1994).
}
\source{
 Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Ashenfelter, O (1994). Report on Expected Absentee Ballots.  Department of 
  Economics, Princeton University. See also Simon Jackman (2011). pscl: Classes 
  and Methods for R Developed in the Political Science Computational Laboratory,
  Stanford University. Department of Political Science, Stanford University. 
  Stanford, California. R package version 1.03.10. \url{http://pscl.stanford.edu/}
}
\examples{
str(ex0820)
}
\keyword{datasets}
