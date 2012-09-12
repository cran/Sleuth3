\name{case2202}
\alias{case2202}
\docType{data}
\title{Characteristics Associated with Salamander Habitat}
\description{
  The Del Norte Salamander (\emph{plethodon elongates}) is a small (5--7
  cm) salamander found among rock rubble, rock outcrops and moss-covered
  talus in a narrow range of northwest California.  To study the habitat
  characteristics of the species and particularly the tendency of these
  salamanders to reside in dwindling old-growth forests, researchers
  selected 47 sites from plausible salamander habitat in national forest
  and parkland.  Randomly chosen grid points were searched for the
  presence of a site with suitable rocky habitat.  At each suitable
  site, a 7 metre by 7 metre search are was examined for the number of
  salamanders it contained.  This data frame contains the counts of
  salamanders at the sites, along with the percentage of forest canopy
  and age of the forest in years.
}
\usage{case2202}
\format{
  A data frame with 47 observations on the following 4 variables.
  \describe{
    \item{Site}{Investigated site}
    \item{Salamanders}{Number of salamanders found in 49 m\eqn{^2} area}
    \item{PctCover}{Percentage of canopy cover}
    \item{ForestAge}{Forest age}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Welsh, H.H. and Lind, A.J. (1995). \emph{Journal of Herpetology}
  \bold{29}(2): 198--210.
}
\examples{
str(case2202)
attach(case2202)
       
## EXPLORATION AND MODEL BUILDING
logSalamanders <- log(Salamanders + .5)
logForestAge   <- log(ForestAge + .5)
myMatrix       <- cbind(PctCover,logForestAge,logSalamanders)
if (require(car)) { # Use car library
 scatterplotMatrix(myMatrix, diagonal="histogram", reg.line=FALSE, spread=FALSE)
}

myGlm1  <- glm(Salamanders ~ PctCover + logForestAge + PctCover:logForestAge, 
  family=poisson)
summary(myGlm1)   # Backward elimination...
myGlm2 <- update(myGlm1, ~ . - PctCover:logForestAge)
summary(myGlm2)
myGlm3  <- update(myGlm2, ~ . - logForestAge)
summary(myGlm3)   # PctCover is the only explanatory variable remaining

plot(Salamanders ~ PctCover)  # It appears that there are 2 distributions
# of Salamander counts; one for PctCover < 70 and one for PctCover > 70

# See if PctCover is associated Salamanders in each subset
myGlm4 <- glm(Salamanders ~ PctCover, family=poisson,subset=(PctCover > 70))
summary(myGlm4)           # No evidence of an effect for this subset
myGlm5 <- glm(Salamanders ~ PctCover, family=poisson,subset=(PctCover < 70))
summary(myGlm5)           # No evidence on this subset either

## INFERENCE  (2 means)
Group <- ifelse(PctCover > 70,"High","Low")
Group <- factor(Group, levels=c("Low","High") )  # Make "Low Cover" the ref group
myGlm6 <- glm(Salamanders ~ Group, family=poisson)
summary(myGlm6)


## GRAPHICAL DISPLAY FOR PRESENTATION
plot(Salamanders ~ PctCover, ylab="Number of Salamanders",
  xlab="Percentage of Canopy Covered",
  main="Number of Salamanders versus Percent Canopy Cover",
  pch=21,bg="green", cex=2, lwd=2)
beta <- myGlm6$coef
lines(c(0,55),exp(c(beta[1],beta[1])),lwd=2)
text(56,exp(beta[1]),paste("mean= ",round(exp(beta[1]),1)),adj=0)
lines(c(76,93),exp(c(beta[1]+beta[2],beta[1]+beta[2])),lwd=2)
text(56,exp(beta[1]+beta[2]),paste("mean=",round((beta[1]+beta[2]),1)),adj=-1)
    
detach(case2202)
}
\keyword{datasets}
