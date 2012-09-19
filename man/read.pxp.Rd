\name{read.pxp}
\alias{read.pxp}
\title{Reads an Igor Pro Packed Experiment (.pxp) file}
\usage{
  read.pxp(pxpfile, regex, ReturnTimeSeries = FALSE,
    Verbose = FALSE, StructureOnly = FALSE,
    IgorPlatform = NULL, ...)
}
\arguments{
  \item{pxpfile}{Character vector naming a PXP file or an R
  \link{connection}}

  \item{regex}{only read records (e.g. waves) in the pxp
  file whose names match a \link{regex}}

  \item{ReturnTimeSeries}{Igor waves are returned as a ts
  object with sensible x scaling (FALSE by default)}

  \item{Verbose}{whether to print information to console
  during loading (numeric values are also allowed 0=none,
  1=basic, 2=all)}

  \item{StructureOnly}{TODO Only the structure of the pxp
  file for inspection}

  \item{IgorPlatform}{OS on which Igor file was saved
  (windows or macintosh)}

  \item{...}{Optional parameters passed to \link{read.ibw}}
}
\value{
  A list containing all the individual waves or variables
  in the pxp file
}
\description{
  Note that pxp files are only partially documented so some
  contents cannot be parsed (e.g. image data). Furthermore
  for the time being this function only reads data records
  (Igor waves and variables) but ignores e.g. history,
  program code etc.
}
\details{
  IgorPlatform will determine in which encoding text is
  read (WINDOWS-1252 for windows and macintosh for
  macintosh). Unique abbreviations are acceptable. Defaults
  to windows on windows, mac otherwise.
}
\examples{
r=read.pxp(system.file("igor","testexpt.pxp",package="IgorR"))
}
\author{
  jefferis
}

