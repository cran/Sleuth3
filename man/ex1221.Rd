\name{ex1221}
\alias{ex1221}
\docType{data}
\title{Predicting Desert Wildflower Blooms}
\description{
  These data are monthly rainfalls from September to March and the subjectively 
  rated quality of the following spring wildflower display for each of a number
  of years at each of four desert locations in the southwestern United States 
  (Upland Sonoran Desert near Tucson, the lower Colorado River Valley section of 
  the Sonoran Desert, the Baja California region of the Sonoran Desert, and the 
  Mojave Desert). The quality of the display was judged subjectively with 
  ordered rating categories of poor, fair, good, great, and spectacular. The 
  variable Score is numerical variable corresponding to these ordered categories.
  A goal is to find an equation for predicting quality of wildflower blooms from
  the rainfall variables.
}
\usage{ex1221}
\format{
  A data frame with 122 observations on the following 12 variables.
  \describe{
    \item{Year}{year of observed wildflower season}
    \item{Region}{a factor variable with 4 levels: \code{"baja"},
        \code{"colorado"}, \code{"mojave"}, and \code{"upland"}}
    \item{Sep}{the September rainfall, in inches} 
    \item{Oct}{the October rainfall, in inches} 
    \item{Nov}{the November rainfall, in inches} 
    \item{Dec}{the December rainfall, in inches} 
    \item{Jan}{the January rainfall, in inches} 
    \item{Feb}{the February rainfall, in inches} 
    \item{Mar}{the March rainfall, in inches} 
    \item{Total}{the total rainfall from September through March, in inches} 
    \item{Rating}{a factor with a subjective assessment of the quality of
      wildflower bloom with levels \code{"FAIR"}, \code{"GOOD"}, \code{"GREAT"}, 
      \code{"POOR"}, and \code{"SPECTACULAR"}}
    \item{Score}{a numerical variable corresponding to the order of
      rating categories, with Poor=0, Fair=1, Good=2, Great=3, and Spectacular=4}
  }
}
\source{
   Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Arizona-Sonora Desert Museum, ``Wildflower Flourishes and Flops: a 50--Year 
  History,'' \url{www.desertmuseum.org/programs/flw_wildflwrbloom.html} 
  (July 25, 2011).
}
\examples{
str(ex1221)
}
\keyword{datasets}
