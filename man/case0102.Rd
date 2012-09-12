\name{case0102}
\alias{case0102}
\docType{data}
\title{Sex Discrimination in Employment}
\description{
  The data are the beginning salaries for all 32 male and all 61 female
  skilled, entry--level clerical employees hired by a bank between 1969
  and 1977.
}
\usage{case0102}
\format{
  A data frame with 93 observations on the following 2 variables.
  \describe{
    \item{Salary}{starting salaries (in US\eqn{\$}{$})}
    \item{Sex}{sex of the clerical employee, with levels \code{"Female"}
      and \code{"Male"}} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Roberts, H.V. (1979). Harris Trust and Savings Bank: An Analysis of
  Employee Compensation, \emph{Report 7946}, Center for Mathematical
  Studies in Business and Economics, University of Chicago Graduate
  School of Business.
}
\seealso{
  \code{\link{case1202}}
}
\examples{
attach(case0102)
str(case0102)   

boxplot(Salary ~ Sex, 
  ylab= "Starting Salary (U.S. Dollars)", 
  names=c("61 Females","32 Males"),
  main= "Harris Bank Entry Level Clerical Workers, 1969-1971")

hist(Salary[Sex=="Female"]) 
dev.new()
hist(Salary[Sex=="Male"])

t.test(Salary ~ Sex, var.equal=TRUE) # Equal var. version; 2-sided by default  
t.test(Salary ~ Sex, var.equal=TRUE, 
  alternative = "less")  # 1-sided; that group 1 (females) mean is less 
  
detach(case0102)  
}

\keyword{datasets}
