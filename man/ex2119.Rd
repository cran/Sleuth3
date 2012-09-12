\name{ex2119}
\alias{ex2119}
\docType{data}
\title{Meta--Analysis of Breast Cancer and Lactation Studies}
\description{
  This data frame gives the results of 10 separate case--control studies
  on the association of breast cancer and whether a woman had
  breast--fed children.
}
\usage{ex2119}
\format{
  A data frame with 20 observations on the following 4 variables.
  \describe{
    \item{Study}{Factor indicating the study from which data was taken}
    \item{Lactate}{Whether women had breast--fed children (lactated)}
    \item{Cancer}{Number of women with breast cancer}
    \item{NoCancer}{Number of women without breast cancer}
  }
}
\details{
  Meta--analysis refers to the analysis of analyses.  When the main
  results of studies can be cast into 2\eqn{\times}{x}2 tables of counts,
  it is natural to combine individual odds ratios with a logistic
  regression model that includes a factor to account for different odds
  from the different studies.  In addition, the odds ratio itself might
  differ slightly among studies because of different effects on
  different populations or different research techniques.  One approach
  for dealing with this is to suppose an underlying common odds ratio
  and to model between--study variability as extra--binomial variation.
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Data gathered from various sources by Karolyn Kolassa as part of a
  Master's project, Oregon State University.
}
\examples{
str(ex2119)
}
\keyword{datasets}
