\name{ex1620}
\alias{ex1620}
\docType{data}
\title{Differential Gene Expression with RNA Sequencing}
\description{
  In an experiment to identify genes of the plant Arabidopsis that react to a 
  particular pathogen, researchers used RNA sequencing to produce gene profiles 
  for a number of plants not subjected to the pathogen and several plants 
  subjected to the pathogen. Tests comparing the distribution of gene expression 
  in the two groups were performed for each gene individually. The data are the 
  p-values from all these tests. The goal is to use a identify a set of genes
  that differentially express in the two groups, subject to some specified value
  for expected false discovery rate, such as 5\%.
}
\usage{ex1620}
\format{
  A data frame with 20,245 observations on the following 3 variables.
  \describe{
    \item{Gene}{an identification number for genes}
    \item{GeneName}{a character variable with the name of the gene} 
    \item{pValue}{the p-value from a test that the mean expression level
      for the gene differs in the two groups (ignoring multiple testing)} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Chang, J, Department of Botany and Plant Pathology, Oregon State University,
  personnal communication.
}
\examples{
str(ex1620)
}
\keyword{datasets}
