\name{case1803}
\alias{case1803}
\docType{data}
\title{Smoking and Lung Cancer}
\description{
  In a retrospective case-control study, researchers identified 86 lung cancer 
  patients and 86 controls (without lung cancer), and categorized them according
  to whether they were smokers or non-smokers. The goal is to see whether the
  odds of lung cancer are greater for smokers than for non-smokers.   
}
\usage{case1803}
\format{
  A data frame with 2 observations on the following 3 variables.
  \describe{
    \item{Smoking}{a factor with levels \code{"NonSmokers"} and 
      \code{"Smokers"}} 
    \item{Cancer}{the number of who were lung cancer patients}
    \item{Control}{the number who were controls} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cenage Learning.
}
\references{
  Anderson, T.W., Reid, D.B.W. and Beaton, G. H. (1972). Vitamin C and the 
  Common Cold, \emph{Canadian Medial Association Journal} \bold{107}: 503--508. 
}
\examples{
str(case1803)
attach(case1803)
   
## INFERENCE
myTable   <- cbind(Cancer,Control)   # Make a 2-by-2 table of counts 
row.names(myTable)  <- Smoking   # Assign the levels of Smoking as row names  
myTable   

fisher.test(myTable,  alternative="greater")  # Alternative: that odds of Cancer 
  # in first row are greater.
fisher.test(myTable) # 2-sided alternative to get CI for odds ratio
myGlm1  <- glm(myTable ~ Smoking, family=binomial) # logistic reg (Ch 21)
summary(myGlm1)
exp(myGlm1$coef[2]) # 5.37963 : Estimated odds ratio
exp(confint(myGlm1)[2,]) #  1.675169 24.009510:  Approximate confidence interval
# Interpretation: The odds of cancer ar 5.4 times as large for smokers as for 
# non-smokers (95% confidence interval: 1.7 to 24.0 times as large).

detach(case1803)
}
\keyword{datasets}
