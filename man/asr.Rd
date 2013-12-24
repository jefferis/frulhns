\docType{data}
\name{asr}
\alias{asr}
\title{Absolute spike response to odours for 254 LHNs}
\description{
  Each element of the list corresponds to a single neuron
  and contains an m x n numeric matrix of spike counts for
  m trials in response to n odours. The basic data block is
  defined by \code{OdourResponseFromSpikes}
}
\examples{
# summary of number of spikes in 500 ms bin for each odour
summary(asr[[1]])
# 7 sweeps for some odours
nrow(asr[[1]])
# number of sweeps per odour
colSums(!is.na(asr[[1]]))
}
\seealso{
  \code{\link{fixedUseful}}
}
\keyword{datasets}

