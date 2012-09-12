\name{case0901}
\alias{case0901}
\docType{data}
\title{Effects of Light on Meadowfoam Flowering}
\description{
  Meadowfoam is a small plant found growing in moist meadows of the US
  Pacific Northwest.  Researchers reported the results from one study in
  a series designed to find out how to elevate meadowfoam production to
  a profitable crop.  In a controlled growth chamber, they focused on
  the effects of two light--related factors: light intensity and the
  timeing of the onset of the ligth treatment.
}
\usage{case0901}
\format{
  A data frame with 24 observations on the following 3 variables.
  \describe{
    \item{Flowers}{average number of flowers per meadowfoam plant}
    \item{Time}{time light intensity regiments started; 1=Late, 2=Early}
    \item{Intensity}{light intensity (in \eqn{\mu}{mu}mol/m\eqn{^2}/sec)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\examples{
str(case0901)
attach(case0901)

## EXPLORATION
plot(Flowers ~ Intensity, pch=ifelse(Time ==1, 19, 21))
myLm <- lm(Flowers ~ Intensity + factor(Time) + Intensity:factor(Time)) 
plot(myLm, which=1) 
summary(myLm)  # Note p-value for interaction term

# INFERENCE
myLm2 <- lm(Flowers ~ Intensity + factor(Time)) 
summary(myLm2)         
confint(myLm2)         

# DISPLAY FOR PRESENTATION
plot(Flowers ~ jitter(Intensity,.3),   
  xlab=expression("Light Intensity ("*mu*"mol/"*m^2*"/sec)"), # Include symbols
  ylab="Average Number of Flowers per Plant",
  main="Effect of Light Intensity and Timing on Meadowfoam Flowering",
  pch=ifelse(Time ==1, 21, 22), bg=ifelse(Time==1, "orange","green"),
  cex=1.7, lwd=2)          
beta <- myLm2$coef  
abline(beta[1],beta[2],lwd=2, lty=2) 
abline(beta[1]+beta[3],beta[2],lwd=2,lty=3) 
legend(700,79,c("Early Start","Late Start"),  
  pch=c(22,21),lwd=2,pt.bg=c("green","orange"),pt.cex=1.7,lty=c(3,2))

detach(case0901)
}
\keyword{datasets}
