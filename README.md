# frulhns
[![DOI](https://zenodo.org/badge/4241/jefferis/frulhns.png)](http://dx.doi.org/10.5281/zenodo.10173) 
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
Choose the **Released versions** instructions unless you want to keep up with 
package development.

### Released versions
There is presently no version on CRAN, but the package can be installed from our
lab R repository.

```r
# first install frulhns R package and its dependencies
# dependencies = TRUE will install suggested packages that are
# required for building vignettes.
install.packages('frulhns',repos=c(getOption("repos"),'http://jefferislab.org/R'),
                 type='both',dependencies=TRUE)
# now you can use the package to explore our data
library(frulhns)
```

### Bleeding Edge
You can also use the **devtools** package to install the development versions of
this package and its main dependencies:

```r
# if required
install.packages("devtools")

library(devtools)
# install non-CRAN dependencies explicitly
install_github("gphys", "jefferis")
install_github("nat", "jefferis")

# dependencies = TRUE will install suggested packages from CRAN that are required for the vignettes.
install_github("frulhns", "jefferis", dependencies=TRUE)
```

Note: Windows users need [Rtools](http://www.murdoch-sutherland.com/Rtools/) in addition to 
[devtools](http://CRAN.R-project.org/package=devtools) to install this way.


## Install details
### Dependencies
See [DESCRIPTION](DESCRIPTION). In order to build the vignettes, which are one of the main reasons 
for creating this package, several additional packages are required including 
[knitr](http://yihui.name/knitr/), my [gphys](https://github.com/jefferis/gphys) 
package and [nat](https://github.com/jefferis/nat) packages and the CRAN 
package [coin](http://cran.r-project.org/package=coin). Following standard practice, 
these packages are listed under the Suggested field of the DESCRIPTION file. 
They can be installed when `dependencies=TRUE` is supplied as an installation 
option with the exception of packages not available on [CRAN](http://cran.r-project.org/).

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
Kohl, Ostrovsky et al 2013 exactly as it was performed, 
you must install and load the [nat.as](https://github.com/jefferis/nat.as)
wrapper R package, which is used to install and then load the AnalysisSuite codebase.
Full details of the installation procedure are provided on the
[nat.as](https://github.com/jefferis/nat.as) package homepage.
