#' Carry out poisson test on absolute number of spikes in odour response
#' 
#' @details It is assumed that x contains one column called \code{"blank"},
#'   against which the other columns will all be tested.
#' @param x An m x n odour response matrix for m trials of n odours
#' @param odours Names of odours (defaults to \code{colnames(x)})
#' @param maxtrials Maximum number of trials to consider (default => all)
#' @param ... Additional parameters passed to \code{poisson.test}
#' @export
#' @seealso \code{\link{poisson.test}}
#' @importFrom stats poisson.test
poissonTestOdours<-function(x,odours=colnames(x),maxtrials=NA,...){
  nonblank=setdiff(odours,'blank')
  if(!is.na(maxtrials) & maxtrials<nrow(x)) x=x[1:maxtrials,]
  simple_poisson<-function(od,...){
    if(sum(!is.na(od))==0) return(NA)
    sum_odour_counts=sum(od,na.rm=T)
    sum_blank_counts=sum(x[,'blank'],na.rm=T)
    pval<-poisson.test(c(sum_odour_counts,sum_blank_counts),...)$p.value
    ifelse(is.na(pval),1,pval)
  }
  apply(x[,nonblank,drop=FALSE],2,function(od) simple_poisson(od,...))
}
