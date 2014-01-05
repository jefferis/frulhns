# frulhns
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
Currently there isn't a released version on [CRAN](http://cran.r-project.org/) so copy/paste the instructions under **Bleeding Edge** carefully.

### Dependencies
See DESCRIPTION. In order to build the vignettes, which are one of the main reasons 
for creating this package, several additional packages are required including 
[knitr](http://yihui.name/knitr/), my [gphys](https://github.com/jefferis/gphys) 
package and [nat.as](https://github.com/jefferis/nat.as) packages and the CRAN 
package [coin](http://cran.r-project.org/package=coin). Following standard practice, 
these packages are listed under the Suggested field of the DESCRIPTION file. 
They can be installed when `dependencies=TRUE` is supplied as an installation 
option with the exception of packages not available on [CRAN](http://cran.r-project.org/).

### Released versions
There is presently no released version.

### Bleeding Edge
For the time being the only approach is to use the **devtools** package to install the development version:

```r
# if required
install.packages("devtools")

library(devtools)
# install non-CRAN dependencies explicitly
install_github("gphys", "jefferis")
# Install wrapper for AnalysisSuite code
# see https://github.com/jefferis/nat.as for further install options
install_github("nat.as", "jefferis")
library(nat.as);install_analysis_suite();reload_analysis_suite()

# dependencies = TRUE will install suggested packages from CRAN that are required for the vignettes.
install_github("frulhns", "jefferis", dependencies=TRUE)
```

Note: Windows users need [Rtools](http://www.murdoch-sutherland.com/Rtools/) in addition to 
[devtools](http://CRAN.R-project.org/package=devtools) to install this way.

## Install details
The neuroanatomical analysis in the neurons vignette depends on my 
[AnalysisSuite](https://github.com/jefferis/AnalysisSuite) 
codebase which is not yet a formal package. In order to ensure that this code
is correctly located during the vignette building process, I have created the 
`nat.as` wrapper package, which is used first to install and then to load 
AnalysisSuite.
