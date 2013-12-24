# frulhns
## Introduction
This project distributes some of the data and statistical analysis associated with:

**A bidirectional circuit switch reroutes pheromone signals in male and female brains**

Cell, Volume 155, Issue 7, 1610-1623, 19 December 2013 [doi:10.1016/j.cell.2013.11.025](http://dx.doi.org/10.1016/j.cell.2013.11.025)

Johannes Kohl\*, Aaron D. Ostrovsky\*, Shahar Frechter, Gregory S.X.E. Jefferis


## Installation
Currently there isn't a released version on [CRAN](http://cran.r-project.org/) so copy/paste the instructions under **Bleeding Edge** carefully.

### Dependencies
See DESCRIPTION. In order to build the vignettes, which are one of the main reasons for crearing this package, several additional packages are required including knitr, my [gphys](https://github.com/jefferis/gphys) package and coin. Following standard practice, these packages are listed under the Suggested field of the DESCRIPTION file. They can be installed when `dependencies=TRUE` is supplied as an installation option with the exception of packages not available on [CRAN](http://cran.r-project.org/).
### Released versions
The recommendation _will_ be to install from our lab repository:

```r
install.packages("frulhns",repos='http://jefferislab.org/R',type='source')
```

### Bleeding Edge
For the time being the only approach is to use the **devtools** package to install the development version:

```r
# if required
install.packages("devtools")

library(devtools)
# install non-CRAN dependencies explicitly
install_github("gphys", "jefferis")
# dependencies = TRUE will install suggested packages from CRAN that are required for the vignettes.
install_github("frulhns", "jefferis", dependencies=TRUE)
```

Note: Windows users need [Rtools](http://www.murdoch-sutherland.com/Rtools/) and [devtools](http://CRAN.R-project.org/package=devtools) to install this way.
## FIXME
There is currently one major problem with vignette building. The neuroanatomical 
analysis depends on my [AnalysisSuite](https://github.com/jefferis/AnalysisSuite) 
codebase which is not yet a formal package. This makes it surprisingly hard to
locate the source code post-installation. My usual approach of setting an option 
in .Rprofile fails, because vignettes are built with the --vanilla option.
This currently means that AnalysisSuite must be available at:
  ~/projects/AnalysisSuite
to be found during the vignette build process.