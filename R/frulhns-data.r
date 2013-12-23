#' jknraw and jkn lists of Lateral Horn Neurons
#' 
#' These R lists contain 196 traced lateral horn neurons before (jknraw) and
#' after (jkn) registration to the IS2 template brain.
#' @name jkn
#' @docType data
NULL

#' @name jknraw
#' @rdname jkn
#' @docType data
NULL

#' Surface model of the IS2 Template brain used for image registration
#' 
#' @references Cachero S., Ostrovsky A.D., Yu J.Y., Dickson B.J., and Jefferis
#' G.S.X.E. (2010). Sexual dimorphism in the fly brain. Curr Biol 20 (18),
#' 1589–601.
#' @name IS2Surf
#' @docType data
#' @examples
#' \dontrun{
#' # Depends on AnalysisSuite
#' plot3dsurface(IS2Surf)
#' }
NULL

#' List containing spiking data for all 288 lateral horn neurons in the paper
#' 
#' Each element in the list is a \code{\link{spiketimes}} object containing all 
#' the spiking responses to a single recorded neuron. The spikes were extracted 
#' in Igor Pro + Neuromatic as described in the Supplemental Experimental 
#' Procedures of the paper. They were then read into R and post-processed using 
#' the gphys package, including associating the stimulus information (odour
#' names, stimulus duration, odour delivery device channel etc.)
#' @name allspikes
#' @docType data
#' @seealso \code{\link{spiketimes}}
#' @examples
#' \dontrun{
#' str(allspikes[[1]])
#' attr(allspikes[[1]],'oddconf')[,1:4]
#' }
NULL
