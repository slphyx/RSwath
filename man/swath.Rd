\name{rswath}
\alias{rswath}
\title{RSWATH (Smart Word Analysis for THai)}
\usage{
  rswath(inputfile,outputfile, verbose = FALSE, delimitor = NULL, format = NULL, method = NULL)
}
\description{
rswath is the R interface to SWATH (Smart Word Analysis for THai). For more details, https://linux.thai.net/projects/swath
}
\examples{
rswath(inputfile = "mytextfile.txt", outputfile = "myoutput.txt")
}
\author{
Sompob Saralamba (saralamba@gmail.com)
}
\arguments{
  \item{inputfile}{input file name; encoding of the input file must be UTF-8}
  \item{outputfile}{output file name; encoding of the output file must be UTF-8}
  \item{verbose}{verbose mode}
  \item{delimitor}{define a word delimitor string for the output. The default is '|'.}
  \item{format}{specify the input format: format = 'html' for the HTML file, 'rtf' - RTF file and 'latex' - LaTex file}
  \item{method}{choose word matching scheme: method = 'long' for using longest matching scheme or 'max' for using maximal matching scheme}
}
