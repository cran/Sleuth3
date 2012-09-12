\name{ex1217}
\alias{ex1217}
\docType{data}
\title{Pollution and Mortality}
\description{
  Complete data set for problem introduced in \code{\link{ex1123}}.
  Data from early study designed to explore the relationship between air
  pollution and mortality.
}
\usage{ex1217}
\format{
  A data frame with 60 observations on the following 17 variables.
  \describe{
    \item{CITY}{a character vector indicating the city}
    \item{Mortality}{total age-adjusted mortality from all causes}
    \item{Precip}{mean annual precipitation (inches)} 
    \item{Humidity}{percent relative humidity (annual average at 1:00pm)}
    \item{JanTemp}{mean January temperature (degrees F)}
    \item{JulyTemp}{mean July temperature (degrees F)}
    \item{Over65}{percentage of the population aged 65 years or over}
    \item{House}{population per household}
    \item{Educ}{median number of school years completed for
      persons 25 years or older} 
    \item{Sound}{percentage of the housing that is sound with all
      facilities} 
    \item{Density}{population density (in persons per square mile
      of urbanized area)} 
    \item{NonWhite}{percentage of population that is nonwhite}
    \item{WhiteCol}{percentage of employment in white collar occupations}
    \item{Poor}{percentage of households with annual income under
      \eqn{\$}{$}3,000 in 1960} 
    \item{HC}{relative pollution potential of hydrocarbons}
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
  \code{\link{ex1123}}
}
\examples{
str(ex1217)
}
\keyword{datasets}
