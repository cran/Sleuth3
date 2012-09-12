\name{case1602}
\alias{case1602}
\docType{data}
\title{Oat Bran and Cholesterol}
\description{
  In a randomized, double-blind, crossover experiment, researchers
  randomly assigned 20 volunteer hospital employees to either a
  low-fiber or low-fiber treatment group. The subjects followed the
  diets for six weeks. After two weeks on their normal diet, all
  patients crossed over to the other treatment group for another six
  weeks.  The total serum cholesterol (in mg/dl) was measured on each
  patient before the first treatment, at the end of the first six week
  treatment, and at the end of the second six week treatment. 
}
\usage{case1602}
\format{
  A data frame with 20 observations on the following 4 variables.
  \describe{
    \item{Baseline}{total serum cholesterol before treatment}
    \item{HiFiber}{total serum cholesterol after the high fiber diet}
    \item{LoFiber}{total serum cholesterol after the low fiber diet}
    \item{Order}{factor to identify order of treatment, with two
      levels \code{"HL"} and \code{"LH"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Swain, J.F., Rouse, I.L., Curley, C.B., and Sacks, F.M. (1990).
  Comparison of the Effects of Oat Bran and Low-fiber 
  Wheat on Serum Lipoprotein Levels and Blood Pressure, \emph{New England
  Journal of Medicine} \bold{320}: 1746--1747. 
}
\examples{
str(case1602)
attach(case1602)
   
## EXPLORATION
highMinusBase <- HiFiber-Baseline  
highMinusLow  <- HiFiber-LoFiber  
plot(highMinusBase ~ highMinusLow)
abline(h=0) # Horizontal line at 0
abline(v=0) # Vertical line at 0
# Hotelling 2-sample t-test for order effect on bivariate response:
myLm1    <- lm(cbind(highMinusBase,highMinusLow) ~ Order )   # Full model
myLm2    <- update(myLm1, ~ . - Order)  # Reduced model withour Order effect
anova(myLm2, myLm1, test="Hotelling") # p-value for Order effect


## INFERENCE: HOTELLING ONE-SAMPLE TEST THAT MEAN OF BIVARIATE RESPONSE IS (0,0)
myLm3    <- lm(cbind(highMinusBase, highMinusLow) ~ 1)   # Full model 
myLm4    <- update(myLm3, ~ . - 1) # Reduced model (with both means = 0)
anova(myLm4, myLm3, test="Hotelling")  # test that the bivariate mean is (0,0)
# Confidence intervals
summary(myLm3)  
HighMinusBase <-  myLm3$coef[1] # -13.850
seHighMinusBase <- 3.533  # Standard error, read from summary(myLm3)
HighMinusLow <- myLm3$coef[2] #  -0.850
seHighMinusLow <- 3.527 # Standard error, read from summary(myLm3)
n <- length(highMinusBase)  # 20: sample size
multiplier <-    sqrt(2*((n-1)/(n-2))*qf(.95,2,n-2))   # See Sleuth, page 495 
HighMinusBase + c(-1,1)*multiplier*seHighMinusBase # 95% CI for High - Base
HighMinusLow + c(-1,2)*multiplier*seHighMinusLow   # 95% CI for High - Low


## GRAPHICAL DISPLAY FOR PRESENTATION
lowMinusBase  <- LoFiber - Baseline    
myPointCode   <- ifelse(Order== "HL",21,22) 
myPointColor  <- ifelse(Order== "HL","green","light blue")  
plot(highMinusBase ~ lowMinusBase,
  xlab="Cholesterol Change (from Baseline) After High Fiber Diet (mg/dl)",
  ylab="Cholesterol Change (From Baseline) After Low Fiber Diet (mg/dl)",
  main="Cholesterol Effects of High- and Low-Cholesterol Diets on 20 Subjects",
  ylim=c(-45,20), pch=myPointCode, bg=myPointColor, cex=2.5, lwd=2)  
abline(h=0)  # Horizontal line at 0
abline(v=0) # Vertical line at 0
legend(-43,22,c("High Fiber Given First","Low Fiber Given First"), pch=c(21,22),
  pt.bg =c("green","light blue"),pt.cex =c(2.5,2.5), lw = c(2,2), lty=c(0,0))

detach(case1602)
}
\keyword{datasets}
