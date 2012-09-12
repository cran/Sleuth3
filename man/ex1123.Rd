\name{ex1123}
\alias{ex1123}
\docType{data}
\title{Air Pollution and Mortality}
\description{
  Does pollution kill people?  Data in one early study designed to
  explore this issue from 5 Standard Metropolitan Statistical Areas in
  the U.S between 1959--1961.
}
\usage{ex1123}
\format{
  A data frame with 60 observations on the following 7 variables.
  \describe{
    \item{City}{a character vector indicating the city}
    \item{Mort}{total age-adjusted mortality from all causes}
    \item{Precip}{mean annual precipitation (inches)} 
    \item{Educ}{median number of school years completed for
      persons 25 years or older} 
    \item{NonWhite}{percentage of population that is nonwhite}
    \item{NOX}{relative pollution potential of oxides of nitrogen}
    \item{SO2}{relative pollution potential of sulfur dioxide}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  McDonald, G.C. and Ayers, J.A. (1978).  Some Applications of the
  \dQuote{Chernoff Faces}: A Technique for Graphically Representing
  Multivariate Data \emph{in} Wang, P.C.C. (ed.) \emph{Graphical
  Representation of Multivariate Data}, Academic Press.
}
\seealso{
  \code{\link{ex1217}}
}
\examples{
str(ex1123)
}
\keyword{datasets}
