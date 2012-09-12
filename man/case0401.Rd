\name{case0401}
\alias{case0401}
\docType{data}
\title{Space Shuttle}
\description{
  The number of space shuttle O-ring incidents for 4 space shuttle
  launches when the air temperatures was below 65 degrees F and for 20
  space shuttle launches when the air temperature was above 65 degrees
  F. 
}
\usage{case0401}
\format{
  A data frame with 24 observations on the following 2 variables.
  \describe{
    \item{Incidents}{the number of O-ring incidents}
    \item{Launch}{factor variable with two levels---\code{"Cool"} and
      \code{"Warm"}} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Feynman, R.P. (1988).  \emph{What do You Care What Other People
    Think?} W. W. Norton. 
}
\seealso{
 \code{\link{ex2011}}, \code{\link{ex2223}} 
}
\examples{
str(case0401)
attach(case0401)

mCool <- mean(Incidents[Launch=="Cool"]) 
mWarm <- mean(Incidents[Launch=="Warm"])
mDiff <- mCool - mWarm
c(mCool,mWarm,mDiff)  # Show the values of these variables

## PERMUTATION TEST , VIA REPEATED RANDOM RE-GROUPING (ADVANCED)
numRep  <- 50 # Number of random  groupings. CHANGE TO LARGER NUMBER; eg 50,000.   
rDiff   <- rep(0,numRep) # Initialize this variable to contain numRep 0s.
for (rep in 1:numRep) {  # Repeat the following commands numRep times:
  randomGroup <- rep("rWarm",24)  # Set randomGroup to have 24 values "rWarm"
  randomGroup[sample(1:24,4)]  <- "rCool"  # Replace 4 at random with "rCool"
  mW  <- mean(Incidents[randomGroup=="rWarm"]) # average of random "rWarm" group
  mC  <- mean(Incidents[randomGroup=="rCool"]) # average of random "rCool" group
  rDiff[rep] <- mC-mW  # Store difference in averages in 'rep' cell of rDiff
           }  # End of loop
hist(rDiff,  # Histogram of difference in averages from numRep random groupings
  main="Approximate Permutation Distribution",
  xlab="Possible Values of Difference in Averages",
  ylab="Frequency of Occurrence")
abline(v=mDiff)  # Draw a vertical line at the actually observed difference
pValue <- sum(rDiff >= 1.3)/numRep  # 1-sided p-value
pValue  
text(mDiff,75000, paste(" -->",round(pValue,4)), adj=-0.1) 

detach(case0401) 
}
\keyword{datasets}
