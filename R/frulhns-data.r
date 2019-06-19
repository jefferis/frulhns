#' jknraw and jkn lists of Lateral Horn Neurons
#' 
#' These R lists contain 196 traced lateral horn neurons before (jknraw) and 
#' after (jkn) registration to the IS2 template brain. They lists are of 
#' superclass \code{neuronlist} for which numerous functions are defined in the 
#' AnalysisSuite package. The individual objects are of class neuron. Again
#' there are a number of functions defined for plotting/analysis in AnalysisSuite.
#' @name jkn
#' @docType data
#' @examples
#' \donttest{
#' library(nat)
#' plot(jkn,subset=cluster=='aSP-f' & shortGenotype=="JK1029",
#'   col=sex, WithNodes=F, main='aSP-f LHNs coloured by sex')
#' }
#' \dontrun{
#' plot3d(jkn[[1]])
#' plot3d(jkn[1:10],col='red')
#' plot3d(jkn[1:10],col=rainbow)
#' plot3d(jkn,subset=cluster=='aSP-f' & shortGenotype=="JK1029",
#'   col=sex, WithNodes=F)
#' }
NULL

#' @name jknraw
#' @rdname jkn
#' @docType data
NULL

#' Surface model of the IS2 Template brain used for image registration
#' 
#' @references Cachero S., Ostrovsky A.D., Yu J.Y., Dickson B.J., and Jefferis
#' G.S.X.E. (2010). Sexual dimorphism in the fly brain. Curr Biol 20 (18),
#' 1589-601.
#' @name IS2Surf
#' @docType data
#' @examples
#' \dontrun{
#' library(nat)
#' plot3d(IS2Surf)
#' }
NULL

#' List containing spiking data for all 288 lateral horn neurons in the paper
#' 
#' Each element in the list is a \code{spiketimes} object containing all 
#' the spiking responses to a single recorded neuron. The spikes were extracted 
#' in Igor Pro + Neuromatic as described in the Supplemental Experimental 
#' Procedures of the paper. They were then read into R and post-processed using 
#' the gphys package, including associating the stimulus information (odour
#' names, stimulus duration, odour delivery device channel etc.)
#' @name allspikes
#' @docType data
#' @seealso \code{\link[gphys]{spiketimes}, \link{fixedUseful}}
#' @examples
#' \donttest{
#' # a cell that is highly selective for cVA pheromone
#' gphys::PlotRasterFromSweeps(allspikes[[1]])
#' # note that the external TTL puslse occured at 2000 ms with 0 delay after that
#' head(attr(allspikes[[1]],'oddconf'))
#' }
NULL

#' Dataframe combining cell metadata and odour response summaries for 254 LHNs
#' 
#' Each row is a neuron whose electrophysiological data met quality thesholds. 
#' In contrast to \code{\link{allspikes}} these data do not include cells from 
#' direct glomerular stimulation experiments.
#' @name fixedUseful
#' @docType data
#' @seealso \code{\link{asr}, \link{allspikes}}
"fixedUseful"

#' Absolute spike response to odours for 254 LHNs
#' 
#' Each element of the list corresponds to a single neuron and contains an m x n
#' numeric matrix of spike counts for m trials in response to n odours. The
#' basic data block is defined by \code{OdourResponseFromSpikes}
#' @name asr
#' @docType data
#' @examples
#' # summary of number of spikes in 500 ms bin for each odour
#' summary(asr[[1]])
#' # 7 sweeps for some odours
#' nrow(asr[[1]])
#' # number of sweeps per odour
#' colSums(!is.na(asr[[1]]))
#' 
#' \donttest{
#' stats::heatmap(asr[[1]][,1:5], Rowv = NA)
#' }
#' @seealso \code{\link{fixedUseful}}
NULL
