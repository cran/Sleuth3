\name{case1401}
\alias{case1401}
\docType{data}
\title{Chimp Learning Times}
\description{
  Researchers taught each of 4 chimps to learn 10 words in American sign
  language and recorded the learning time for each word for each
  chimp. They wished to describe chimp differences and word
  differences. 
}
\usage{case1401}
\format{
  A data frame with 40 observations on the following 4 variables.
  \describe{
    \item{Minutes}{learning time in minutes}
    \item{Chimp}{a factor indicating chimp, with four levels
      \code{"Booee"}, \code{"Cindy"},  \code{"Bruno"} and \code{"Thelma"}}
    \item{Sign}{a factor indicating word taught, with 10 levels}
    \item{Order}{the order in which the sign was taught}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Fouts, R.S. (1973). Acquisition and Testing of Gestural Signs in Four
  Young Chimpanzees, \emph{Science} \bold{180}: 978--980. 
}
\examples{
str(case1401)
attach(case1401)
 
## EXPLORATION AND MODEL DEVELOPMENT
plot(Minutes ~ Sign)
myLm1 <- lm(Minutes ~ Chimp + Sign)   
plot(myLm1,which=1)  # Plot residuals (indicates a need for transformation).
logMinutes <- log(Minutes)
myLm2 <- lm(logMinutes ~ Chimp + Sign)
plot(myLm2, which=1)  # This looks fine.
if(require(car)){   # Use the car library                                   
  crPlots(myLm2) # Partial residual plots
}

## INFERENCE AND INTERPRETATION
myLm3  <- update(myLm2, ~ . - Chimp)  # Fit reduced model without Chimp.
anova(myLm3, myLm2)   # Test for Chimp effect.
myLm4 <- update(myLm2, ~ . - Sign)  # Fit reduced model without Sign.
anova(myLm4, myLm2)    # Test for Sign effect.
# Fit 2-way model without intercept to order signs from easiest to hardest 
myAov1 <- aov(logMinutes ~ Sign + Chimp - 1)  
sort(myAov1$coef[1:10]) # Show the ordering of Signs
orderedSign <- factor(Sign,levels=c("listen","drink","shoe","key","more",
      "food","fruit","hat","look","string") )  # Re-order signs, easiest 1st
myAov2 <- aov(logMinutes ~ orderedSign + Chimp - 1)  # Refit
opar <- par(no.readonly=TRUE)  # Store current graphics parameters settings
par(mar=c(4.1,7.1,4.1,2.1)) # Adjust margins to allow room for y-axis labels
if(require(multcomp)){   # Use the multcomp library   
  myMultComp    <- glht(myAov2, linfct = mcp(orderedSign = "Tukey"))              
  plot(myMultComp)  # Plot Tukey-adjusted confidence intervals.
  summary(myMultComp)   # Show Tukey-adjusted p-values  pairwise comparisons  
  confint(myMultComp)   # Show Tukey-adjusted 95% confidence intervals  
}
par(opar) # Restore original graphics parameters settings

## DISPLAY FOR PRESENTATION
myYLab <- "Log Learning Time, Adjusted for Chimp Effect"
myXLab <- "Sign Learned"      
if(require(car)){   # Use the car library  
crPlots(myAov2, ylab=myYLab, xlab=myXLab,
  main="Learning Times by Sign, Adjusted for Chimp Effects",
  layout=c(1,1)) # Click on graph area to show next page (Just use first one.) 
}  

detach(case1401)
}
\keyword{datasets}
