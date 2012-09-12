\name{case2201}
\alias{case2201}
\docType{data}
\title{Age and Mating Success of Male Elephants}
\description{
  Although male elephants are capable of reproducing by 14 to 17 years
  of age, your adult males are usually unsuccessful in competing with
  their larger elders for the attention of receptive females.  Since
  male elephants continue to grow throughout their lifetimes, and since
  larger males tend to be more successful at mating, the males most
  likely to pass their genes to future generations are those whose
  characteristics enable them to live long lives.  Joyce Poole studied a
  population of African elephants in Amboseli National Park, Kenya, for
  8 years.  This data frame contains the number of successful matings
  and ages (at the study's beginning) of 41 male elephants.
}
\usage{case2201}
\format{
  A data frame with 41 observations on the following 2 variables.
  \describe{
    \item{Age}{Age of elephant at beginning of study}
    \item{Matings}{Number of successful matings}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2002). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (2nd ed)}, Duxbury.
}
\references{
  Poole, J.H. (1989). Mate Guarding, Reproductive Success and Female
  Choice in African Elephants, \emph{Animal Behavior} \bold{37}:
  842--849. 
}
\examples{
str(case2201)
attach(case2201)
       
## EXPLORATION AND MODEL BUILDING 
plot(Matings ~ Age,  log="y")
ageSquared  <- Age^2
myGlm1 <- glm(Matings ~ Age + ageSquared, family=poisson)
summary(myGlm1)  # No evidence of a need for ageSquared


## INFERENCE AND INTERPRETATION
myGlm2  <- update(myGlm1, ~ . - ageSquared)
summary(myGlm2)
beta  <- myGlm2$coef
exp(beta[2])  #1.071107
exp(confint(myGlm2,2))  #1.042558 1.100360 
# Interpretation: Associated with each 1 year increase in age is a 7% increase 
# in the mean number of matings (95% confidence interval 4% to 10% increase).


## GRAPHICAL DISPLAY FOR PRESENTATION
plot(Matings ~ Age, ylab="Number of Successful Matings",
  xlab="Age of Male Elephant (Years)",
  main="Age and Number of Successful Matings for 41 African Elephants",
  pch=21, bg="green", cex=2, lwd=2)
dummyAge <- seq(min(Age),max(Age), length=50)
lp <- beta[1] + beta[2]*dummyAge
curve <- exp(lp)
lines(curve ~ dummyAge,lwd=2)  

detach(case2201)
}
\keyword{datasets}
