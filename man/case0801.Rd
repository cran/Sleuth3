\name{case0801}
\alias{case0801}
\docType{data}
\title{Island Area and Number of Species}
\description{
  The data are the numbers of reptile and amphibian species and the
  island areas for seven islands in the West Indies.
}
\usage{case0801}
\format{
  A data frame with 7 observations on the following 2 variables.
  \describe{
    \item{Area}{area of island (in square miles)}
    \item{Species}{number of reptile and amphibian species on island}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Wilson, E.O., 1992, \emph{The Diversity of Life}, W. W. Norton, N.Y.
}
\examples{
str(case0801)
attach(case0801)

## EXPLORATION
logSpecies <- log(Species)   
logArea  <- log(Area) 
plot(logSpecies ~ logArea, xlab="Log of Island Area",
  ylab="Log of Number of Species",
  main="Number of Reptile and Amphibian Species on 7 Islands")
myLm <- lm(logSpecies ~ logArea)    
abline(myLm)  

## INFERENCE AND INTERPRETATION
summary(myLm) 
slope     <- myLm$coef[2]   
slopeConf <- confint(myLm,2) 
100*(2^(slope)-1)   # Back-transform estimated slope
100*(2^(slopeConf)-1) # Back-transform confidence interval 
# Interpretation: Associated with each doubling of island area is a 19% increase 
# in the median number of bird species (95% CI: 16% to 21% increase).

## DISPLAY FOR PRESENTATION
plot(Species ~ Area, xlab="Island Area (Square Miles); Log Scale",  
  ylab="Number of Species; Log Scale", 
  main="Number of Reptile and Amphibian Species on 7 Islands",
  log="xy", pch=21, lwd=2, bg="green",cex=2 )    
dummyArea <- c(min(Area),max(Area)) 
beta <- myLm$coef  
meanLogSpecies <-  beta[1] + beta[2]*log(dummyArea)   
medianSpecies  <-  exp(meanLogSpecies)  
lines(medianSpecies ~ dummyArea,lwd=2,col="blue") 
island <- c(" Cuba"," Hispaniola"," Jamaica", " Puerto Rico", 
  " Montserrat"," Saba"," Redonda")  
for (i in 1:7) {   
   offset <- ifelse(Area[i] < 10000, -.2, 1.5)  
   text(Area[i],Species[i],island[i],col="dark green",adj=offset,cex=.75) }  
    
detach(case0801)
}
\keyword{datasets}
