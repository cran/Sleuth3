\name{case0202}
\alias{case0202}
\docType{data}
\title{Anatomical Abnormalities Associated with Schizophrenia}
\description{
  Are any physiological indicators associated with schizophrenia?  In a
  1990 article, researchers reported the results of a study that
  controlled for genetic and socioeconomic differences by examining 15
  pairs of monozygotic twins, where one of the twins was schizophrenic
  and the other was not.  The researchers used magnetic resonance
  imaging to measure the volumes (in cm\eqn{^3}) of several regions and
  subregions of the twins' brains.
}
\usage{case0202}
\format{
  A data frame with 15 observations on the following 2 variables.
  \describe{
    \item{Unaffected}{volume of left hippocampus of unaffected
      twin (in cm\eqn{^3})} 
    \item{Affected}{volume of left hippocampus of affected twin
      (in cm\eqn{^3})} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Suddath, R.L., Christison, G.W., Torrey, E.F., Casanova, M.F. and
  Weinberger, D.R. (1990).  Anatomical Abnormalities in the Brains of
  Monozygotic Twins Discordant for Schizophrenia, \emph{New England
  Journal of Medicine} \bold{322}(12): 789--794.
}
\examples{
attach(case0202) 
str(case0202)  

diff <- Unaffected-Affected    
summary(diff)
t.test(diff) # Paired t-test is a one-sample t-test on differences 
t.test(Unaffected,Affected,pair=TRUE)  # Alternative coding for the same test 

boxplot(diff,       
  ylab="Difference in Hippocampus Volume (cubic cm)", 
  xlab="15 Sets of Twins, One Affected with Schizophrenia", 
  main="Hippocampus Difference: Unaffected Twin Minus Affected Twin") 
abline(h=0,lty=2)   # Draw a dashed (lty=2) horizontal line at 0    
  
## BOXPLOT FOR PRESENTATION:
boxplot(diff, 
  ylab="Difference in Hippocampus Volume (cubic cm)", 
  xlab="15 Sets of Twins, One Affected with Schizophrenia",
  main="Hippocampus Difference: Unaffected Minus Affected Twin",  
  col="green", boxlwd=2, medlwd=2, whisklty=1, whisklwd=2, 
  staplewex=.2, staplelwd=2, outlwd=2, outpch=21, outbg="green",
  outcex=1.5)      
abline(h=0,lty=2) 

detach(case0202)  
}
\keyword{datasets}
