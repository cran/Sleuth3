\name{case2002}
\alias{case2002}
\docType{data}
\title{Birdkeeping and Lung Cancer}
\description{
  A 1972--1981 health survey in The Hague, Netherlands, discovered an
  association between keeping pet birds and increased risk of lung
  cancer.  To investigate birdkeeping as a risk factor, researchers
  conducted a \emph{case--control} study of patients in 1985 at four
  hospitals in The Hague (population 450,000).  They identified 49 cases
  of lung cancer among the patients who were registered with a general
  practice, who were age 65 or younger and who had resided in the city
  since 1965.  They also selected 98 controls from a population of
  residents having the same general age structure.
}
\usage{case2002}
\format{
  A data frame with 147 observations on the following 7 variables.
  \describe{
    \item{LC}{Whether subject has lung cancer}
    \item{FM}{Sex of subject}
    \item{SS}{Socioeconomic status, determined by occupation of the
      household's principal wage earner}
    \item{BK}{Indicator for birdkeeping (caged birds in the home for
      more that 6 consecutive months from 5 to 14 years before diagnosis
      (cases) or examination (control))}
    \item{AG}{Age of subject (in years)}
    \item{YR}{Years of smoking prior to diagnosis or examination}
    \item{CD}{Average rate of smoking (in cigarettes per day)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Holst, P.A., Kromhout, D. and Brand, R. (1988).  For Debate: Pet Birds
  as an Independent Risk Factor for Lung Cancer, \emph{British Medical
    Journal} \bold{297}: 13--21.
}
\examples{
str(case2002)
attach(case2002)
   
## EXPLORATION AND MODEL BUILDING
myCode <- ifelse(BK=="Bird" & LC=="LungCancer","Bird & Cancer", 
  ifelse(BK=="Bird" & LC=="NoCancer","Bird & No Cancer",
  ifelse(BK=="NoBird" & LC=="LungCancer","No Bird & Cancer", "No Bird & No Cancer")))
table(myCode)
if(require(car)){   # Use the car library
scatterplotMatrix(cbind(AG,YR,CD), groups=myCode, diagonal="none",reg.line=FALSE,
  pch=c(15,21,15,21), col=c("dark green","dark green","purple","purple"),
  var.labels=c("Age","Years Smoked","Cigarettes per Day"), cex=1.5) 
}

# Reorder the levels so that the model is for log odds of cancer
LC    <- factor(LC, levels=c("NoCancer","LungCancer"))    
myGlm <- glm(LC ~ FM + SS + AG + YR + CD + BK, family=binomial)
if(require(car)){   # Use the car library
  crPlots(myGlm)  }
# It appears that there's an effect of Years of Smoking and of Bird Keeping
# after accounting for other variables; no obvious effects of other variables

# Logistic regression model building using backward elimination (witholding BK)
myGlm1 <- glm(LC ~ FM + SS + AG + YR + CD, family=binomial)
summary(myGlm1)
myGlm2 <- update(myGlm1, ~ . - SS)        
summary(myGlm2)
myGlm3 <- update(myGlm2, ~ . - CD)   
summary(myGlm3)
myGlm4 <- update(myGlm3, ~ . - FM)   
summary(myGlm4) # Everything left has a small p-value (retain the intercept)


## INFERENCE AND INTERPRETATION
myGlm5 <- update(myGlm4, ~ . + BK)    # Now add bird keeping
summary(myGlm5)
myGlm6 <- update(myGlm5, ~ . + BK:YR + AG:YR) # Try interaction terms
anova(myGlm6,myGlm5) # Drop-in-deviance = 1.61 on 2 d.f.
1 - pchisq(1.61,2)    # p-value = .45: no evidence of interaction
anova(myGlm4,myGlm5)   # Test for bird keeping effect
(1 - pchisq(12.612,1))/2  # 1-sided p-value: 0.0001916391
 
BK <- factor(BK, levels=c("NoBird", "Bird"))  # Make "no bird" the ref level
myGlm5b <- glm(LC ~ AG + YR + BK, family=binomial)   
beta <- myGlm5b$coef  # Extract estimated coefficients
exp(beta[4])   # 3.961248                
exp(confint(myGlm5b,4))   # 1.836764 8.900840  
# Interpretation: The odds of lung cancer for people who kept birds were 
# estimated to be 4 times the odds of lung cancer for people of similar age, sex, 
# smoking history, and socio-economic status who didn't keep birds
# (95% confidence interval for this adjusted odds ratio: 1.8 times to 8.9 times).

# See bestglm library for an alternative variable selection technique. 
 
detach(case2002)
}
\keyword{datasets}
