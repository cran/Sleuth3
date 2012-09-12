\name{case0501}
\alias{case0501}
\docType{data}
\title{Diet Restriction and Longevity}
\description{
  Female mice were randomly assigned to six treatment groups to
  investigate whether restricting dietary intake increases life
  expectancy. Diet treatments were:
  \enumerate{
    \item \code{"NP"}---mice ate unlimited amount of nonpurified, standard
    diet
    \item \code{"N/N85"}---mice fed normally before and after weaning.
    After weaning, ration was controlled at 85 kcal/wk
    \item \code{"N/R50"}---normal diet before weaning and reduced calorie
    diet (50 kcal/wk) after weaning
    \item \code{"R/R50"}---reduced calorie diet of 50 kcal/wk both before
    and after weaning
    \item \code{"N/R50 lopro"}---normal diet before weaning, restricted
    diet (50 kcal/wk) after weaning and dietary protein content
    decreased with advancing age
    \item \code{"N/R40"}---normal diet before weaning and reduced diet (40
    Kcal/wk) after weaning.
  }
}
\usage{case0501}
\format{
  A data frame with 349 observations on the following 2 variables.
  \describe{
    \item{Lifetime}{the lifetime of the mice (in months)}
    \item{Diet}{factor variable with six levels---\code{"NP"},
      \code{"N/N85"}, \code{"lopro"}, \code{"N/R50"}, \code{"R/R50"} and
      \code{"N/R40"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
   Weindruch, R., Walford, R.L., Fligiel, S. and Guthrie D. (1986). The
   Retardation of Aging in Mice by Dietary Restriction: Longevity,
   Cancer, Immunity and Lifetime Energy Intake, \emph{Journal of
     Nutrition} \bold{116}(4):641--54. 
}
\examples{
str(case0501)
attach(case0501)

# Re-order levels for better boxplot organization: 
myDiet  <- factor(Diet, levels=c("NP","N/N85","N/R50","R/R50","lopro","N/R40") ) 
 
myNames <- c("NP(49)","N/N85(57)","N/R50(71)","R/R50(56)","lopro(56)",
  "N/R40(60)")   # Make these for boxplot labeling.
boxplot(Lifetime ~ myDiet, ylab= "Lifetime (months)", names=myNames, 
  xlab="Treatment (and sample size)") 
myAov1   <- aov(Lifetime ~ Diet) # One-way analysis of variance
plot(myAov1, which=1) # Plot residuals versus estimated means.
summary(myAov1) 
pairwise.t.test(Lifetime,Diet, pool.SD=TRUE, p.adj="none") # All t-tests

## p-VALUES AND CONFIDENCE INTERVALS FOR SPECIFIED COMPARISONS OF MEANS
if(require(multcomp)){
  diet    <- factor(Diet,labels=c("lopro", "NN85", "NR40", "NR50", "NP", "RR50")) 
  myAov2  <- aov(Lifetime ~ diet - 1) 
  myComparisons <- glht(myAov2,
          linfct=c("dietNR50 - dietNN85 = 0", 
          "dietNR40  - dietNR50 = 0",
          "dietRR50  - dietNR50 = 0",
          "dietlopro - dietNR50 = 0",
          "dietNN85  - dietNP   = 0")   ) 
  summary(myComparisons,test=adjusted("none")) # No multiple comparison adjust.
  confint(myComparisons, calpha = univariate_calpha()) # No adjustment
}

## EXAMPLE 5: BOXPLOTS FOR PRESENTATION  
boxplot(Lifetime ~ myDiet, ylab= "Lifetime (months)", names=myNames,
  main= "Lifetimes of Mice on 6 Diet Regimens",
  xlab="Diet (and sample size)", col="green", boxlwd=2, medlwd=2, whisklty=1, 
  whisklwd=2, staplewex=.2, staplelwd=2, outlwd=2, outpch=21, outbg="green", 
  outcex=1.5)   
                
detach(case0501)

}
\keyword{datasets}
