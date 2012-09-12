\name{ex1317}
\alias{ex1317}
\docType{data}
\title{Dinosaur Extinctions---An Observational Study}
\description{
  About 65 million years ago, the dinosaurs suffered a mass extinction
  virtually overnight (in geologic time).  Among many clues, one that
  all scientists regard as crucial is a layer of iridium-rich dust that
  was deposited over much of the earth at that time.  The theory is that
  an event like a volcanic eruption or meteor impact caused a massive
  dust cloud that blanketed the earth for years killing off animals and
  their food sources.  Dataset has Iridium depths by type of deposit.
}
\usage{ex1317}
\format{
  A data frame with 28 observations on the following 3 variables.
  \describe{
    \item{Iridium}{Iridium in samples (ppt)}
    \item{Strata}{a factor with levels \code{"Limestone"} and
      \code{"Shale"}}
    \item{DepthCat}{a factor with six levels: \code{"1"}, \code{"2"},
      \dots, \code{"6"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Alvarez, W. and Asaro, F. (1990).  What Caused the Mass Extinction? An
  Extraterrestrial Impact, \emph{Scientific American} \bold{263}(4): 76--84.
  
  Courtillot, E. (1990). What Caused the Mass Extinction? A Volcanic
  Eruption. \emph{Scientific American} \bold{263}(4): 85--92.
}
\examples{
str(ex1317)
}
\keyword{datasets}
