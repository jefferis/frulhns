# frulhns

This project distributes some of the data and statistical analysis associated with:

**A bidirectional circuit switch reroutes pheromone signals in male and female brains**

Cell, Volume 155, Issue 7, 1610-1623, 19 December 2013 [doi:10.1016/j.cell.2013.11.025](http://dx.doi.org/10.1016/j.cell.2013.11.025)

Johannes Kohl\*, Aaron D. Ostrovsky\*, Shahar Frechter, Gregory S.X.E. Jefferis


## Installation
Currently there isn't a released version on [CRAN](http://cran.r-project.org/).

## Dependencies
See DESCRIPTION. In order to build vignettes, several additional packages are required including knitr, my [gphys](https://github.com/jefferis/gphys) package and coin.
### Released versions
The recommendation _will_ be to install from our lab repository:

```r
install.packages("frulhns",repos='http://jefferislab.org/R',type='source')
```

### Bleeding Edge
You can, however, download the [tar ball](https://github.com/jefferis/frulhns/tarball/master), and run `R CMD INSTALL` on it, or use the **devtools** package to install the development version:

```r
# install.packages("devtools")

library(devtools)
install_github("frulhns", "jefferis")
```

Note: Windows users need [Rtools](http://www.murdoch-sutherland.com/Rtools/) and [devtools](http://CRAN.R-project.org/package=devtools) to install this way.
