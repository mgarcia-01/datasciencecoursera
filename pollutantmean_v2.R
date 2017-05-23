## part 1 instructions page 
print(R.version.string)
## [1] "R version 3.4.0 (2017-04-21)"
source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064128
pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706047
pollutantmean("specdata", "nitrate", 23)
## [1] 1.280833

########### part 2  #####################
source("complete.R")
complete("specdata", 1)
##   id nobs
## 1  1  117
complete("specdata", c(2, 4, 8, 10, 12))
##   id nobs
## 1  2 1041
## 2  4  474
## 3  8  192
## 4 10  148
## 5 12   96
complete("specdata", 30:25)
##   id nobs
## 1 30  932
## 2 29  711
## 3 28  475
## 4 27  338
## 5 26  586
## 6 25  463
complete("specdata", 3)
##   id nobs
## 1  3  243


##############################



## function pollutantmean 
pollutantmean("~/Sync/Coursera Data Science/specdata/","sulfate",1:10)


pollutantmean<- function(pollutant) 
{
  
  numrw <- nrow(pollutant)
  means <- numeric(pollutant)
  for(i in 1:pollutant)
  {means[i]}
  pollutant <- means(poll) 
  
  id <- 
    g <- g + 10
  g
}

#####  WORK IN PROGRESS   ##########

mypkges <- c("xlsx","plyr","RODBC")
#install.packages(mypkges)
lapply(mypkges, require, character.only = TRUE)


pollutantmean(directory = "~/Sync/Coursera Data Science/specdata/", pollutant = "sulfate" )

pollutantmean<- function(directory,pollutant,id) 
{
  
  mydirectory <- paste(directory,basename(directory))
  
  
  
  
  means <- numeric(pollutant)
  for(i in 1:pollutant)
  {means[i]}
  pollutant <- means(poll) 
  
  id <- 
    g <- g + 10
  g
}




##### might work 

pollutantmean(directory = "~/Sync/Coursera Data Science/specdata/", pollutant = "sulfate" )

pollutantmean <- function(directory, pollutant, id = 1:332) 
{
  filenames <- sprintf("%03d.csv", id)
  filenames <- paste(directory, filenames, sep="/")
  ldf <- lapply(filenames, read.csv)
  df=ldply(ldf)
  # df is your list of data.frames
  mean(df[, pollutant], na.rm = TRUE)
}


dir(1:332)






#### example of a function download.file

function (url, destfile, method, quiet = FALSE, mode = "w", 
          cacheOK = TRUE, extra = getOption("download.file.extra")) 
{
  destfile
  method <- if (missing(method)) 
    getOption("download.file.method", default = "auto")
  else match.arg(method, c("auto", "internal", "libcurl", 
                           "wget", "curl", "lynx"))
  if (method == "auto") {
    if (length(url) != 1L || typeof(url) != "character") 
      stop("'url' must be a length-one character vector")
    method <- if (grepl("^file:", url)) 
      "internal"
    else "libcurl"
  }
  switch(method, internal = {
    status <- .External(C_download, url, destfile, quiet, 
                        mode, cacheOK)
    if (!quiet) flush.console()
  }, libcurl = {
    status <- .Internal(curlDownload(url, destfile, quiet, 
                                     mode, cacheOK))
    if (!quiet) flush.console()
  }, wget = {
    if (length(url) != 1L || typeof(url) != "character") stop("'url' must be a length-one character vector")
    if (length(destfile) != 1L || typeof(destfile) != "character") stop("'destfile' must be a length-one character vector")
    if (quiet) extra <- c(extra, "--quiet")
    if (!cacheOK) extra <- c(extra, "--cache=off")
    status <- system(paste("wget", paste(extra, collapse = " "), 
                           shQuote(url), "-O", shQuote(path.expand(destfile))))
    if (status) stop("'wget' call had nonzero exit status")
  }, curl = {
    if (length(url) != 1L || typeof(url) != "character") stop("'url' must be a length-one character vector")
    if (length(destfile) != 1L || typeof(url) != "character") stop("'destfile' must be a length-one character vector")
    if (quiet) extra <- c(extra, "-s -S")
    if (!cacheOK) extra <- c(extra, "-H 'Pragma: no-cache'")
    status <- system(paste("curl", paste(extra, collapse = " "), 
                           shQuote(url), " -o", shQuote(path.expand(destfile))))
    if (status) stop("'curl' call had nonzero exit status")
  }, lynx = stop("method 'lynx' is defunct", domain = NA)
  )
  if (status) 
    warning("download had nonzero exit status")
  invisible(status)
}


################# Function example read.csv

function (file, header = TRUE, sep = ",", quote = "\"", dec = ".", 
          fill = TRUE, comment.char = "", ...
) 
  read.table(file = file, header = header, sep = sep, quote = quote, 
             dec = dec, fill = fill, comment.char = comment.char, ...
  )




#ls_fileNum <- substr(dir(directory),1,3)
#br <- head(id,min(ls_fileNum))
#er <- head(id,max(ls_fileNum))

