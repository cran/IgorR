#IgorR
[![DOI](https://img.shields.io/badge/doi-10.5281%2Fzenodo.10230-blue.svg)](http://dx.doi.org/10.5281/zenodo.10230) 
[![Release Version](https://img.shields.io/github/release/jefferis/IgorR.svg)](https://github.com/jefferis/IgorR/releases/latest) 
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/IgorR)](https://cran.r-project.org/package=IgorR) 
[![Build Status](https://travis-ci.org/jefferis/IgorR.svg?branch=master)](https://travis-ci.org/jefferis/IgorR)

Introduction
============
The IgorR package for R provides routines to read binary files generated by [Igor Pro](http://www.wavemetrics.com).

This includes both the standalone .ibw Igor Binary Wave format (v2 and the latest v5) and the .pxp Packed Experiment Format including both waves and variables.  In addition the package provides functions to read files generated by the [Neuromatic](http://www.neuromatic.thinkrandom.com) analysis suite written by Jason Rothman for Igor Pro.

Installation
============
Standard Install
----------------
Install the release version from [CRAN](https://cran.r-project.org/)

```r
install.packages('IgorR')
```

Github Install
--------------
To install the latest development version from github

```r
# install hadley's devtools if required
if(!require('devtools')) install.packages('devtools')
devtools::install_github('jefferis/IgorR')
```

Development Install
-------------------
To checkout a version that can be used for development 
([RStudio](http://www.rstudio.com/products/RStudio/) is strongly recommended), 
in your terminal application.

```sh
cd /some/suitable/dir
git clone https://github.com/jefferis/IgorR.git
```

In R

```r
install.packages('devtools') # install hadley's devtools
library(devtools)
load_all('/some/suitable/dir/IgorR')
test()

#hack
load_all()

# ready for release
check()
build_win() # test for Windows
release()
```

Details
=======

Details of the ibw file format were derived from the [Igor Technical Note 003](http://www.wavemetrics.net/Downloads/FTP_Archive/IgorPro/Technical_Notes/TN003.zip). 

For those interested in the source code, ReadIgorBinary.R provides code for standard pxp and ibw files, while ReadNclamp.R provides routines to read packed experiment files generated by the Nclamp data acquisition package.
