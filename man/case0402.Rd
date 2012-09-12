\name{case0402}
\alias{case0402}
\docType{data}
\title{Cognitive Load}
\description{
  Educational researchers randomly assigned 28 ninth-year students in
  Australia to receive coordinate geometry training in one of two ways: a
  conventional way and a modified way. After the training, the students
  were asked to solve a coordinate geometry problem. The time to complete
  the problem was recorded, but five students in the \dQuote{conventional}
  group did not complete the solution in the five minute alloted time.
}
\usage{case0402}
\format{
  A data frame with 28 observations on the following 3 variables.
  \describe{
    \item{Time}{the time (in seconds) that the student worked on the problem}
    \item{Treatment}{factor variable with two
      levels---\code{"Modified"} and \code{"Conventional"}} 
    \item{Censored}{1 if the individual did not complete the problem in 5
      minutes, 0 if they did} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Sweller, J., Chandler, P., Tierney, P. and Cooper, M. (1990).
  Cognitive Load as a Factor in the Structuring of Technical Material,
  \emph{Journal of Experimental Psychology General} \bold{119}(2):
  176--192. 
}
\examples{
str(case0402) # level 1 of Treatment is "Conventional" (1st alphabetically)
attach(case0402)  

boxplot(Time ~ Treatment) 
median(Time[Treatment=="Conventional"])-median(Time[Treatment=="Modified"])  
  
wilcox.test(Time ~ Treatment, exact=FALSE, correct=TRUE, 
  alternative="greater")  # Rank-sum test; alternative: group 1 is greater
wilcox.test(Time ~ Treatment, exact=FALSE, correct=TRUE, 
  alternative="two.sided", conf.int=TRUE)  # Use 2-sided to get confidence int.  
        
## DOT PLOTS FOR PRESENTATION 
xTreatment    <- ifelse(Treatment=="Conventional",1,2) # Make numerical values  
myPointCode   <- ifelse(Censored==0,21,24)  
plot(Time ~ jitter(xTreatment,.2),   # Jitter the 1's and 2's for visibility
     ylab="Completion Time (Sec.)",  xlab="Training Method (jittered)",
     main="Test Completion Times from Cognitive Load Experiment",
     axes=FALSE, pch=myPointCode, bg="green", cex=2, xlim=c(.5,2.5) )  
axis(2) # Draw y-axis as usual
axis(1, tick=FALSE,  at=c(1,2),  # Draw x-axis without ticks
  labels=c("Conventional (n=14 Students)","Modified (n=14 Students)") )  
legend(1.5,300, legend=c("Did not Complete in 300 sec","Completed in 300 sec."),
       pch=c(24,21), pt.cex=2, pt.bg="green")  
  
detach(case0402) 
}

\keyword{datasets}
