
##
## sakngoi@hotmail.com
# just for Fun
##
SwathPath <- file.path(system.file(package='RSwath'),'swath-0.3.4')
SwathdictPath <- file.path(system.file(package='RSwath'),'swath-0.3.4','swath')

swath <- function(inputfile,outputfile, verbose = FALSE, delimitor = NULL, format = NULL, method = NULL) {
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
  cmd<-paste0(SwathPath,'/swath -u u,u',vb,dm,fm,' -d ',SwathdictPath,' < ',inputfile,' > ',outputfile)
  shell(shQuote(cmd,type="cmd"))
}
