\name{ex1321}
\alias{ex1321}
\docType{data}
\title{Pygmalion}
\description{
  A data set simulated to match the summary statistics and conclusions from
  Rosenthal and Jacobson's Pygmalion study on elementary school students. The
  researchers assigned students at random to a pygmalion or control treatment
  group. They supplied information to the teachers of those in the pygmalion 
  group with the false information that an intelligence test had indicated that 
  the student was likely to excel. The researchers wished to see if the change
  in intelligence test scores for the students tended to be larger for those 
  students labeled as likely to excel.
}
\usage{ex1321}
\format{
  A data frame with 320 observations on the following 5 variables.
  \describe{
    \item{Student}{a student identification number}
    \item{Grade}{the student's grade, 1 through 6} 
    \item{Class}{a factor with 17 levels \code{"1a"}, \code{"1b"}, and 
      so on, to indicate the 17 distinct teacher/classrooms.} 
    \item{Treatment}{a factor with levels \code{"pygmalion"} and 
      \code{"control"} corresponding to whether the researchers had told the
      teacher that the student was \dQuote{likely to succeed} or not} 
    \item{Gain}{the intelligence test score taken at the end of the school
      year minus the intelligence test score taken at the begging of the school 
      year}   
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Rosenthal, R. and Jacobson, L. 1968, \emph{Pygmalion in the Classroom: Teacher
  Expectation and Pupil's Intellectual Development}, Holt, Rinehart, and Winston, 
  Inc.
}
\examples{
str(ex1321)
}
\keyword{datasets}
