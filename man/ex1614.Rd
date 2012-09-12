\name{ex1614}
\alias{ex1614}
\docType{data}
\title{Pschoimmunology}
\description{
  Recent studies in the field of psychoimmunology suggest a link exists
  between behavioral events and the functioning of one's immune system.
  Data shows the results of a study on 12 subjects who were monitored
  during three distinct activities.  The first activity consisted of
  neutral activity such as reporting tasks.  During the second activity,
  subjects listened to audiotape exercises relating to images of
  heaviness, warmth in the body, relaxation, suggestions to remember
  happy events, etc.  The third activity included a nonaudio tape follow
  up stimulus consisting of continued relaxation as in activity 2 and a
  verbal discussion of the positive aspects of the audiotape.   
}
\usage{ex1614}
\format{
  A data frame with 12 observations on the following 3 variables.
  \describe{
    \item{Subject}{subject identification number} 
    \item{PhaseA}{Interleukin-1 levels (counts per minute) from
      blood samples taken during activity A} 
    \item{PhaseB}{Interleukin-1 levels (counts per minute) from
      blood samples taken during activity B} 
    \item{PhaseC}{Interleukin-1 levels (counts per minute) from
      blood samples taken during activity C} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Keppel, W. (1993).  Effects of Behavioral Stimuli on Plasma
  Interleukin-1 Activity in Humans at Rest, \emph{Journal of Clinical
  Psychology} \bold{49}(6): 777--785.
}
\examples{
str(ex1614)
}
\keyword{datasets}
