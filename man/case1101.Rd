\name{case1101}
\alias{case1101}
\docType{data}
\title{Alcohol Metabolism in Men and Women}
\description{
  These data were collected on 18 women and 14 men to investigate a
  certain theory on why women exhibit a lower tolerance for alcohol and
  develop alcohol--related liver disease more readily than men.
}
\usage{case1101}
\format{
  A data frame with 32 observations on the following 5 variables.
  \describe{
    \item{Subject}{subject number in the study}
    \item{Metabol}{first--pass metabolism of alcohol in the stomach (in
      mmol/liter-hour)}
    \item{Gastric}{gastric alcohol dehydrogenase activity in the stomach
    (in \eqn{\mu}{mu}mol/min/g of tissue)}
    \item{Sex}{sex of the subject}
    \item{Alcohol}{whether the subject is alcoholic or not}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\examples{
str(case1101)
attach(case1101)
      
## EXPLORATION
library(lattice) 
xyplot(Metabol~Gastric|Sex*Alcohol, case1101)  

myPch <- ifelse(Sex=="Female",24,21)
myBg  <- ifelse(Alcohol=="Alcoholic","gray","white")
plot(Metabol~Gastric, pch=myPch,bg=myBg,cex=1.5)
legend(1,12, pch=c(24,24,21,21), pt.cex=c(1.5,1.5,1.5,1.5),
  pt.bg=c("white","gray", "white", "gray"),
  c("Non-alcoholic Females", "Alcoholic Females",
  "Non-alcoholic Males", "Alcoholic Males"))                               
identify(Metabol ~ Gastric)
# Left click on outliers to show case number; Esc when finished.

myLm1 <- lm(Metabol ~ Gastric + Sex + Gastric:Sex)  
plot(myLm1, which=1)                                
plot(myLm1, which=4) # Show Cook's Distance; note cases 31 and 32.
plot(myLm1, which=5) # Note leverage and studentized residual for cases 31 and 32.
subject  <- 1:32  # Create ID number from 1 to 32

# Refit model without cases 31 and 32:
myLm2 <- update(myLm1, ~ ., subset = (subject !=31 & subject !=32))      
plot(myLm2,which=1)
plot(myLm2,which=4)
plot(myLm2,which=5)
summary(myLm1)                                                                   
summary(myLm2) # Significance of interaction terms hinges on cases 31 and 32.

myLm3 <- update(myLm2, ~ . - Gastric:Sex) #Drop interaction (without 31,32).
summary(myLm3)
if(require(car)){   # Use the car library
crPlots(myLm3) # Show partial residual (component + residual) plots.
}

## INFERENCE AND INTERPRETATION
summary(myLm3)
confint(myLm3,2:3)

## DISPLAY FOR PRESENTATION 
myCol <- ifelse(Sex=="Male","blue","red")
plot(Metabol ~ Gastric,  
  xlab=expression("Gastric Alcohol Dehydrogenase Activity in Stomach ("*mu*"mol/min/g of Tissue)"), 
  ylab="First-pass Metabolism in the Stomach (mmol/liter-hour)",
  main="First-Pass Alcohol Metabolism and Enzyme Activity for 18 Females and 14 Males", 
  pch=myPch, bg=myBg,cex=1.75, col=myCol, lwd=1)
legend(0.8,12.2, c("Females", "Males"), lty=c(1,2),
    pch=c(24,21), pt.cex=c(1.75,1.75), col=c("red", "blue"))
dummyGastric <- seq(min(Gastric),3,length=100)
beta <- myLm3$coef
curveF <- beta[1] + beta[2]*dummyGastric
curveM <- beta[1] + beta[2]*dummyGastric + beta[3]
lines(curveF ~ dummyGastric, col="red")
lines(curveM ~ dummyGastric, col="blue",lty=2)
text(.8,10,"gray indicates alcoholic",cex = .8, adj=0)

detach(case1101)
}
\keyword{datasets}
