\name{case2102}
\alias{case2102}
\docType{data}
\title{Moth Coloration and Natural Selection}
\description{
  This data was collected by J.A. Bishop.  Bishop selected seven
  locations progressively farther from Liverpool.  At each location,
  Bishop chose eight trees at random.  Equal number of dead (frozen)
  light (\emph{Typicals}) and dark (\emph{Carbonaria}) moths were glued
  to the trunks in lifelike positions.  After 24 hours, a count was
  taken of the numbers of each morph that had been removed---presumably
  by predators.
}
\usage{case2102}
\format{
  A data frame with 14 observations on the following 4 variables.
  \describe{
    \item{Morph}{Morph, a factor with levels \code{"light"} and \code{"dark"}}
    \item{Distance}{Distance from Liverpool (in km)}
    \item{Placed}{Number of moths placed}
    \item{Removed}{Number of moths removed}
  }
}
\details{
  Population geneticists consider clines particularly favourable
  situations for investigating evolutionary phenomena.  A cline is a
  region where two colour morphs of one species arrange themselves at
  opposite ends of an environmental gradient, with increasing mixtures
  occurring between.  Such a cline exists near Liverpool, England, where
  a dark morph of a local moth has flourished in response to the
  blackening of tree trunks by air pollution from the mills.  The moths
  are nocturnal, resting during the day on tree trunks, where their
  coloration acts as camouflage against predatory birds.  In Liverpool,
  where tree trunks are blackened by smoke, a high percentage of the
  moths are of the dark morph.  One encounters a higher percentage of
  the typical (pepper--and--salt) morph as one travels from the city
  into the Welsh countryside, where tree trunks are lighter.
  J.A. Bishop used this cline to study the intensity of natural selection.
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Bishop, J.A. (1972). An Experimental Study of the Cline of Industrial
  Melanism in \emph{Biston betularia} [Lepidoptera] Between Urban
  Liverpool and Rural North Wales, \emph{Journal of Animal Ecology}
  \bold{41}: 209--243.
}
\examples{
str(case2102)
attach(case2102)
   
## EXPLORATION  AND MODEL BUILDING
proportionRemoved <- Removed/Placed
myPointCode <- ifelse(Morph=="dark",21,22)
myPointColor <- ifelse(Morph=="dark","blue","gray")
plot(proportionRemoved ~ Distance, pch=myPointCode, bg=myPointColor, cex=2, lwd=2)

binResponse <- cbind(Removed, Placed-Removed)
Morph <- factor(Morph, levels=c("light","dark"))  # Make "light" the ref  level
myGlm1 <- glm(binResponse ~ Distance + Morph + Distance:Morph, family=binomial)
summary(myGlm1)  # Residual deviance:  13.230  on 10  degrees of freedom
1 - pchisq(13.230,10)  # No evidence of overdispersion
myGlm2  <- update(myGlm1, ~ . - Distance:Morph)
anova(myGlm2, myGlm1) # Drop in deviance statistic = 11.931 on 1 d.f.
1 - pchisq(11.931,1)  # p-value = 0.0005520753 => strong evidence of interaction
# It appears that the intercepts are the same for both light and dark morphs, 
# that there is no effect of Distance for light morphs, but there is an effect 
# of Distance for dark morphs.
 

## INFERENCE AND INTERPREATION
myTerm  <- Distance*ifelse(Morph=="dark",1,0) # Create indicator var for "dark"
myGlm3 <- glm(binResponse ~ myTerm, family=binomial)
summary(myGlm3)


## GRAPHICAL DISPLAY FOR PRESENTATION
myPointCode <- ifelse(Morph=="dark",22,24)
myPointColor  <- ifelse(Morph=="dark","blue","orange")
plot(proportionRemoved ~ Distance, ylab="Proportion of Moths Taken",
  main="Proportions of Moths Taken by Predators at Seven Locations",
  xlab="Distance from Liverpool (km)", pch=myPointCode, bg=myPointColor, cex=2, 
  lwd=2) 
beta  <- myGlm3$coef
dummyDist <- seq(0,55,length=50)
lp <- beta[1] + beta[2]*dummyDist
propDark <- exp(lp)/(1 + exp(lp))
lines(propDark ~ dummyDist,lwd=2,col="blue")
propLight <- rep(exp(beta[1])/(1 + exp(beta[1])),length(dummyDist))
lines(propLight ~ dummyDist,lwd=2,col="orange")  
legend(0,0.47,legend=c("Dark Morph","Light Morph"),
  pch=c(22,24),pt.bg=c("blue","orange"),pt.cex=c(2,2),pt.lwd=c(2,2))

detach(case2102)
}
\keyword{datasets}
