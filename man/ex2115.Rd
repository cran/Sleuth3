\name{ex2115}
\alias{ex2115}
\docType{data}
\title{Belief Accessibility}
\description{
  The study the effect of \emph{context questions} prior to \emph{target
    questions}, researchers conducted a poll involving 1,054 subjects
  selected randomly from the Chicago phone directory.  To include
  possibly unlisted phones, selected numbers were randomly altered in
  the last position.  This data frame contains the responses to one of
  the questions asked concerning continuing U.S. aid to the Nicaraguan
  Contra rebels.  Eight different versions of the interview were given,
  representing all possible combinations of three factors at each of two
  levels.  The experimental factors were Context, Mode and Level.

  \code{Context} refers to the type of context questions preceding the
  question about Nicaraguan aid.  Some subjects received a context
  question about Vietnam, designed to elicit reticence about having the
  U.S. become involved in another foreign war in a third--world country.
  The other context question was about Cuba, designed to elicit
  anti--communist sentiments.

  \code{Mode} refers to whether the target question immediately followed
  the context question or whether there were other questions scattered
  in between.

  \code{Level} refers to two versions of the context question.  In the
  \code{"high"} level the question was worded to elicit a higher level of
  agreement than in the \code{"low"} level wording.
}
\usage{ex2115}
\format{
  A data frame with 8 observations on the following 7 variables.
  \describe{
    \item{Context}{Factor referring to the context of the question
      preceding the target question about U.S. aid to the Nicaraguan
      Contra rebels}
    \item{Mode}{Factor with levels \code{"not"} and
      \code{"scattered"}, \code{"scattered"} is used if the target question
      was not asked directly after the context question}
    \item{Level}{Factor with levels \code{"low"} and
      \code{"high"}, refers to the wording of the question}
    \item{Number}{Number of people interviewed}
    \item{InFavor}{Number of people in favor of Contra Aid}
    \item{NotInFavor}{Number of people not in favor of Contra Aid}
    \item{PercentInFavor}{Percentage in favour of Contra aid}
  }
}
\details{
  Increasingly, politicians look to public opinion surveys to shape
  their public stances.  Does this represent the ultimate in democracy?
  Or are seemingly scientific polls being rigged by the manner of
  questioning?  Psychologists believe that opinions---expressed as
  answers to questions---are usually generated at the time the question
  is asked.   Answers are based on a quick sampling of relevant beliefs
  held by the subject, rather than a systematic canvas of all such
  beliefs.  Furthermore, this sampling of beliefs tends to overrepresent
  whatever beliefs happen to be most accessible at the time the question
  is asked.  This aspect of delivering opinions can be abused by the
  pollster.  Here, for example, is one sequence of questions:
  \describe{
    \item{(1)}{\dQuote{Do you believe the Bill of Rights protects
      personal freedom?}}
    \item{(2)}{\dQuote{Are you in favor of a ban on handguns?}}
  }
  Here is another:
  \describe{
    \item{(1)}{\dQuote{Do you think something should be done to reduce
      violent crime?}}
    \item{(2)}{\dQuote{Are you in favor of a ban on handguns?}}
  }
  The proportion of yes answers to question 2 may be quite different
  depending on which question 1 is asked first.
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Tourangeau, R., Rasinski, K.A., Bradburn, N. and D'Andrade,
  R. (1989). Belief Accessibility and Context Effects in Attitude
  Measurement, \emph{Journal of Experimental Social Psychology}
  \bold{25}: 401--421.
}
\examples{
str(ex2115)
}
\keyword{datasets}
