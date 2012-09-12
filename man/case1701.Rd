\name{case1701}
\alias{case1701}
\docType{data}
\title{Magnetic Force on Printer Rods}
\description{
  Engineers manipulated three factors (with 3, 2, and 4 levels each) in
  the construction and operation of printer rods, to see if they
  influenced the magnetic force around the rod. 
}
\usage{case1701}
\format{
  A data frame with 44 observations on the following 14 variables.
  \describe{
    \item{L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11}{the magnetic
      force at each of the equally-spaces 
      positions 1, 2, \dots, 11 on the printer rod}
    \item{Current}{electric current passing through the rod, with
      three levels \code{"0"}, \code{"250"} and \code{"500"}
      (milliamperes)} 
    \item{Config}{a factor identifying the configuration, with
      two levels \code{"0"} and \code{"1"}}
    \item{Material}{a factor identifying the type of metal from
      which the rod was made, with four levels
      \code{"1"}, \code{"2"}, \code{"3"} and \code{"4"}} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\examples{
str(case1701)
attach(case1701)
   
## EXPLORATION
MagneticForces  <- cbind(L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11)
mfCor <- cor(MagneticForces)
round(mfCor,2)  # Show correlations, rounded to two digits 

mfPca     <- prcomp(MagneticForces)  # principal components 
summary(mfPca) # Show the proportion of variance explained by each PC
plot(mfPca)  # Graph proportion of variances explained by each PC (Scree Plot)
mfCoefs   <- mfPca$rotation   # Extract the coefficients
dim(mfCoefs)  #   #11 rows and 11 columns
round(mfCoefs[,1:3],3)  # Show the first 3 columns of the score matrix, rounded 

# Explore a possible meaningful linear combination suggested by first PC  
round(mfCoefs[,1],1)  # Show coefficients of 1st pc, rounded to 1 digit  
# Coefficients are all very similar, suggesting a constant coefficient; use 1/11 
mfAve     <- (L1 + L2 + L3 + L4 + L5 + L6 + L7 + L8 + L9 + L10 + L11)/11
mfScores  <- mfPca$x
pc1       <- mfScores[,1] #Values for first principal component of MagneticForces
cor(mfAve,pc1) # correlation of the average and the first PC (=0.999567)
plot(pc1 ~ mfAve)

# Explore a possible meningful linear combination suggested by second PC 
round(mfCoefs[,2],1) # Show coefficients of 2nd pc, rounded to 1 digit 
# Second set of coefficients are negative on the left end of the rod and 
# positive on the right end. Try Ave(L9 + L10 + L11) - Ave(L1 + L2 + L3). 
mfEnds    <- (L9 + L10 + L11)/3 - (L1 + L2 + L3)/3    
pc2       <- mfScores[,2]
residualEnds  <- lm(mfEnds ~ mfAve)$residual # Ends with average effect removed
plot(pc2 ~ residualEnds)
cor(residualEnds, pc2)                 # 0.973
 
# Explore a possible meaningful linear combination suggested by third PC
round(mfCoefs[,3],1)  # Show doefficients of 3rd pc, rounded to 1 digit
# Try a contrast between the first 4 positions and the 6th position
mfPeak    <- (L1 + L2 + L3 + L4)/4 - L6
pc3       <- mfScores[,3]
residualPeak <- lm(mfPeak ~ mfAve + mfEnds)$residual
plot(pc3 ~ residualPeak)
cor(residualPeak,pc3)           # 0.971
# Note: the variation explained by the third PC seems to be due almost entirely 
# to one printer rod. (Keep this in mind.)


## INFERENCE:  ANALYSIS OF EXPERIMENTAL FACTORS ON 3-DIMENSIONAL RESPONSE
myResponse  <- cbind(mfAve, mfEnds, mfPeak)
cor(myResponse)
myLm1     <- lm(myResponse ~ Current + Config + Material)
anova(myLm1)  # Noticeable effect of Current but not Config or Material

plot(mfAve ~ Current)
myLm2   <- lm(mfAve ~ Current)
abline(myLm2)                         
summary(myLm2)  # No evidence of an effect of current on average magnetic force

plot(mfEnds ~ Current)
myLm3   <- lm(mfEnds ~ Current)
abline(myLm3)
summary(myLm3)  # Evidence that Current effects the difference in MF at the ends

plot(mfPeak ~ Current)
myLm4   <- lm(mfPeak ~ Current)
abline(myLm4)
summary(myLm4)  # No evidence of an effect of Current on peak MF in the center


## GRAPHICAL DISPLAY FOR PRESENTATION
plot(mfEnds ~ jitter(Current,.1),
  xlab="Electrical Current Used in Printer Rod Manufacture (milliamperes)" ,
  ylab="Magnetic Force at Positions 9-11 Minus Magnetic Force at Positions 1-3",
  main="Effect of Electrical Current on Magnetic Force Surrounding Printer Rod",
  col="black", pch=21, lwd=2,  bg="green", cex=2 )   
abline(myLm3,
  lwd=2)

detach(case1701)
}
\keyword{datasets}
