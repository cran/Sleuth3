\name{case1902}
\alias{case1902}
\docType{data}
\title{Death Penalty and Race}
\description{
  Lawyers collected data on convicted black murderers in the state of Georgia
  to see whether convicted black murderers whose victim was white were
  more likely to 
  receive the death penalty than those whose victim was black,
  after accounting for aggravation level of the murder. They categorized
  murders into 6 progressively more serious types. Category 1 comprises
  barroom brawls, liquor-induced arguments lovers' quarrels, and
  similar crimes. Category 6 includes the most vicious, cruel,
  cold=blooded, unprovoked crimes. 
}
\usage{case1902}
\format{
  A data frame with 12 observations on the following 4 variables.
  \describe{
    \item{Aggravation}{the aggravation level of the crime, a
      numerical variable ranging from 1 to 6} 
    \item{Victim}{a factor indicating race of murder victim, with
      levels \code{"White"} and \code{"Black"}}
    \item{Death}{number in the aggravation and victim category
      who received the death penalty} 
    \item{NoDeath}{number in the aggravation and victim category
      who did not receive the death penalty} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Woodworth, G.C. (1989). Statistics and the Death Penalty, \emph{Stats}
  \bold{2}: 9--12. 
}
\examples{
str(case1902)
attach(case1902)
        
## EXPLORATION
proportionDeath  <- Death/(Death + NoDeath)
myPointCode <- ifelse(Victim=="White",22,24)
myPointColor <- ifelse(Victim=="White","white","black")
plot(proportionDeath ~ Aggravation, pch=myPointCode, bg=myPointColor)
oddsOfDeath <- Death/(NoDeath + .5)  # Add .5 to the demoninator to avoid 0's 
plot(oddsOfDeath ~ Aggravation, pch=myPointCode, bg=myPointColor)
plot(oddsOfDeath ~ Aggravation, log="y", pch=myPointCode, bg=myPointColor)
# Use logistic regression (Ch 21) to see if the 6 odds ratios are constant
myGlm1 <- glm(cbind(Death,NoDeath) ~ Aggravation + Victim + 
  Aggravation:Victim, family=binomial) # Logistic reg with interaction
myGlm2  <- update(myGlm1, ~ . - Aggravation:Victim) # without interaction
anova(myGlm2, myGlm1) # no evidence of interaction.
                                              

## INFERENCE
# Mantel Haenszel
myTable <- array(rbind(Death, NoDeath), dim=c(2,2,6),
  dimnames=list(Penalty=c("Death","No Death"), Victim=c("White","Black"),
  Aggravation=c("1","2","3","4","5","6")))
myTable   # Show the 6 2x2 tables
mantelhaen.test(myTable, alternative="greater", correct=FALSE) # 1-sided p-value
mantelhaen.test(myTable, alternative="greater") # with continuity correction
mantelhaen.test(myTable) # two.sided (default) for confidence interval

# Logistic Regression (Ch 21) (treating aggravation level as numerical)
summary(myGlm2)
beta  <- myGlm2$coef
exp(beta[3])   #   6.1144 
exp(confint(myGlm2,3)) # 2.23040 18.72693
# Interpretation: The odds of death penalty for white victim murderers are 
# estimated to be 6 times the odds of death penalty for black victim murderers 
# with similar aggravation level(95% confidence interval: 2.2 to 18.7 times).

 
## GRAPHICAL DISPLAY FOR PRESENTATION 
myPointColor     <- ifelse(Victim=="White","green", "orange")
plot(jitter(proportionDeath,.1) ~ jitter(Aggravation,.1), 
  xlab="Aggravation Level of the Murder", 
  ylab="Proportion of Murderers Who Received Death Penalty",
  pch=myPointCode, bg=myPointColor, cex=2, lwd=2)
legend(1,1, c("White Victim Murderers","Black Victim Murderers"), pch=c(21,22),
  pt.cex=c(2,2), pt.bg=c("green","orange"), pt.lw=c(2,2))
# Include logistic regression fit on plot
dummyAg <- seq(min(Aggravation),max(Aggravation),length=50)
etaB    <- beta[1] + beta[2]*dummyAg
etaW    <- etaB + beta[3]
pB      <- exp(etaB)/(1 + exp(etaB))  # Estimated prob of DP; Black victim 
pW      <- exp(etaW)/(1 + exp(etaW))  # Estimated prob of DP; White victim
lines(pB ~ dummyAg,lty=1)   
lines(pW ~ dummyAg,lty=2)              

detach(case1902)
}
\keyword{datasets}
