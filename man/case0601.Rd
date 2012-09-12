\name{case0601}
\alias{case0601}
\docType{data}
\title{Discrimination Against the Handicapped}
\description{
  Study explores how physical handicaps affect people's perception of
  employment qualifications.  Researchers prepared 5 videotaped job
  interviews using actors with a script designed to reflect an interview
  with an applicant of average qualifications.  The 5 tapes differed
  only in that the applicant appeared with a different handicap in each
  one.  Seventy undergraduate students were randomly assigned to view
  the tapes and rate the qualification of the applicant on a 0-10 point
  scale. 
}
\usage{case0601}
\format{
  A data frame with 70 observations on the following 2 variables.
  \describe{
    \item{Score}{is the score each student gave to the applicant}
    \item{Handicap}{is a factor variable with 5
      levels---\code{"None"}, \code{"Amputee"}, \code{"Crutches"},
      \code{"Hearing"} and  \code{"Wheelchair"}} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Cesare, S.J., Tannenbaum, R.J. and Dalessio, A. (1990). Interviewers'
  Decisions Related to Applicant Handicap Type and Rater Empathy, \emph{Human
  Performance} \bold{3}(3): 157--171. 
}
\examples{
str(case0601) 
attach(case0601) 

## EXPLORATION
myHandicap  <- factor(Handicap,  
  levels=c("None","Amputee","Crutches","Hearing","Wheelchair"))  
boxplot(Score ~ myHandicap, 
  ylab= "Qualification Score Assigned by Student to Interviewee",  
  xlab= "Treatment Group--Handicap Portrayed (14 Students in each Group)", 
  main= "Handicap Discrimination Experiment on 70 Undergraduate Students") 
myAov  <- aov(Score ~ myHandicap) 
plot(myAov, which=1) # Plot residuals versus estimated means 
summary(myAov) 

## COMPARE MEAN QUALIFICATION SCORE OF EVERY HANDICAP GROUP TO "NONE"  
if(require(multcomp)){     # Use the multcomp library
  myDunnett  <- glht(myAov, linfct = mcp(myHandicap = "Dunnett"))  
  summary(myDunnett) 
  confint(myDunnett,level=.95) 
  opar <- par(no.readonly=TRUE)  # Save current graphics parameter settings
  par(mar=c(4.1,8.1,4.1,1.1)) # Change margins 
  plot(myDunnett, 
    xlab="Difference in Mean Qualification Score (and Dunnet-adjusted CIs)") 
  par(opar)  # Restore original graphics parameter settings
} 

## COMPARE EVERY MEAN TO EVERY OTHER MEAN
if(require(multcomp)){   # Use the multcomp library
  myTukey   <- glht(myAov, linfct = mcp(myHandicap = "Tukey"))  
  summary(myTukey) 
}

## TEST THE CONTRAST OF DISPLAY 6.4
myAov2        <- aov(Score ~ myHandicap - 1)    
myContrast    <- rbind(c(0, -1/2, 1/2, -1/2, 1/2)) 
if(require(multcomp)){   # Use the multcomp library
  myComparison  <- glht(myAov2, linfct=myContrast)
  summary(myComparison, test=adjusted("none"))  
  confint(myComparison)  
}  


# BOXPLOTS FOR PRESENTATION   
boxplot(Score ~ myHandicap, 
  ylab= "Qualification Score Assigned by Student to Video Job Applicant",  
  xlab="Handicap Portrayed by Job Applicant in Video (14 Students in each Group)",  
  main= "Handicap Discrimination Experiment on 70 Undergraduate Students", 
  col="green", boxlwd=2, medlwd=2, whisklty=1, whisklwd=2, staplewex=.2,  
	staplelwd=2, outlwd=2, outpch=21,  outbg="green", outcex=1.5) 
	
detach(case0601) 
}
\keyword{datasets}
