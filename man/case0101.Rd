\name{case0101}
\alias{case0101}
\docType{data}
\title{Motivation and Creativity}
\description{
  Data from an experiment concerning the effects of intrinsic and
  extrinsic motivation on creativity.  Subjects with considerable
  experience in creative writing were randomly assigned to on of two
  treatment groups.
}
\usage{case0101}
\format{
  A data frame with 47 observations on the following 2 variables.
  \describe{
    \item{Score}{creativity score}
    \item{Treatment}{factor denoting the treatment group, with
      levels \code{"Extrinsic"} and \code{"Intrinsic"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Amabile, T. (1985). Motivation and Creativity: Effects of Motivational
  Orientation on Creative Writers, \emph{Journal of Personality and
    Social Psychology} \bold{48}(2): 393--399.
}
\examples{
attach(case0101)  
str(case0101)  
boxplot(Score ~ Treatment)  # Basic boxplots for each level of Treatment

boxplot(Score ~ Treatment,  # Boxplots with labels
  ylab= "Average Creativity Score From 11 Judges (on a 40-point scale)",  
  names=c("23 'Extrinsic' Group Students","24 'Intrinsic' Group Students"), 
  main= "Haiku Creativity Scores for 47 Creative Writing Students") 

detach(case0101)
}
\keyword{datasets}

