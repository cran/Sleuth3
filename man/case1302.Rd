\name{case1302}
\alias{case1302}
\docType{data}
\title{Pygmalion Effect}
\description{
  One company of soldiers in each of 10 platoons was assigned to a
  Pygmalion treatment group, with remaining companies in the platoon
  assigned to a control group. Leaders of the Pygmalion platoons were
  told their soldiers had done particularly well on a battery of tests
  which were, in fact, non-existent.  In this randomised block
  experiment, platoons are experimental units, companies are blocks, and
  average Practical Specialty test score for soldiers in a platoon is
  the response. The researchers wished to see if the platoon response
  was affected by the artificially-induced expectations of the platoon
  leader. 
}
\usage{case1302}
\format{
  A data frame with 29 observations on the following 3 variables.
  \describe{
    \item{Company}{a factor indicating company identification,
      with levels \code{"C1"}, \code{"C2"}, \dots, \code{"C10"}}
    \item{Treat}{a factor indicating treatment with two levels,
      \code{"Pygmalion"} and \code{"Control"}}
    \item{Score}{average score on practical specialty test of all
      soldiers in the platoon} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Eden, D. (1990). Pygmalion Without Interpersonal Contrast Effects:
  Whole Groups Gain from Raising Manager Expectations, \emph{Journal of
    Applied Psychology} \bold{75}(4): 395--398. 
}
\examples{
str(case1302)
attach(case1302)

## EXPLORATION AND MODEL DEVELOPMENT
plot(Score ~ as.numeric(Company),cex=1.5, pch=21, 
  bg=ifelse(Treat=="Pygmalion","blue","light gray"))
myLm1   <- lm(Score ~ Company + Treat + Company:Treat) # Fit with interaction.
plot(myLm1,which=1)  # Plot residuals.
myLm2   <- update(myLm1, ~ . - Company:Treat) # Refit, without interaction.
anova(myLm2, myLm1)  # Show extra-ss-F-test p-value (for interaction effect).
if(require(car)){   # Use the car library                               
  crPlots(myLm2)
}

## INFERENCE
myLm3 <- update(myLm2, ~ . - Company)  # Fit reduced model without Company.
anova(myLm3, myLm2)   # Test for Company effect.
summary(myLm2)   # Show estimate and p-value for Pygmalion effect.  
confint(myLm2,11)  # Show 95% CI for Pygmalion effect.

## DISPLAY FOR PRESENTATION
beta        <- myLm2$coef
partialRes  <- myLm2$res + beta[11]*ifelse(Treat=="Pygmalion",1,0) # partial res
boxplot(partialRes ~ Treat,  # Boxplots of partial residuals for each treatment
  ylab="Average Test Score, Adjusted for Company Effect (Deviation from Company Average)",
  names=c("19 Control Platoons","10 Pygmalion Treated Platoons"),
  col="green", boxlwd=2, medlwd=2,whisklty=1, whisklwd=2, staplewex=.2, 
  staplelwd=2, outlwd=2, outpch=21, outbg="green", outcex=1.5	)	   

detach(case1302)
}
\keyword{datasets}
