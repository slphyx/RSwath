# RSwath
The R interface to Swath (Smart Word Analysis for THai https://linux.thai.net/projects/swath) on Windows

###Instal RSwath
```{r install_devtools, eval=FALSE}
library("devtools")
install_github("slphyx/RSwath")
```

### Using RSwath
```{r eval=FALSE}
library("RSwath")
rswath(inputfile="testTH.txt",outputfile="testTHX.txt")
```
![](http://www.sakngoi.com/wp-content/uploads/rswathexample.png)
