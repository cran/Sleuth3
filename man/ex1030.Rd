\name{ex1030}
\alias{ex1030}
\docType{data}
\title{Wage and Race 2011}
\description{
  A data set with weekly earnings for 4,952 males between the age of 18 and 70 
  sampled in the March 2011 Current Population Survey (CPS). These males are a 
  subset who had reported earnings and who responded as having race as either 
  ``Only White'' or ``Only Black.'' Also recorded are the region of the country 
  (with four categories: Northeast, Midwest, South, and West), the metropolitan 
  status of the men's employment (with three categories: Metropolitan, Not 
  Metropolitan, and Not Identified), age, education category (with 16 categories 
  ranging from ``Less than first grade'' to ``doctorate Degree''), and education 
  code, which is a numerical value that corresponds roughly to increasing levels 
  of education (and so may be useful for plotting). What evidence do the data 
  provide that the distributions of weekly earnings differ in the populations of 
  white and black workers after accounting for the other variables? By how many 
  dollars or by what percent does the White population mean (or median) exceed 
  the Black population mean (or median)?
}
\usage{ex1030}
\format{
  A data frame with 4,952 observations on the following 7 variables.
  \describe{
    \item{Region}{a factor with levels \code{"Midwest"}, 
      \code{"Northeast"}, \code{"South"} and \code{"West"}}
    \item{MetropolitanStatus}{a factor with levels 
      \code{"Metopolitan"}, \code{"Not Metropolitan "} and 
      \code{"Not Identified"}}
    \item{Age}{age in years}
    \item{EducationCategory}{a factor with 16 levels: 
      \code{"SomeCollegeButNoDegree"}, \code{"AssocDegAcadem"}, 
      \code{"NinthGrade"}, \code{"BachelorsDegree"}, \code{"TenthGrade"},
      \code{"HighSchoolDiploma"}, \cr
      \code{"AssocDegOccupVocat"}, \code{"DoctorateDegree"}, \code{"TwelthButNoDiploma"},\cr
      \code{"LessThanFirstGrade"}, \code{"EleventhGrade"}, \code{"ProfSchoolDegree"},\cr 
      \code{"FifthorSixthGrade"},\code{"SeventhOrEighthGrade"}, \code{"FirstSecondThirdOrFourthGrade"}}
    \item{EducationCode}{a numerical variable indicating the approximate
      ordering of EducationCategory, with higher numbers indicating more 
      education}
    \item{Race}{a factor with levels \code{"Black"} and
      \code{"White"}}
    \item{WeeklyEarnings}{weekly wage in dollars}    
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  U.S. Bureau of Labor Statistics and U.S. Bureau of the Census: Current 
  Population Survey, March 2011 \url{http://www.bls.gov/cps}
}
\examples{
str(ex1030)
}
\keyword{datasets}
