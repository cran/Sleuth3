\name{ex1923}
\alias{ex1923}
\docType{data}
\title{Who Looks After the Kids?}
\description{
  One issue concerning the validity of the clutch volume and parental care study 
  of \code{\link{ex1031}} is the selection of the bird species in the 
  set of currently living animals. Was the selection just as good as a random
  sample of species from each of the groups?  One way to study this for birds, at
  least, is to compare the numbers of species from each of the 29 orders of birds
  in the study with the known total number of species in each of the orders. If 
  the selection of birds had been at random, the expected proportion of species 
  in the study from one particular order, n, is the proportion of all species in 
  that order (N=9,866) times the total number of species in the sample (414). 
  That is, the expected number in each sample, if random sampling were used, is 
  (N/9,866)x 414. Calculate the expected numbers and compare the observed numbers 
  with them using Pearson's chi-square statistic. 
  
}
\usage{ex1923}
\format{
  A data frame with 29 observations on the following 3 variables.
  \describe{
    \item{Order}{a character variable with the name of the order}
    \item{N}{the known number of species in the order} 
    \item{n}{the number of sampled species from the order} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex1031}}
}
\examples{
str(ex1923)
}
\keyword{datasets}
