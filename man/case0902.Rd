\name{case0902}
\alias{case0902}
\docType{data}
\title{Why Do Some Mammals Have Large Brains for Their Size?}
\description{
  The data are the average values of brain weight, body weight,
  gestation lengths (length of pregnancy) and litter size for 96 species
  of mammals. 
}
\usage{case0902}
\format{
  A data frame with 96 observations on the following 5 variables.
  \describe{
    \item{Species}{species}
    \item{Brain}{average brain weight (in grams)}
    \item{Body}{average body weight (in kilograms)}
    \item{Gestation}{gestation period (in days)}
    \item{Litter}{average litter size}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\seealso{
  \code{\link{ex0333}}
}
\examples{
str(case0902)
attach(case0902)

## EXPLORATION                                                                   
myMatrix      <- cbind(Brain, Body, Litter, Gestation)  
if(require(car)){   # Use the car library
scatterplotMatrix(myMatrix,   # Matrix of scatterplots
  smooth=FALSE,    # Omit scatterplot smoother on plots
  diagonal="histogram") # Draw histograms on diagonals
  } 
myLm <- lm(Brain ~ Body + Litter + Gestation)
plot(myLm, which=1)  
logBrain <- log(Brain)
logBody <- log(Body)
logGestation  <- log(Gestation)
myMatrix2 <- cbind(logBrain,logBody,Litter, logGestation) 
if(require(car)){   # Use the car library
  scatterplotMatrix(myMatrix2, smooth=FALSE, diagonal="histogram")  
}
myLm2 <- lm(logBrain ~ logBody + Litter + logGestation)
plot(myLm2,which=1)  # Residual plot.

if(require(car)){   # Use the car library
crPlots(myLm2)  # Partial residual plots (Sleuth Ch.11) 
}
plot(logBrain ~ logBody)
identify(logBrain ~ logBody,labels=Species)   # Identify points on  scatterplot  
# Place the cursor over a point of interest, then left-click.
# Continue with other points if desired. When finished, pres Esc. 

## INFERENCE
summary(myLm2)           
confint(myLm2)           

# DISPLAYS FOR PRESENTATION 
myLm3 <- lm(logBrain ~ logBody + logGestation)
beta <- myLm3$coef
logBrainAdjusted  <- logBrain - beta[2]*logBody  
y <- exp(logBrainAdjusted) 
ymod <- 100*y/median(y) 
plot(ymod ~ Gestation, log="xy",  
  xlab="Average Gestation Length (Days); Log Scale",
  ylab="Brain Weight Adjusted for Body Weight, as a Percentage of the Median", 
  main="Brain Weight Adjusted for Body Weight, Versus Gestation Length, for 96 Mammal Species",
  pch=21,bg="green",cex=1.3)
identify(ymod ~ Gestation,labels=Species, cex=.7) # Identify points, as desired
# Press Esc to complete identify.
abline(h=100,lty=2) # Draw horizontal line at 100%
  
myLm4 <- lm(logBrain ~ logBody + Litter)
beta  <- myLm4$coef
logBrainAdjusted <- logBrain - beta[2]*logBody  
y2 <- exp(logBrainAdjusted)
y2mod <- 100*y2/median(y2)
plot(y2mod ~ Litter, log="y", xlab="Average Litter Size",
  ylab="Brain Weight Adjusted for Body Weight, as a Percentage of the Median",
  main="Brain Weight Adjusted for Body Weight, Versus Litter Size, for 96 Mammal Species",
  pch=21,bg="green",cex=1.3)
identify(y2mod ~ Litter,labels=Species, cex=.7)  
abline(h=100,lty=2)

detach(case0902)
}
\keyword{datasets}
