\name{ReadAllNclampLogTables}
\alias{ReadAllNclampLogTables}
\title{Read all Nclamp log tables from a directory into a list}
\usage{
  ReadAllNclampLogTables(logfiledir, ...)
}
\arguments{
  \item{logfiledir}{Path to directory containing log files
  (pxp files)}

  \item{...}{additional parameters for ReadNclampLogTable}
}
\value{
  named list containing one dataframe for each parsed log
  file
}
\description{
  Read all Nclamp log tables from a directory into a list
}
\examples{
\dontrun{
ReadAllNclampLogTables("/GD/projects/PhysiologyData/logs")
str(logfiles)
}
}
\author{
  jefferis
}

