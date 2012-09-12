\name{ex0431}
\alias{ex0431}
\docType{data}
\title{Effect of Group Therapy on Survival of Breast Cancer Patients}
\description{
  Researchers randomly assigned metastatic breast cancer patients to
  either a control group or a group that received weekly 90 minute
  sessions of group therapy and self-hypnosis, to see whether the latter
  treatment improved the patients' quality of life.
}
\usage{ex0431}
\format{
  A data frame with 58 observations on the following 3 variables.
  \describe{
    \item{Survival}{months of survival after beginning of study}
    \item{Group}{a factor with levels \code{"Control"} and
      \code{"Therapy"}} 
    \item{Censor}{0 if entire lifetime observed, 1 if patient
      known to have lived at least 122 months} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Spiegel, D., Bloom, J.R., Kraemer, H.C. and Gottheil, E.
  (1989). Effect of Psychosocial Treatment on Survival of Patients with
  Metastatic Breast Cancer, \emph{Lancet} \bold{334}(8668): 888--891. 
}
\examples{
str(ex0431)
}
\keyword{datasets}
