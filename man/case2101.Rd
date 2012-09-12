\name{case2101}
\alias{case2101}
\docType{data}
\encoding{latin1}
\title{Island Size and Bird Extinctions}
\description{
  In a study of the Krunnit Islands archipelago, researchers presented
  results of extensive bird surveys taken over four decades.  They
  visited each island several times, cataloguing species.  If a species
  was found on a specific island in 1949, it was considered to be at
  risk of extinction for the next survey of the island in 1959.  If it
  was not found in 1959, it was counted as an \dQuote{extinction}, even
  though it might reappear later.  This data frame contains data on
  island size, number of species at risk to become extinct and number of
  extinctions.
} \usage{case2101} \format{
  A data frame with 18 observations on the following 4 variables.
  \describe{
    \item{Island}{Name of Island}
    \item{Area}{Area of Island}
    \item{AtRisk}{Number of species at risk}
    \item{Extinct}{Number of extinctions}
  }
}
\details{
  Scientists agree that preserving certain habitats in their natural
  states is necessary to slow the accelerating rate of species
  extinctions.  But they are divided on how to construct such reserves.
  Given a finite amount of available land, is it better to have many
  small reserves or a few large one?  Central to the debate on this
  question are observational studies of what has happened in island
  archipelagos, where nearly the same fauna tries to survive on islands
  of different sizes.
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Väisänen, R.A. and Järvinen, O. (1977).  Dynamics of
  Protected Bird Communities in a Finnish Archipelago, \emph{Journal of
    Animal Ecology} \bold{46}: 891--908.
}
\examples{
str(case2101)
attach(case2101)
      
## EXPLORATION AND MODEL BUILDING 
proportionExtinct <- Extinct/AtRisk
oddsExtinct  <- proportionExtinct/(1 - proportionExtinct)
logitExtinct <- log(oddsExtinct)   # Logit = Log Odds
logArea <- log(Area)
plot(logitExtinct ~ logArea)

binResponse  <- cbind(Extinct,AtRisk-Extinct)
myGlm1 <- glm(binResponse ~ logArea, family=binomial)
summary(myGlm1)
logArea2 <- logArea^2
myGlm2 <- update(myGlm1, ~ . + logArea2)
summary(myGlm2) # p-value for quadratic term: 0.77


## INFERENCE AND INTERPRETATION
myGlm3 <- update(myGlm1, ~ . - logArea)
anova(myGlm3, myGlm1) # Drop in deviance statistic = 33.277 on 1 d.f.
1 - pchisq(33.277,1) # p-value = 7.992234e-09
beta <- myGlm1$coef
1 - 2^beta[2]  # 0.1861153
1 - 2^confint(myGlm1,2) #0.2462041 0.1247743 
# Interpretation: Associated with each doubling of island area is a 19% 
# reduction in the odds of extinction (95% confidence interval: 12% to 25% 
# reduction).


## GRAPHICAL DISPLAY FOR PRESENTATION 
plot(oddsExtinct ~ Area, log="xy", ylab="Observed Odds of Extinction; log scale",
  xlab=expression(paste("Island Area (km"^"2","); log scale")),
  main="Extinctions of Bird Species in the Krunnit Island Archipelago",
  pch=21, lwd=2, bg="green", cex=2)   # Plot odds of extinction vs island area
dummyArea <- seq(min(Area),max(Area),length=50)
lp <- beta[1] + beta[2]*log(dummyArea)
odds <- exp(lp)
lines(odds ~ dummyArea,lwd=2)

plot(proportionExtinct ~ Area, log="xy", 
  ylab="Proportions of 1949 Species not Found in 1959",
  xlab=expression(paste("Island Area (km"^"2","); log scale")),
  main="Proportions of 1949 Bird Species Extinct in 1959 on 18 Krunnit Archipelago Islands",
  pch=21, lwd=2, bg="green", cex=2)  # Plot probability of extinction vs area
dummyArea  <- seq(min(Area),max(Area),length=50)
lp <- beta[1] + beta[2]*log(dummyArea)
myProbability <- exp(lp)/(1 + exp(lp))
lines(myProbability ~ dummyArea,lwd=2,col="blue")
legend(.08,.055,legend="Estimated Probability of Extinction",lty=1,lwd=2,col="blue")

detach(case2101)
}
\keyword{datasets}
