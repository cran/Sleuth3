\name{ex2016}
\alias{ex2016}
\docType{data}
\title{Bumpus Natural Selection Data}
\description{
  Hermon Bumpus analysed various characteristics of some house sparrows
  that were found on the ground after a severe winter storm in 1898.
  Some of the sparrows survived and some perished.  This data set
  contains the survival status, age, the length from tip of beak to tip
  of tail (in mm), the alar extent (length from tip to tip of the extended
  wings, in mm), the weight in grams, the length of the head in mm, the
  length of the humerus (arm bone, in inches), the length of the femur
  (thigh bones, in inches), the length of the tibio--tarsus (leg bone,
  in inches), the breadth of the skull in inches and the length of the
  sternum in inches.
}
\usage{ex2016}
\format{
  A data frame with 87 observations on the following 11 variables.
  \describe{
    \item{Status}{Survival status, factor with levels
      \code{"Perished"} and \code{"Survived"}}
    \item{AG}{a numerical code corresponding to two categories of age, with 1 = \code{"adult"} and
      2 = \code{"juvenile"}}
    \item{TL}{total length (in mm)}
    \item{AE}{alar extent (in mm)}
    \item{WT}{weight (in grams)}
    \item{BH}{length of beak and head (in mm)}
    \item{HL}{length of humerus (in inches)}
    \item{FL}{length of femur (in inches)}
    \item{TT}{length of tibio--tarsus (in inches)}
    \item{SK}{width of skull (in inches)}
    \item{KL}{length of keel of sternum (in inches)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
 \code{\link{ex0221}} 
}
\examples{
str(ex2016)
}
\keyword{datasets}
