\name{ex0920}
\alias{ex0920}
\docType{data}
\title{Winning Speeds at the Kentucky Derby}
\description{
  Data set contains the year of the Kentucky Derby, the winning horse,
  the condition of the track and the average speed of the winner for
  years 1896--2011. 
}
\usage{ex0920}
\format{
  A data frame with 116 observations on the following 8 variables.
  \describe{
    \item{Year}{year of Kentucky Derby}
    \item{Winner}{a character vector with the name of the winning
      horse}
    \item{Starters}{number of horses that started the race}
    \item{NetToWinner}{the net winnings of the winner, in U.S. dollars}
    \item{Time}{the winning time in seconds}
    \item{Speed}{the winning average speed, n miles per hour}
    \item{Track}{a factor indicating track condition with levels 
      \code{"Fast"}, \code{"Good"}, \code{"Dusty"}, \code{"Slow"}, \code{"Heavy"},
      \code{"Muddy"}, and \code{"Sloppy"}}
    \item{Conditions}{a factor with with 2 levels of track condition,
      with levels \code{"Fast"} and \code{"Slow"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Kentucky Derby: Kentucky Derby Racing Results.
}
\examples{
str(ex0920)
}
\keyword{datasets}
