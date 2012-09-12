\name{ex2012}
\alias{ex2012}
\docType{data}
\title{Muscular Dystrophy}
\description{
  Duchenne Muscular Dystrophy (DMD) is a genetically transmitted
  disease, passed from a mother to her children.  Boys with the disease
  usually die at a young age; but affected girls usually do not suffer
  symptoms, may unknowingly carry the disease and may pass it to their
  offspring.  It is believed that about 1 in 3,300 women are DMD
  carriers.  A woman might suspect she is a carrier when a related male
  child develops the disease.  Doctors must rely on some kind of test to
  detect the presence of the disease.  This data frame contains
  data on two enzymes in the blood, creatine kinase (CK) and hemopexin
  (H) for 38 known DMD carriers and 82 women who are not carriers.  It
  is desired to use these data to obtain an equation for indicating
  whether a women is a likely carrier.
}
\usage{ex2012}
\format{
  A data frame with 120 observations on the following 3 variables.
  \describe{
    \item{Group}{Indicator whether the woman has DMD (\code{"Case"}) or
      not (\code{"Control"})}
    \item{CK}{Creatine kinase reading}
    \item{H}{Hemopexin reading}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Andrews, D.F. and Herzberg, A.M. (1985). \emph{Data: A Collection of
    Problems From Many Fields For The Student And Research Worker},
  Springer-Verlag, New York.
}
\examples{
str(ex2012)
}
\keyword{datasets}
