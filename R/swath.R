
##
## saralamba@gmail.com
# just for Fun
##
SwathPath <- file.path(system.file(package='RSwath'),'swath-0.3.4')
SwathdictPath <- file.path(system.file(package='RSwath'),'swath-0.3.4','swath')

rswath <- function(inputfile, outputfile = NULL, verbose = FALSE, delimitor = NULL, format = NULL, method = NULL) {
  #check the inputs
  if(is.null(inputfile)){
    stop("I can't find your input file.")
  }
  if(verbose){
    vb <- '-v'
  }else{
    vb<-NULL
  }
  if(!is.null(delimitor)){
    dm<-paste0(' -b ',delimitor)
  }else{
    dm<-NULL
  }
  if(!is.null(format)){
    fm<-paste0(' -f ',format)
  }else{
    fm<-NULL
  }
  if(!is.null(method)){
    mt<-paste0(' -m ',method)
  }else{
    mt<-NULL
  }

  ## if outputfile is NULL then return the output as a vector
  if(is.null(outputfile)){
    tmpdir <- tempdir()
    outputfilename <- paste0(tmpdir,"/rswath.out")  # temp output file
    cmd<-paste0(SwathPath,'/swath -u u,u',vb,dm,fm,' -d ',SwathdictPath,' < ',inputfile,' > ',outputfilename)
    shell(shQuote(cmd,type="cmd"))
    outtxt<-as.vector(strsplit(readLines(outputfilename,encoding="UTF-8"),"[|]")[[1]])
    outtxt
  }
  else{
    cmd<-paste0(SwathPath,'/swath -u u,u',vb,dm,fm,' -d ',SwathdictPath,' < ',inputfile,' > ',outputfile)
    shell(shQuote(cmd,type="cmd"))
  }
}


