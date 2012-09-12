\name{case0301}
\alias{case0301}
\docType{data}
\title{Cloud Seeding}
\description{
  Does dropping silver iodide onto clouds increase the amount of
  rainfall they produce? In a randomized experiment, researchers
  measured the volume of rainfall in a target area (in acre-feet) on 26
  suitable days in which the clouds were seeded and on 26 suitble days
  in which the clouds were not seeded.  
}
\usage{case0301}
\format{
  A data frame with 52 observations on the following 2 variables.
  \describe{
    \item{Rainfall}{the volume of rainfall in the target area (in
      acre-feet)} 
    \item{Treatment}{a factor with levels \code{"Unseeded"} and
      \code{"Seeded"} indicating whether the clouds were unseeded or seeded.}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
Simpson, J., Olsen, A., and Eden, J. (1975). A Bayesian Analysis of a
Multiplicative Treatment Effect in Weather
Modification. \emph{Technometrics} \bold{17}: 161--166.
}
\examples{
attach(case0301) 
str(case0301) #Seeded is level 1 of Treatment (it's first alphabetically)

boxplot(Rainfall ~ Treatment) 
boxplot(log(Rainfall) ~ Treatment) # Boxplots of natural logs of Rainfall 

t.test(log(Rainfall) ~ Treatment, var.equal=TRUE,
  alternative="greater") # 1-sided t-test; alternative: level 1 mean is greater
        

myTest <- t.test(log(Rainfall) ~ Treatment,  var.equal=TRUE,
  alternative="two.sided") # 2-sided alternative to get confidence interval
exp(myTest$est[1] - myTest$est[2])  # Back-transform estimate on log scale 
exp(myTest$conf) # Back transform endpoints of confidence interval 

boxplot(log(Rainfall) ~ Treatment, 
  ylab="Log of Rainfall Volume in Target Area (Acre Feet)", 
  names=c("On 26 Seeded Days", "On 26 Unseeded Days"), 
  main="Distributions of Rainfalls from Cloud Seeding Experiment") 

## POLISHED BOXPLOTS FOR PRESENTATION:
opar <- par(no.readonly=TRUE)  # Store device graphics parameters
par(mar=c(4,4,4,4))   # Change margins to allow more space on right
boxplot(log(Rainfall) ~ Treatment, ylab="Log Rainfall (Acre-Feet)",
  names=c("on 26 seeded days","on 26 unseeded days"), 
  main="Boxplots of Rainfall on Log Scale", col="green", boxlwd=2,
  medlwd=2, whisklty=1, whisklwd=2, staplewex=.2, staplelwd=2,
  outlwd=2, outpch=21, outbg="green", outcex=1.5      )        
myTicks <- c(1,5,10,100,500,1000,2000,3000) # some tick marks for original scale 
axis(4, at=log(myTicks), label=myTicks)   # Add original-scale axis on right    
mtext("Rainfall (Acre Feet)", side=4, line=2.5) # Add right-side axis label 
par(opar)  # Restore previous graphics parameter settings

detach(case0301) 
}
\keyword{datasets}
