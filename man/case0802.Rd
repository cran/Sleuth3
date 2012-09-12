\name{case0802}
\alias{case0802}
\docType{data}
\title{Breakdown Times for Insulating Fluid under different Voltage}
\description{
  In an industrial laboratory, under uniform conditions, batches of
  electrical insulating fluid were subjected to constant voltages until
  the insulating property of the fluids broke down.  Seven different
  voltage levels were studied and the measured reponses were the times
  until breakdown.
}
\usage{case0802}
\format{
  A data frame with 76 observations on the following 3 variables.
  \describe{
    \item{Time}{times until breakdown (in minutes)}
    \item{Voltage}{voltage applied (in kV)}
    \item{Group}{factor variable (group number)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Nelson, W.B., 1970, G.E. Co. Technical Report 71-C-011, Schenectady, N.Y.
}
\examples{
str(case0802)
attach(case0802)
     
## EXPLORATION
plot(Time ~ Voltage)
myLm <- lm(Time ~ Voltage)
plot(myLm, which=1)   # Residual plot
logTime <- log(Time)
plot(logTime ~ Voltage)
myLm <- lm(logTime ~ Voltage)
abline(myLm)
plot(myLm,which=1)  # Residual plot 
myOneWay <- lm(logTime ~ factor(Voltage))   
anova(myLm, myOneWay)  # Lack of fit test for simple regression (seems okay) 
 
## INFERENCE AND INTERPREATION
beta <- myLm$coef
100*(1 - exp(beta[2]))   # Back-transform estimated slope 
100*(1 - exp(confint(myLm,"Voltage")))  
# Interpretation: Associated with each 1 kV increase in voltage is a 39.8% 
# decrease in median breakdown time (95% CI: 32.5% decrease to 46.3% decrease).

## DISPLAY FOR PRESENTATION
options(scipen=50)  # Do this to avoid scientific notation on y-axis 
plot(Time ~ Voltage, log="y", xlab="Voltage (kV)",
  ylab="Breakdown Time (min.); Log Scale",
  main="Breakdown Time of Insulating Fluid as a Function of Voltage Applied",
  pch=21, lwd=2, bg="green", cex=1.75 )     
dummyVoltage <- c(min(Voltage),max(Voltage)) 
meanLogTime <- beta[1] + beta[2]*dummyVoltage  
medianTime <- exp(meanLogTime)  
lines(medianTime ~ dummyVoltage, lwd=2, col="blue")  

detach(case0802)
}
\keyword{datasets}
