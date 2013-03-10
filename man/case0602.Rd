\name{case0602}
\alias{case0602}
\docType{data}
\title{Mate Preference of Platyfish}
\description{
  Do female Platyfish prefer male Platyfish with yellow swordtails?
  A.L. Basolo proposed and tested a selection model in which females
  have a pre-existing bias for a male trait even before the males
  possess it.  Six pairs of males were surgically given artificial,
  plastic swordtails---one pair received a bright yellow sword, the other
  a transparent sword.  Females were given the opportunity to engage in
  courtship activity with either of the males.  Of the total time spent
  by each female engaged in courtship during a 20 minute observation
  period, the percentages of time spent with the yellow-sword male were
  recorded. 
}
\usage{case0602}
\format{
  A data frame with 84 observations on the following 3 variables.
  \describe{
    \item{Percentage}{The percentage of courtship time spent by 84
      females with the yellow-sword males} 
    \item{Pair}{Factor variable with 6 levels---\code{"Pair1"},
      \code{"Pair2"}, \code{"Pair3"}, \code{"Pair4"}, \code{"Pair5"} and
      \code{"Pair6"}} 
    \item{Length}{Body size of the males}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Basolo, A.L. (1990).  Female Preference Predates the Evolution of the
  Sword in Swordtail Fish, \emph{Science} \bold{250}: 808--810.  
}
\examples{
str(case0602)  
attach(case0602)   

## EXPLORATION
plot(Percentage ~ Length,  
  xlab="Length of the Two Males",  
  ylab="Percentage of Time Female Spent with Yellow-Sword Male",  
  main="Percentage of Time Spent with Yellow Rather than Transparent Sword Male") 
abline(h=50)    # Draw a horizontal line at 50\% (i.e. the "no preference" line)  
myAov  <- aov(Percentage ~ Pair)  
plot(myAov, which=1) # Resdiual plot  
summary(myAov)  

# Explore possibility of linear effect, as in Display 6.5 
myAov2        <- aov(Percentage ~ Pair - 1)  # Show the estimated means.
myContrast    <- rbind(c(5, -3, 1, 3, -9, 3))  
if(require(multcomp)){   # Use the multcomp library  
  myComparison  <- glht(myAov2, linfct=myContrast)    
  summary(myComparison, test=adjusted("none")) 
}


# Simpler exploration of linear effect, via regression (Ch. 7)
myLm          <- lm(Percentage ~ Length)   
summary(myLm)            

# ONE-SAMPLE t-TEST THAT MEAN PERCENTAGE = 50\%, IGNORING MALE PAIR EFFECT
t.test(Percentage, mu=50, alternative="greater") # Get 1-sided p-value
t.test(Percentage, alternative="two.sided")  # Get C.I.

## SCATTERPLOT FOR PRESENTATION
plot(Percentage ~ Length,  
    xlab="Length of the Two Males (mm)",   
    ylab="Percentage of Time Female Spent with Yellow-Sword Male", 
    main="Female Preference for Yellow Rather than Transparent Sword Male",  
    pch=21, lwd=2, bg="green", cex=1.5 )  
abline(h=50,lty=2,col="blue",lwd=2)  
text(29.5,52,"50\% (no preference)", col="blue")   
   
detach(case0602) 
}
\keyword{datasets}
