\name{ex0127}
\alias{ex0127}
\docType{data}
\title{Environmental Voting of Democrats and Republicans in the U.S. Senate}
\description{
  The data are the number of pro- and anti-environmental votes, according to the League of Conservation Voters, for each member of the U.S. Senate in 2005, 2006, or 2007.
}
\usage{ex0127}
\format{
  A data frame with 112 observations on the following 10 variables.
  \describe{
    \item{State}{the state that the member represented}
    \item{Senator}{name of the senator}
       \item{Party}{a factor representing political party, with levels \code{"R"} for Republican, \code{"D"} for Democratic, and \code{"I"} for Independent}
    \item{Pro2005}{the number of pro-environmental votes in 2005}
    \item{Anti2005}{the number of anti-environmental votes in 2005}
    \item{Pro2006}{the number of pro-environmental votes in 2006}
    \item{Anti2006}{the number of anti-environmental votes in 2006}
    \item{Pro2007}{the number of pro-environmental votes in 2007}
    \item{Anti2007}{the number of anti-environmental votes in 2007}
    \item{PctPro}{the total percentage of a representative's votes between 2005 and 2007 that were deemd to be pro-environmental}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex0126}}
}
\examples{
str(ex0127)
}
\keyword{datasets}
