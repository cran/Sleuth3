\name{ex0624}
\alias{ex0624}
\docType{data}
\title{A Biological Basis for Homosexuality}
\description{
  Is there a physiological basis for sexual preference?  Researchers
  measured the volumes of four cell groups in the interstitial nuclei of
  the anterior hypothalamus in postmortem tissue from 41 subjects at
  autopsy from seven metropolitan hospitals in New York and California.
}
\usage{ex0624}
\format{
  A data frame with 41 observations on the following 5 variables.
  \describe{
    \item{Volume}{volumes of INAH3 (1000 \eqn{\times}{x}
      mm\eqn{^3}) cell clusters from 41 humans} 
    \item{Group}{a factor with levels
      \tabular{ll}{%
        \code{"Group1"} \tab heterosexual male with AIDS death\cr
        \code{"Group2"} \tab heterosexual male with Non-AIDS death\cr
        \code{"Group3"} \tab homosexual male with AIDS death\cr
        \code{"Group4"} \tab heterosexual female with AIDS death\cr
        \code{"Group5"} \tab heterosexual female with Non-AIDS death
      }
    }
    \item{Sex}{a factor with levels \code{"Female"} and \code{"Male"}}
    \item{Orientation}{a factor with levels \code{"Heterosexual"} and
      \code{"Homosexual"}}
    \item{Death}{a factor with levels \code{"AIDS"} and \code{"Non-AIDS"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  LeVay, S. (1991).  A Difference in Hypothalamic Structure Between
  Heterosexual and Homosexual Men, \emph{Science} \bold{253}(5023):
  1034--1037.
}
\examples{
str(ex0624)
}
\keyword{datasets}
