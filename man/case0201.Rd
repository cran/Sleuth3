\name{case0201}
\alias{case0201}
\docType{data}
\title{Peter and Rosemary Grant's Finch Beak Data}
\description{
  In the 1980s, biologists Peter and Rosemary Grant caught and measured
  all the birds from more than 20 generations of finches on the
  Galapagos island of Daphne Major. In one of those years, 1977, a
  severe drought caused vegetation to wither, and the only remaining
  food source was a large, tough seed, which the finches ordinarily
  ignored. Were the birds with larger and stronger beaks for opening
  these tough seeds more likely to survive that year, and did they tend
  to pass this characteristic to their offspring? The data are beak
  depths (height of the beak at its base) of 89 finches caught the year
  before the drought (1976) and 89 finches captured the year after the
  drought (1978).  
}

\usage{case0201}
\format{
  A data frame with 178 observations on the following 2 variables.
  \describe{
    \item{Year}{Year the finch was caught, 1976 or 1978}
    \item{Depth}{Beak depth of the finch (mm)}
  }
}

\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}

\references{
  Grant, P. (1986). \emph{Ecology and Evolution of Darwin's Finches},
  Princeton University Press, Princeton, N.J. 
}

\seealso{
  \code{\link{ex0218}}
}

\examples{
attach(case0201)   
str(case0201)
                                         
mean(Depth[Year==1978]) - mean(Depth[Year==1976])  

yearFactor <- factor(Year) # Convert the numerical variable Year into a factor
# with 2 levels. 1976 is "group 1" (it comes first alphanumerically)
t.test(Depth ~ yearFactor, var.equal=TRUE) # 2-sample t-test; 2-sided by default 
t.test(Depth ~ yearFactor, var.equal=TRUE, 
  alternative = "less") # 1-sided; alternative: group 1 mean is less 

boxplot(Depth ~ Year,  
  ylab= "Beak Depth (mm)",   
  names=c("89 Finches in 1976","89 Finches in 1978"), 
  main= "Beak Depths of Darwin Finches in 1976 and 1978")  

## BOXPLOTS FOR PRESENTATION
boxplot(Depth ~ Year,             
  ylab="Beak Depth (mm)", names=c("89 Finches in 1976","89 Finches in 1978"),  
  main="Beak Depths of Darwin Finches in 1976 and 1978", col="green", 
  boxlwd=2, medlwd=2, whisklty=1, whisklwd=2, staplewex=.2, staplelwd=2,  
  outlwd=2, outpch=21, outbg="green", outcex=1.5)       
        
detach(case0201)  
}

\keyword{datasets}
