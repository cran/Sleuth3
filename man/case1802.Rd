\name{case1802}
\alias{case1802}
\docType{data}
\title{Vitamin C and the Common Cold}
\description{
  In a randomized experiment, researchers assigned 407 volunteers to receive 
  1,000 mg of Vitamin C daily throughout the cold season and 411 to receive a
  placebo. A physician interviewed the volunteers at the end of the study to
  determine whether or not they had suffered any colds during the study period.      
}
\usage{case1802}
\format{
  A data frame with 2 observations on the following 3 variables.
  \describe{
    \item{Treatment}{a factor with levels \code{"Placebo"} and 
      \code{"VitC"}} 
    \item{Cold}{the number of who got colds}
    \item{NoCold}{the number that did not get any colds} 
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
str(case1802)
attach(case1802) 

library(MASS)        
## INFERENCE (4 methods)
myTable <- cbind(Cold,NoCold)
row.names(myTable) <- c("Placebo","Vitamin C")
myTable
prop.test(myTable, alternative="greater") # Compare 2 binomial proportions 
# Alternative: pop prop. of first column (cold) in larger in first row (placebo)    
prop.test(myTable, alternative="greater", correct=TRUE)   
prop.test(myTable,correct=TRUE) # Use 2-sided alternative to get CI    
chisq.test(myTable)   # Chi-square test
fisher.test(myTable, alternative="greater")
fisher.test(myTable) #  2-sided alternative to get CI for odds ratio
myGlm1  <- glm(myTable ~ Treatment, family=binomial) # logistic reg (Ch 21)
summary(myGlm1)
beta    <- myGlm1$coef
1 - exp(beta[2])  # 0.3474911
1 - exp(confint(myGlm1,2)) # 0.53365918 0.09042098
# Interpretation: The odds of getting a cold are 35% less on Vitamin C than 
# Placebo (95% confidence interval: 9% to 53% less).

detach(case1802)
}
\keyword{datasets}
