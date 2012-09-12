\name{case0701}
\alias{case0701}
\docType{data}
\title{The Big Bang}
\description{
  Hubble's initial data on 24 nebulae outside the Milky Way.
}
\usage{case0701}
\format{
  A data frame with 24 observations on the following 2 variables.
  \describe{
    \item{Velocity}{recession velocity (in kilometres per second)}
    \item{Distance}{distance from earth (in magaparsec)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Hubble, E. (1929).  A Relation Between Distance and Radial Velocity
  Among Extragalactic Nebulae, \emph{Proceedings of the National Academy
    of Science} \bold{15}: 168--173.
}
\seealso{
  \code{\link{ex0725}}
}
\examples{
str(case0701) 
attach(case0701)  

## EXPLORATION
plot(Distance ~ Velocity)   
myLm <- lm(Distance ~ Velocity)  
abline(myLm) 

myResiduals <- myLm$res  
myFits  <- myLm$fit  
plot(myResiduals ~ myFits)   # Plot residuals versus estimated means.
abline(h=0)  # Draw a horizontal line at 0.     
# OR, use this shortcut...
plot(myLm, which=1) # Residual plot (red curve is a scatterplot smooother)

## INFERENCE
summary(myLm)  
confint(myLm,level=.95)   
myLm2 <- lm(Distance ~ Velocity - 1)   # Drop the intercept.
summary(myLm2) 
confint(myLm2) 

## DISPLAY FOR PRESENTATION
plot(Distance ~ Velocity, xlab="Recession Velocity (km/sec)", 
  ylab="Distance from Earth (megaparsecs)", 
  main="Measured Distance Versus Velocity for 24 Extra-Galactic Nebulae", 
  pch=21, lwd=2, bg="green", cex=1.5 )  
abline(myLm, lty=2, col="blue", lwd=2) 
abline(myLm2, lty=3, col="red", lwd=2) 
legend(-250,2.05, 
  c("unrestricted regression line","regression through the origin"),  
  lty=c(2,3), lwd=c(2,2), col=c("blue","red")) 

detach(case0701)   
}
\keyword{datasets}
