\name{case1502}
\alias{case1502}
\docType{data}
\title{Global Warming}
\description{
  The data are the temperatures (in degrees Celsius) averaged for the
  northern hemisphere over a full year, for years 1850 to 2010. The
  161-year average temperature has been subtracted, so each observation
  is the temperature difference from the series average. 
}
\usage{case1502}
\format{
  A data frame with 161 observations on the following 2 variables.
  \describe{
    \item{Year}{year in which yearly average temperature was computed,
      from 1850 to 2010} 
    \item{Temperature}{northern hemisphere temperature minus the 161-year
      average (degrees Celsius)} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Jones, P.D., D. E. Parker, T. J. Osborn, and K. R. Briffa, (2011) Global 
  and Hemispheric Temperature Anomalies and and Marine Instrumental Records, 
  CDIAC, \url{http://cdiac.ornl.gov/trends/temp/jonescru/jones.html}, August 4, 2011. 
}
\seealso{
  \code{\link{ex1519}}
}
\examples{
str(case1502)
attach(case1502)

## EXPLORATION AND MODEL BUILDING
plot(Temperature ~ Year, type="b")  # Type = "b" for *both* points and lines

yearSquared <- Year^2
yearCubed <- Year^3
myLm1 <- lm(Temperature ~ Year + yearSquared + yearCubed)
res1 <- myLm1$res
myPacf <- pacf(res1)  # Partial autocorrelation from residuals
r1 <- myPacf$acf[1]  #First serial correlation coefficient    
n <- length(Temperature)   # Series length = 161
v <- Temperature[2:n]  -  r1*Temperature[1:(n-1)]   # Filtered response
ones <- rep(1-r1, n-1)   # make a variable of all 1's
u1 <- Year[2:n]          -  r1*Year[1:(n-1)]   # Filtered "ones"
u2 <- yearSquared[2:n]  -  r1*yearSquared[1:(n-1)]  # Filtered X1
u3 <- yearCubed[2:n]    -  r1*yearCubed[1:(n-1)]  # Filtered X2
myLm2 <- lm(v ~  u1 + u2 + u3 )
res2 <- myLm2$res                                       
pacf(res2)   # Looks fine; don't worry about lag 4 marginal significance
plot(myLm2, which=1)  # Residual plot
summary(myLm2) # Cubic term isn't needed.
myLm3    <- update(myLm2, ~ . - u3) # Drop cubic term

## INFERENCE
summary(myLm3) # Everything remaining is statistically significant.

## GRAPHICAL DISPLAY FOR PRESENTATION
plot(Temperature ~ Year, xlab="Year",
  ylab=expression(paste("Annual Average Temperature (Difference From Average), ",
  degree,"C")),main="Annual Average Temperature in Northern Hemisphere; 1850-2010",
  type="b", pch=21, lwd=2, bg="green", cex=1.5)    
myFits <- myLm3$fit
lines(myFits ~ Year[2:161], col="blue", lwd=2)  
legend(1850,0.6,"Quadratic Regression Fit, Adjusted for AR(1) Serial Correlation",
  col="blue", lwd=2, box.lty=0)

detach(case1502)

}
\keyword{datasets}
