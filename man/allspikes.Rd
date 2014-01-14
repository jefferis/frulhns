\docType{data}
\name{allspikes}
\alias{allspikes}
\title{List containing spiking data for all 288 lateral horn neurons in the paper}
\description{
Each element in the list is a \code{spiketimes} object
containing all the spiking responses to a single recorded
neuron. The spikes were extracted in Igor Pro + Neuromatic
as described in the Supplemental Experimental Procedures of
the paper. They were then read into R and post-processed
using the gphys package, including associating the stimulus
information (odour names, stimulus duration, odour delivery
device channel etc.)
}
\examples{
\dontrun{
str(allspikes[[1]])
attr(allspikes[[1]],'oddconf')[,1:4]
}
}
\seealso{
\code{\link[gphys]{spiketimes}, \link{fixedUseful}}
}

