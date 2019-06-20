# frulhns
<!-- badges: start -->
[![Docs](https://img.shields.io/badge/docs-100%25-brightgreen.svg)](http://jefferis.github.io/frulhns/)
[![DOI](https://zenodo.org/badge/15346264.svg)](https://zenodo.org/badge/latestdoi/15346264)
[![Release Version](https://img.shields.io/github/release/jefferis/frulhns.svg)](https://github.com/jefferis/frulhns/releases/latest) 
[![Travis build status](https://travis-ci.org/jefferis/frulhns.svg?branch=master)](https://travis-ci.org/jefferis/frulhns)
<!-- badges: end -->

## Introduction
This project distributes all electrophysiological spike data, statistical analysis,
and traced neurons associated with the open access publication:

**[A bidirectional circuit switch reroutes pheromone signals in male and female brains](http://dx.doi.org/10.1016/j.cell.2013.11.025)**

_Cell_, 155(7):1610-1623, 19 December 2013 [doi:10.1016/j.cell.2013.11.025](http://dx.doi.org/10.1016/j.cell.2013.11.025)

Johannes Kohl\*, Aaron D. Ostrovsky\*, Shahar Frechter, Gregory S.X.E. Jefferis

Further information about this work, including additional data and experimental methodology, is available at http://jefferislab.org/si/frulhns. This includes cached copies of the vignettes included in this package:

  * [neurons.pdf](http://jefferislab.org/si/frulhns/neurons.pdf)
  * [statistics.pdf](http://jefferislab.org/si/frulhns/statistics.pdf)

## Installation
There is presently no version on CRAN,but you can use the
[**remotes**](https://cran.r-project.org/package=remotes) package 
to install the development versions of this package and its dependencies:

```r
if (!requireNamespace("remotes")) install.packages("remotes")
# dependencies = TRUE will install suggested packages from CRAN that are required for the vignettes.
remotes::install_github("jefferis/frulhns", dependencies=TRUE)
```

Note: Windows users may need [Rtools](http://www.murdoch-sutherland.com/Rtools/) 
in addition to [devtools](http://CRAN.R-project.org/package=devtools) to install
this way.


## Install details
### Dependencies
See [DESCRIPTION](DESCRIPTION). In order to build the vignettes, which are one of the main reasons 
for creating this package, several additional packages are required including 
[knitr](http://yihui.name/knitr/), my [gphys](https://github.com/jefferis/gphys) 
package and [nat](https://github.com/jefferis/nat) packages and the CRAN 
package [coin](http://cran.r-project.org/package=coin). Following standard practice, 
these packages are listed under the Suggested field of the DESCRIPTION file. 
They can be installed when `dependencies=TRUE` is supplied as an installation.

### AnalysisSuite
The neuroanatomical analysis in the `neurons` vignette depend only on my 
[nat](https://github.com/jefferis/nat) package.  This is now a well-documented and
mature codebase with a number of interesting extension packages. Published work from 2013 and earlier depended on my
[AnalysisSuite](https://github.com/jefferis/AnalysisSuite) 
codebase, which is not available directly as a formal R package.
This includes an earlier version of the
neuron search/similarity code now available as package 
[nat.nblast](https://github.com/jefferislab/nat.nblast).

If you wish to use the AnalysisSuite code to replicate analysis from 
Kohl, Ostrovsky et al 2013 exactly as it was performed at the time, 
you must install and load the [nat.as](https://github.com/jefferis/nat.as)
wrapper R package, which is used to install and then load the AnalysisSuite codebase.
Full details of the installation procedure are provided on the
[nat.as](https://github.com/jefferis/nat.as) package homepage.
