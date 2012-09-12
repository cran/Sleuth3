\name{case0502}
\alias{case0502}
\docType{data}
\title{The Spock Conspiracy Trial}
\description{
  In 1968, Dr. Benjamin Spock was tried in Boston on charges of
  conspiring to violate the Selective Service Act by encouraging young
  men to resist being drafted into military service for Vietnam.  The
  defence in the case challenged the method of jury selection claiming
  that women were underrepresented.  Boston juries are selected in three
  stages.  First 300 names are selected at random from the City
  Directory, then a venire of 30 or more jurors is selected from the
  initial list of 300 and finally, an actual jury is selected from the
  venire in a nonrandom process allowing each side to exclude certain
  jurors.  There was one woman on the venire and no women on the final
  list.  The defence argued that the judge in the trial had a history of
  venires in which women were systematically underrepresented and
  compared the judge's recent venires with the venires of six other
  Boston area district judges. 
}
\usage{case0502}
\format{
  A data frame with 46 observations on the following 2 variables.
  \describe{
    \item{Percent}{is the percent of women on the venire's of the Spock
      trial judge and 6 other Boston area judges} 
    \item{Judge}{is a factor with levels \code{"Spock's"}, \code{"A"},
      \code{"B"}, \code{"C"}, \code{"D"}, \code{"E"} and \code{"F"}} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Zeisel, H. and Kalven, H. Jr. (1972).  Parking Tickets and Missing
  Women: Statistics and the Law \emph{in} Tanur, J.M. et al. (eds.)
  \emph{Statistics: A Guide to the Unknown}, Holden-Day. 
}
\examples{
str(case0502)  
attach(case0502) 

# Make new factor level names (with sample sizes) for boxplots
myNames <- c("A (5)", "B (6)", "C (9)", "D (2)", "E (6)", "F (9)", "Spock's (9)")
  
boxplot(Percent ~ Judge, ylab = "Percent of Women on Judges' Venires",
  names = myNames, xlab = "Judge (and number of venires)",
  main = "Percent Women on Venires of 7 Massachusetts Judges") 
myAov1  <- aov(Percent ~ Judge)  
plot(myAov1, which=1)   # Residual plot
summary(myAov1) # Initial screening. Any evidence of judge differences? (yes)
   
## ANALYSIS 1. TWO-SAMPLE t-TEST (ASSUMING NON-SPOCK JUDGES HAVE A COMMON MEAN)
SpockOrOther <- factor(ifelse(Judge=="Spock's","Spock","Other"))                                   
aovFull      <- aov(Percent ~ Judge) 
aovReduced   <- aov(Percent ~ SpockOrOther) 
anova(aovReduced,aovFull) #Any evidence that 7 mean fits better than the 2 mean?       
t.test(Percent ~ SpockOrOther, var.equal=TRUE) # Evidence that 2 means differ?  

## ANALYSIS 2. COMPARE SPOCK MEAN TO AVERAGE OF OTHER MEANS 
  myAov3        <- aov(Percent ~ Judge - 1) 
  myContrast    <- rbind(c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6, - 1))
if(require(multcomp)){  # use multcomp library
  myComparison  <- glht(myAov3, linfct=myContrast) 
  summary(myComparison, test=adjusted("none"))   
  confint(myComparison) 
}

## BOXPLOTS FOR PRESENTATION   
boxplot(Percent ~ Judge,  ylab= "Percent of Women on Judges' Venires",
        names=myNames, xlab="Judge (and number of venires)",
        main= "Percent Women on Venires of 7 Massachusetts Judges",
        col="green", boxlwd=2,  medlwd=2,  whisklty=1,  whisklwd=2,
        staplewex=.2, staplelwd=2,  outlwd=2,  outpch=21, outbg="green",
        outcex=1.5)         
        
detach(case0502)  
}
\keyword{datasets}
