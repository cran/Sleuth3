\name{case1901}
\alias{case1901}
\docType{data}
\title{Sex Role Sterotypes and Personnel Decisions}
\description{
  Researchers gave 48 male bank supervisors attending a management institute
  hypothetical personnel files and asked them whether they would promote
  the applicant based on the file. The personnel files were identical except
  that 24 of them listed a male and 24 listed a female applicant. The assignment
  of managers to receive either a male or female applicant file was carried out
  at random.  
}
\usage{case1901}
\format{
  A data frame with 2 observations on the following 3 variables.
  \describe{
    \item{Gender}{ a factor with levels \code{"Female"} and \code{"Male"}} 
    \item{Promoted}{the number of managers who promoted the applicant}
    \item{NotPromoted}{the number of managers who did not promote the
      applicant} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Rosen, B. and Jerdee, J (1974). Influence of Sex Role Steroetypes on Personnel 
  Decisions, \emph{Journal of Applied Psychology} \bold{59}: 9--14. 
}
\examples{
str(case1901)
attach(case1901)
   
## INFERENCE
myTable             <- cbind(Promoted,NotPromoted)    
row.names(myTable)  <- Gender    
myTable   
fisher.test(myTable, alternative="greater")  
  # Alternative: that odds of Promotion in first row (Males) are greater.
fisher.test(myTable)  # Use 2-sided to get confidence interval for odds ratio
prop.test(myTable) # Compare two binomial proportions


## GRAPHICAL DISPLAY FOR PRESENTATION
myTable
#         Promoted NotPromoted
#Male         21           3
#Female       14          10
prop.test(21,(21+3)) # Est = .875; CI = .665 to .967  
prop.test(14,(14+10))# Est = .583; CI = .369 to .772  

pHat   <- c(0.875,0.583)       
lower95 <- c(0.665, 0.369)
upper95 <- c(0.967, 0.772)
if(require(Hmisc)) {      # Use Hmisc library
  myObj<- Cbind(pHat,lower95,upper95) # Cbind: a form of cbind needed for Dotplot 
  Dotplot(Gender ~ myObj,  
  xlab="Probability of Promotion Based on Applicant File (and 95\% Confidence Intervals)",
    ylab="Gender Listed in Applicant File", ylim=c(.5,2.5), cex=2)
}

detach(case1901)
}
\keyword{datasets}
