\docType{data}
\name{jkn}
\alias{jkn}
\alias{jknraw}
\title{jknraw and jkn lists of Lateral Horn Neurons}
\description{
These R lists contain 196 traced lateral horn neurons
before (jknraw) and after (jkn) registration to the IS2
template brain. They lists are of superclass
\code{neuronlist} for which numerous functions are defined
in the AnalysisSuite package. The individual objects are of
class neuron. Again there are a number of functions defined
for plotting/analysis in AnalysisSuite.
}
\examples{
\dontrun{
library(rgl)
plot3d(jkn[[1]])
plot3d(jkn[1:10],col='red')
plot3d(jkn[1:10],col=rainbow)
plot3d(jkn,subset=cluster=='aSP-f' & shortGenotype=="JK1029",
  col=sex, WithNodes=F)
}
}

