\name{case1301}
\alias{case1301}
\docType{data}
\title{Seaweed Grazers}
\description{
  To study the influence of ocean grazers on regeneration rates of
  seaweed in the intertidal zone, a researcher scraped rock plots free
  of seaweed and observed the degree of regeneration when certain types
  of seaweed-grazing animals were denied access. The grazers were
  limpets (L), small fishes (f) and large fishes (F).  Each plot
  received one of six treatments named by which grazers were allowed
  access.  In addition, the researcher applied the treatments in eight
  blocks of 12 plots each. Within each block she randomly assigned
  treatments to plots.  The blocks covered a wide range of tidal
  conditions. 
}
\usage{case1301}
\format{
  A data frame with 96 observations on the following 3 variables.
  \describe{
    \item{Cover}{percent of regenerated seaweed cover}
    \item{Block}{a factor with levels \code{"B1"}, \code{"B2"},
      \code{"B3"}, \code{"B4"}, \code{"B5"}, \code{"B6"}, \code{"B7"}
      and \code{"B8"}} 
    \item{Treat}{a factor indicating treatment, with levels
      \code{"C"}, \code{"f"}, \code{"fF"}, \code{"L"}, \code{"Lf"} and
      \code{"LfF"}} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Olson, A. (1993).  Evolutionary and Ecological Interactions Affecting
  Seaweeds, Ph.D. Thesis. Oregon State University. 
}
\examples{
str(case1301)
attach(case1301)
      
## EXPLORATION AND MODEL DEVELOPMENT
plot(Cover ~ Treat,xlab="Animals Present",ylab="Remaining Seaweed Coverage (\%)")
myLm1 <- lm(Cover ~ Block + Treat + Block:Treat) 
plot(myLm1,which=1)  
ratio <- Cover/(100 - Cover)  
logRatio  <- log(ratio) 
myLm2 <- lm(logRatio ~ Block + Treat + Block:Treat)  
plot(myLm2, which=1)  
myLm3  <- lm(logRatio ~ Block + Treat)  
anova(myLm3, myLm2) # Test for interaction with extra ss F-test 
if(require(car)){   # Use the car library
  crPlots(myLm3)   # Partial residual plots
  myLm4  <- lm(logRatio ~ Treat)   
  anova(myLm4, myLm3)     # Test for Block effect
  myLm5  <- lm(logRatio ~ Block)  
  anova(myLm5, myLm3)     # Test for Treatment effect
  lmp <- factor(ifelse(Treat \%in\% c("L", "Lf", "LfF"), "yes", "no"))  
  sml <- factor(ifelse(Treat \%in\% c("f", "fF", "Lf", "LfF"), "yes","no")) 
  big <- factor(ifelse(Treat \%in\% c("fF", "LfF"), "yes","no"))  
  myLm6  <- lm(logRatio ~ Block + lmp + sml + big)  
  crPlots(myLm6) 
  myLm7  <- lm(logRatio ~ Block + (lmp + sml + big)^2)  
  anova(myLm6, myLm7)  # Test for interactions of lmp, sml, and big

## INFERENCE AND INTERPRETATION
  summary(myLm6)   # Get p-values for lmp, sml, and big effects; R^2 = .8522
  beta <- myLm6$coef  
  exp(beta[9:11])  
  exp(confint(myLm6,9:11) ) 
   
  myLm7 <- update(myLm6, ~ . - lmp)
  summary(myLm7)  # R^2 = .4568; Note .8522-.4580 = 39.54# (explained by limpets)  
  myLm8 <- update(myLm6, ~ . - big)
  summary(myLm8)  # R^2 = .8225; Note .8522-.8255= 2.97# (explained by big fish) 
  myLm9 <- update(myLm6, ~ . - sml)
  summary(myLm9)  # R^2: .8400; Note .8522-.8400 = 1.22# (explained by small fish)

## DISPLAY FOR PRESENTATION 
  myYLab <- "Adjusted Seaweed Regeneration (Log Scale; Deviation from Average)"
  crPlots(myLm6, ylab=myYLab, ylim=c(-2.2,2.2), 
    main="Effects of Blocks and Treatments on Log Regeneration Ratio, Adjusted for Other Factors")
}
  
detach(case1301)
}
\keyword{datasets}
