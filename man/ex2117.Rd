\name{ex2117}
\alias{ex2117}
\docType{data}
\encoding{latin1}
\title{Effect of Stress During Conception on Odds of a Male Birth}
\description{
  The probability of a male birth in humans is about .51.  It has
  previously been noticed that lower proportions of male births are
  observed when offspring is conceived at times of exposure to smog,
  floods or earthquakes.  Danish researchers hypothesised that sources
  of stress associated with severe life events may also have some
  bearing on the sex ratio.  To investigate this theory they obtained
  the sexes of all 3,072 children who were born in Denmark between 1
  January 1980 and 31 December 1992 to women who experienced the
  following kind of severe life events in the year of the birth or the
  year prior to the birth: death or admission to hospital for cancer or
  heart attack of their partner or of their other children.  They also
  obtained sexes on a sample of 20,337 births to mothers who did not
  experience these life stress episodes.  This data frame contains the
  data that were collected.  Noticed that for one group the exposure is
  listed as taking place during the first trimester of pregnancy.  The
  rationale for this is that the stress associated with the cancer or
  heart attack of a family member may well have started before the
  recorded time of death or hospital admission.
}
\usage{ex2117}
\format{
  A data frame with 5 observations on the following 4 variables.
  \describe{
    \item{Group}{Indicator for groups to which mothers belong}
    \item{Time}{Indicator for time at which severe life event occurred}
    \item{Number}{Number of births}
    \item{PctBoys}{Percentage of boys born}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Hansen, D., Møller, H. and Olsen, J. (1999).  Severe
  Periconceptional Life Events and the Sex Ratio in Offspring: Follow Up
  Study based on Five National Registers, \emph{British Medical Journal}
  \bold{319}(7209): 548--549.
}
\examples{
str(ex2117)
}
\keyword{datasets}
