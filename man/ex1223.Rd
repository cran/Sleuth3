\name{ex1223}
\alias{ex1223}
\docType{data}
\title{IQ Score and Income}
\description{
  This is a subset of 2,584 individuals from the 1979 National Longitudinal Study 
  of Youth (NLSY79) survey  who were re-interviewed in 2006, who had paying jobs 
  in 2005, and who had complete values for the variables listed below. A goal is 
  to see whether intelligence (as measured by the ASVAB intelligence test score, 
  AFQT, and its Components, Word, Parag, Math, and Arith) is a better predictor 
  of 2005 income than education and socioeconomic status.
}
\usage{ex1223}
\format{
  A data frame with 2,584 observations on the following 32 variables.
  \describe{
    \item{Subject}{the subject identification number}
    \item{Imagazine}{a variable taking on the value 1 if anyone in the
       respondent's household regularly read magazines in 1979, otherwise 0}
    \item{Inewspaper}{a variable taking on the value 1 if anyone in the
       respondent's household regularly read newspapers in 1979, otherwise 0}
    \item{Ilibrary}{a variable taking on the value 1 if anyone in the
       respondent's household had a library card in 1979, otherwise 0}
    \item{MotherEd}{mother's years of education}
    \item{FatherEd}{father's years of education}
    \item{FamilyIncome78}{family's total net income in 1978}
    \item{Race}{1 = Hispanic, 2 = Black, 3 = Not Hispanic or Black}
    \item{Gender}{a factor with levels \code{"female"} and \code{"male"}}
    \item{Educ}{years of education completed by 2006}
    \item{Science}{score on the General Science test in 1981}    
    \item{Arith}{score on the Arithmetic Reasoning test in 1981}
    \item{Word}{score on the Word Knowledge Test in 1981}
    \item{Parag}{score on the Paragraph Comprehension test in 1981}
    \item{Numer}{score on the Numerical Operations test in 1981}
    \item{Coding}{score on the Coding Speed test in 1981}
    \item{Auto}{score on the Automotive and Shop test in 1981}
    \item{Math}{score on the Mathematics Knowledge test in 1981}
    \item{Mechanic}{score on the Electronics Information test in 1981}
    \item{Elec}{score on the Paragraph Comprehension test in 1981}
    \item{AFQT}{percentile score on the AFQT intelligence test in 1981}
    \item{Income2005}{total annual income in 2005}
    \item{Esteem1}{self reported answer to 1st self esteem question, 2005}
    \item{Esteem2}{self reported answer to 2md self esteem question, 2005}
    \item{Esteem3}{self reported answer to 3rd self esteem question, 2005}
    \item{Esteem4}{self reported answer to 4th self esteem question, 2005}
    \item{Esteem5}{self reported answer to 5th self esteem question, 2005}
    \item{Esteem6}{self reported answer to 6th self esteem question, 2005}
    \item{Esteem7}{self reported answer to 7th self esteem question, 2005}
    \item{Esteem8}{self reported answer to 8th self esteem question, 2005}
    \item{Esteem9}{self reported answer to 9th self esteem question, 2005}
    \item{Esteem10}{self reported answer to 10th self esteem question, 2005}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  National Longitudinal Survey of Youth, U.S. Bureau of Labor Statistics, 
  \url{http://www.bls.gov/nls/home.htm} (May 8, 2008).
}
\seealso{
  \code{\link{ex0222}}, \code{\link{ex0330}}, \code{\link{ex0331}},
  \code{\link{ex0524}}, \code{\link{ex0525}}, \code{\link{ex0828}},
  \code{\link{ex0923}}, \code{\link{ex1033}}
}
\examples{
str(ex1223)
}
\keyword{datasets}
