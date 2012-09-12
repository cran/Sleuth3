\name{case1102}
\alias{case1102}
\docType{data}
\title{The Blood--Brain Barrier}
\description{
  The human brain is protected from bacteria and toxins, which course
  through the blood--stream, by a single layer of cells called the
  blood--brain barrier.  These data come from an experiment (on rats,
  which process a similar barrier) to study a method of disrupting the
  barrier by infusing a solution of concentrated sugars.
}
\usage{case1102}
\format{
  A data frame with 34 observations on the following 9 variables.
  \describe{
    \item{Brain}{Brain tumor count (per gm)}
    \item{Liver}{Liver count (per gm)}
    \item{Time}{Sacrifice time (in hours)}
    \item{Treatment}{Treatment received}
    \item{Days}{Days post inoculation}
    \item{Sex}{Sex of the rat}
    \item{Weight}{Initial weight (in grams)}
    \item{Loss}{Weight loss (in grams)}
    \item{Tumor}{Tumor weight (in 10\eqn{^{-4}}{^(-4)} grams)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex1416}}, \code{\link{ex1417}}
}
\examples{
str(case1102)
attach(case1102)

## EXPLORATION
logRatio <- log(Brain/Liver)
logTime <- log(Time)
myMatrix <- cbind (logRatio, Days, Weight, Loss, Tumor, logTime)
if(require(car)){   # Use the car library
scatterplotMatrix(myMatrix,groups=Treatment,
  smooth=FALSE, diagonal="histogram", col=c("green","blue"), pch=c(16,17), cex=1.5)
}
 
myLm1 <- lm(logRatio ~ Treatment + logTime + Days + Sex + Weight + Loss + Tumor)
plot(myLm1, which=1)          
if(require(car)){   # Use the car library
  crPlots(myLm1) # Draw partial resdual plots. 
}                              

myLm2   <-  lm(logRatio ~ Treatment + factor(Time) + 
  Days + Sex + Weight + Loss + Tumor)  # Include Time as a factor.
anova(myLm1,myLm2)
if(require(car)){   # Use the car library
  crPlots(myLm2) # Draw partial resdual plots. 
}    

summary(myLm2)  # Use backard elimination 
myLm3 <- update(myLm2, ~ . - Days)   
summary(myLm3)  
myLm4 <- update(myLm3, ~ . - Sex)          
summary(myLm4)
myLm5 <- update(myLm4, ~ . - Weight)
summary(myLm5)
myLm6 <- update(myLm5, ~ . - Tumor)
summary(myLm6)                             
myLm7 <- update(myLm6, ~ . - Loss)
summary(myLm7)   # Final model for inference


## INFERENCE AND INTERPRETATION
myTreatment <- factor(Treatment,levels=c("NS","BD")) # Change level ordering 
myLm7a  <- lm(logRatio ~  factor(Time) + myTreatment)
summary(myLm7a) 
beta <- myLm7a$coef
exp(beta[5])         
exp(confint(myLm7a,5))
# Interpetation: The median ratio of brain to liver tumor counts for barrier-
# disrupted rats is estimated to be 2.2 times the median ratio for control rats 
# (95% CI: 1.5 times to 3.2 times as large). 

## DISPLAY FOR PRESENTATION 
ratio <- Brain/Liver
jTime <- exp(jitter(logTime,.2)) # Back-transform a jittered version of logTime
plot(ratio ~ jTime, log="xy",
  xlab="Sacrifice Time (Hours), jittered; Log Scale",
  ylab="Effectiveness: Brain Tumor Count Relative To Liver Tumor Count; Log Scale",
  main="Blood Brain Barrier Disruption Effectiveness in 34 Rats", 
  pch= ifelse(Treatment=="BD",21,24), bg=ifelse(Treatment=="BD","green","orange"),
  lwd=2, cex=2)
dummyTime     <- c(0.5, 3, 24, 72)
controlTerm   <- beta[1] + beta[2]*(dummyTime==3) + 
  beta[3]*(dummyTime==24) + beta[4]*(dummyTime==72)
controlCurve  <- exp(controlTerm)
lines(controlCurve ~ dummyTime, lty=1,lwd=2)
BDTerm        <- controlTerm + beta[5]
BDCurve       <- exp(BDTerm)
lines(BDCurve ~ dummyTime,lty=2,lwd=2)
legend(0.5,10,c("Barrier disruption","Saline control"),pch=c(21,22),
  pt.bg=c("green","orange"),pt.lwd=c(2,2),pt.cex=c(2,2), lty=c(2,1),lwd=c(2,2))

detach(case1102)
}
\keyword{datasets}
